package org.openjdk.tools.sjavac.server.log;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.openjdk.tools.sjavac.Log;

public class LazyInitFileLog extends Log {
    String baseFilename;
    Path destination;

    public LazyInitFileLog(String str) {
        super(null, null);
        this.destination = null;
        this.baseFilename = str;
    }

    private Path getAvailableDestination() {
        Path path = Paths.get(this.baseFilename, new String[0]);
        int i10 = 1;
        while (Files.exists(path, new LinkOption[0])) {
            path = Paths.get(this.baseFilename + "." + i10, new String[0]);
            i10++;
        }
        return path;
    }

    public Path getLogDestination() {
        return this.destination;
    }

    @Override
    public void printLogMsg(Log.Level level, String str) {
        try {
            if (this.out == null && isLevelLogged(level)) {
                this.destination = getAvailableDestination();
                PrintWriter printWriter = new PrintWriter((Writer) new FileWriter(this.destination.toFile()), true);
                this.err = printWriter;
                this.out = printWriter;
            }
            super.printLogMsg(level, str);
        } catch (IOException e10) {
            PrintStream printStream = System.out;
            printStream.println("IO error occurred: " + e10.getMessage());
            printStream.println("Original message: [" + ((Object) level) + "] " + str);
        }
    }
}
