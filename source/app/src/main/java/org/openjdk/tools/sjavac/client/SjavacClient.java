package org.openjdk.tools.sjavac.client;

import b3.s;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.Util;
import org.openjdk.tools.sjavac.f;
import org.openjdk.tools.sjavac.options.OptionHelper;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.server.PortFile;
import org.openjdk.tools.sjavac.server.Sjavac;
import org.openjdk.tools.sjavac.server.SjavacServer;

public class SjavacClient implements Sjavac {
    static int CONNECTION_TIMEOUT = 2000;
    static int MAX_CONNECT_ATTEMPTS = 3;
    static int WAIT_BETWEEN_CONNECT_ATTEMPTS = 2000;

    private final String f103326id;
    private final int keepalive;
    private final int poolsize;
    private final PortFile portFile;
    private final String settings;
    private final String sjavacForkCmd;

    public SjavacClient(Options options) {
        String serverConf = options.getServerConf();
        serverConf = serverConf == null ? "" : serverConf;
        String extractStringOption = Util.extractStringOption("id", serverConf);
        if (extractStringOption == null) {
            extractStringOption = "id" + (new Random().nextLong() & Long.MAX_VALUE);
        }
        this.f103326id = extractStringOption;
        String extractStringOption2 = Util.extractStringOption("portfile", serverConf, options.getDestDir().resolve("javac_server").toAbsolutePath().toString());
        this.portFile = SjavacServer.getPortFile(extractStringOption2);
        this.sjavacForkCmd = Util.extractStringOption("sjavac", serverConf, "sjavac");
        int extractIntOption = Util.extractIntOption("poolsize", serverConf);
        this.keepalive = Util.extractIntOption("keepalive", serverConf, 120);
        this.poolsize = extractIntOption <= 0 ? Runtime.getRuntime().availableProcessors() : extractIntOption;
        if (serverConf.equals("")) {
            serverConf = "id=" + extractStringOption + ",portfile=" + extractStringOption2;
        }
        this.settings = serverConf;
    }

    public static void fork(String str, PortFile portFile, int i10, int i11) throws IOException, InterruptedException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(OptionHelper.unescapeCmdArg(str).split(" ")));
        arrayList.add("--startserver:portfile=" + portFile.getFilename() + ",poolsize=" + i10 + ",keepalive=" + i11);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Starting server. Command: ");
        sb2.append(String.join(" ", arrayList));
        Log.debug(sb2.toString());
        try {
            Process start = new ProcessBuilder(arrayList).redirectErrorStream(true).start();
            try {
                portFile.waitForValidValues();
            } catch (IOException e10) {
                Log.error("Sjavac server failed to initialize: " + e10.getMessage());
                Log.error("Process output:");
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(start.getInputStream()));
                try {
                    bufferedReader.lines().forEach(new f());
                    bufferedReader.close();
                    Log.error("<End of process output>");
                    try {
                        Log.error("Process exit code: " + start.exitValue());
                    } catch (IllegalThreadStateException unused) {
                    }
                    throw new IOException("Server failed to initialize: " + e10.getMessage(), e10);
                } finally {
                }
            }
        } catch (IOException e11) {
            Log.error("Failed to create server process: " + e11.getMessage());
            Log.debug(e11);
            throw new IOException(e11);
        }
    }

    private Socket makeConnectionAttempt() throws IOException {
        Socket socket = new Socket();
        socket.connect(new InetSocketAddress(InetAddress.getByName(null), this.portFile.getPort()), CONNECTION_TIMEOUT);
        Log.debug("Connected");
        return socket;
    }

    private void makeSureServerIsRunning(PortFile portFile) throws IOException, InterruptedException {
        if (portFile.exists()) {
            portFile.lock();
            portFile.getValues();
            portFile.unlock();
            if (portFile.containsPortInfo()) {
                return;
            }
        }
        fork(this.sjavacForkCmd, portFile, this.poolsize, this.keepalive);
    }

    private Socket tryConnect() throws IOException, InterruptedException {
        makeSureServerIsRunning(this.portFile);
        int i10 = 0;
        while (true) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Trying to connect. Attempt ");
            i10++;
            sb2.append(i10);
            sb2.append(" of ");
            sb2.append(MAX_CONNECT_ATTEMPTS);
            Log.debug(sb2.toString());
            try {
                return makeConnectionAttempt();
            } catch (IOException e10) {
                Log.error("Connection attempt failed: " + e10.getMessage());
                if (i10 >= MAX_CONNECT_ATTEMPTS) {
                    Log.error("Giving up");
                    throw new IOException("Could not connect to server", e10);
                }
                Thread.sleep(WAIT_BETWEEN_CONNECT_ATTEMPTS);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0096, code lost:
    
        throw new java.lang.AssertionError((java.lang.Object) ("Could not parse protocol line: >>\"" + r2 + "\"<<"));
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Main.Result compile(String[] strArr) {
        Main.Result result;
        BufferedReader bufferedReader;
        try {
            Socket tryConnect = tryConnect();
            try {
                PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(tryConnect.getOutputStream()));
                bufferedReader = new BufferedReader(new InputStreamReader(tryConnect.getInputStream()));
                printWriter.println(strArr.length);
                for (String str : strArr) {
                    printWriter.println(str);
                }
                printWriter.flush();
                result = null;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    if (tryConnect != null) {
                        try {
                            tryConnect.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            }
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    tryConnect.close();
                    break;
                }
                if (!readLine.contains(s.f32937c)) {
                    break;
                }
                String[] split = readLine.split(s.f32937c, 2);
                String str2 = split[0];
                String str3 = split[1];
                try {
                    if (Log.isDebugging()) {
                        str3 = "[sjavac-server] " + str3;
                    }
                    Log.log(Log.Level.valueOf(str2), str3);
                } catch (IllegalArgumentException unused) {
                    if (str2.equals(SjavacServer.LINE_TYPE_RC)) {
                        result = Main.Result.valueOf(str3);
                    }
                }
                throw th2;
            }
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            Log.error("Compilation interrupted.");
            Log.debug(e10);
            result = Main.Result.ERROR;
        } catch (PortFileInaccessibleException unused2) {
            Log.error("Port file inaccessible.");
            result = Main.Result.ERROR;
        } catch (IOException e11) {
            Log.error("IOException caught during compilation: " + e11.getMessage());
            Log.debug(e11);
            result = Main.Result.ERROR;
        }
        return result == null ? Main.Result.ERROR : result;
    }

    public String serverSettings() {
        return this.settings;
    }

    @Override
    public void shutdown() {
    }
}
