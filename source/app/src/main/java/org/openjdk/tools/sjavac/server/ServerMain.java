package org.openjdk.tools.sjavac.server;

import java.io.IOException;
import java.io.PrintStream;
import java.lang.Thread;
import org.openjdk.tools.javac.main.Main;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.server.log.LazyInitFileLog;
import org.openjdk.tools.sjavac.server.log.LoggingOutputStream;

public class ServerMain {
    private static LazyInitFileLog errorLog;

    public static LazyInitFileLog getErrorLog() {
        return errorLog;
    }

    public static void lambda$run$0(Thread thread, Throwable th2) {
        Log.setLogForCurrentThread(errorLog);
        Log.error(th2);
    }

    public static int run(String[] strArr) {
        LazyInitFileLog lazyInitFileLog = new LazyInitFileLog("server.log");
        errorLog = lazyInitFileLog;
        Log.setLogForCurrentThread(lazyInitFileLog);
        Log.Level level = Log.Level.ERROR;
        Log.setLogLevel(level);
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            @Override
            public final void uncaughtException(Thread thread, Throwable th2) {
                ServerMain.lambda$run$0(thread, th2);
            }
        });
        System.setOut(new PrintStream(new LoggingOutputStream(System.out, Log.Level.INFO, "[stdout] ")));
        System.setErr(new PrintStream(new LoggingOutputStream(System.err, level, "[stderr] ")));
        if (strArr.length > 1) {
            Log.error("When spawning a background server, only a single --startserver argument is allowed.");
            return Main.Result.CMDERR.exitCode;
        }
        try {
            return new SjavacServer(strArr[0]).startServer();
        } catch (IOException | InterruptedException e10) {
            e10.printStackTrace();
            return Main.Result.ERROR.exitCode;
        }
    }
}
