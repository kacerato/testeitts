package org.openjdk.tools.sjavac.client;

import ei.C13155a;
import java.io.OutputStreamWriter;
import java.io.Writer;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.AutoFlushWriter;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.comp.SjavacImpl;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.server.Sjavac;

public class ClientMain {
    public static int run(String[] strArr) {
        return run(strArr, new AutoFlushWriter(new OutputStreamWriter(System.out)), new AutoFlushWriter(new OutputStreamWriter(System.err)));
    }

    public static int run(String[] strArr, Writer writer, Writer writer2) {
        Log.setLogForCurrentThread(new Log(writer, writer2));
        try {
            Options parseArgs = Options.parseArgs(strArr);
            Log.setLogLevel(parseArgs.getLogLevel());
            Log.debug("==========================================================");
            Log.debug("Launching sjavac client with the following parameters:");
            Log.debug(C13155a.f85806a + parseArgs.getStateArgsString());
            Log.debug("==========================================================");
            boolean z10 = parseArgs.getServerConf() != null;
            Sjavac sjavacClient = z10 ? new SjavacClient(parseArgs) : new SjavacImpl();
            Main.Result compile = sjavacClient.compile(strArr);
            if (!z10) {
                sjavacClient.shutdown();
            }
            return compile.exitCode;
        } catch (IllegalArgumentException e10) {
            Log.error(e10.getMessage());
            return Main.Result.CMDERR.exitCode;
        }
    }
}
