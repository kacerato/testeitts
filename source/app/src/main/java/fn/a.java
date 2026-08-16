package fn;

import android.icu.text.DateFormat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.util.Objects;
import org.offlineApk.iyxan23.zipalignjava.InvalidZipException;

public class a {
    public static void a(String[] args) throws IOException {
        if (args.length < 2) {
            System.err.println("Usage:\n\t<exec> <input zip> <output zip> (old)\n\nExample(s):\n\t$ java -jar zipalign.jar input.zip output.zip\n\n\tTo use the old method, use the \"old\" parameter:\n\n\t$ java -jar zipalign.jar input.zip output.zip old");
            System.exit(1);
        }
        boolean z10 = false;
        File file = new File(args[0]);
        File file2 = new File(args[1]);
        if (args.length >= 3 && Objects.equals(args[2], "old")) {
            z10 = true;
        }
        if (!file.exists()) {
            System.err.println("Input file doesn't exist: " + file.getPath());
            System.exit(1);
        }
        if (file.isDirectory()) {
            System.err.println("Input path must be of a file: " + file.getPath());
            System.exit(1);
        }
        if (!file2.createNewFile()) {
            System.err.println("Output file already exists: " + file2.getPath());
            System.exit(1);
        }
        PrintStream printStream = System.out;
        printStream.println("Aligning zip " + ((Object) file));
        long currentTimeMillis = System.currentTimeMillis();
        if (z10) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    c.a(fileInputStream, fileOutputStream);
                    fileOutputStream.close();
                    fileInputStream.close();
                } finally {
                }
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } else {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c);
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        c.c(randomAccessFile, fileOutputStream2);
                        fileOutputStream2.close();
                        randomAccessFile.close();
                    } catch (Throwable th4) {
                        try {
                            fileOutputStream2.close();
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                        }
                        throw th4;
                    }
                } catch (InvalidZipException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th6) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th7) {
                    th6.addSuppressed(th7);
                }
                throw th6;
            }
        }
        printStream.println("Zip aligned successfully, took " + (System.currentTimeMillis() - currentTimeMillis) + DateFormat.MINUTE_SECOND);
    }
}
