package org.openjdk.tools.sjavac.server;

import b3.s;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.Socket;
import java.nio.file.Path;
import java.util.function.Consumer;
import java.util.function.Function;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.Util;
import org.openjdk.tools.sjavac.server.RequestHandler;

public class RequestHandler extends Thread {
    private final Sjavac sjavac;
    private final Socket socket;

    public class AnonymousClass1 extends Log {
        public AnonymousClass1(Writer writer, Writer writer2) {
            super(writer, writer2);
        }

        public static String lambda$printLogMsg$0(Log.Level level, String str) {
            return ((Object) level) + s.f32937c + str;
        }

        public void lambda$printLogMsg$1(Log.Level level, String str) {
            super.printLogMsg(level, str);
        }

        @Override
        public boolean isLevelLogged(Log.Level level) {
            return true;
        }

        @Override
        public void printLogMsg(final Log.Level level, String str) {
            Util.getLines(str).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$printLogMsg$0;
                    lambda$printLogMsg$0 = RequestHandler.AnonymousClass1.lambda$printLogMsg$0(Log.Level.this, (String) obj);
                    return lambda$printLogMsg$0;
                }
            }).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    RequestHandler.AnonymousClass1.this.lambda$printLogMsg$1(level, (String) obj);
                }
            });
        }
    }

    public RequestHandler(Socket socket, Sjavac sjavac) {
        this.socket = socket;
        this.sjavac = sjavac;
    }

    private void checkInternalErrorLog() {
        Path logDestination = ServerMain.getErrorLog().getLogDestination();
        if (logDestination != null) {
            Log.error("Server has encountered an internal error. See " + ((Object) logDestination.toAbsolutePath()) + " for details.");
        }
    }

    @Override
    public void run() {
        BufferedReader bufferedReader;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(this.socket.getInputStream()));
            } catch (Exception e10) {
                Log.error(e10);
            }
            try {
                PrintWriter printWriter = new PrintWriter(this.socket.getOutputStream(), true);
                try {
                    Log.setLogForCurrentThread(new AnonymousClass1(printWriter, printWriter));
                    int parseInt = Integer.parseInt(bufferedReader.readLine());
                    String[] strArr = new String[parseInt];
                    for (int i10 = 0; i10 < parseInt; i10++) {
                        strArr[i10] = bufferedReader.readLine();
                    }
                    checkInternalErrorLog();
                    printWriter.println("RC:" + this.sjavac.compile(strArr).name());
                    checkInternalErrorLog();
                    printWriter.close();
                    bufferedReader.close();
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
        } finally {
            Log.setLogForCurrentThread(null);
        }
    }
}
