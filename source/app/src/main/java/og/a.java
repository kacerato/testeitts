package Og;

import Tg.p;
import Tg.x;
import Tg.y;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public interface a {

    public static final a f20090a = new C0491a();

    public class C0491a implements a {
        @Override
        public void a(File file) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                throw new IOException("not a readable directory: " + ((Object) file));
            }
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete " + ((Object) file2));
                }
            }
        }

        @Override
        public void b(File file, File file2) throws IOException {
            c(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + ((Object) file) + " to " + ((Object) file2));
        }

        @Override
        public void c(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete " + ((Object) file));
        }

        @Override
        public boolean d(File file) {
            return file.exists();
        }

        @Override
        public x e(File file) throws FileNotFoundException {
            try {
                return p.a(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return p.a(file);
            }
        }

        @Override
        public long f(File file) {
            return file.length();
        }

        @Override
        public y g(File file) throws FileNotFoundException {
            return p.k(file);
        }

        @Override
        public x h(File file) throws FileNotFoundException {
            try {
                return p.f(file);
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                return p.f(file);
            }
        }
    }

    void a(File file) throws IOException;

    void b(File file, File file2) throws IOException;

    void c(File file) throws IOException;

    boolean d(File file);

    x e(File file) throws FileNotFoundException;

    long f(File file);

    y g(File file) throws FileNotFoundException;

    x h(File file) throws FileNotFoundException;
}
