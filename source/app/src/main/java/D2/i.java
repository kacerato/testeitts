package D2;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import w2.H;

@v2.c
@p
public abstract class i {
    public Writer a() throws IOException {
        Writer b10 = b();
        return b10 instanceof BufferedWriter ? (BufferedWriter) b10 : new BufferedWriter(b10);
    }

    public abstract Writer b() throws IOException;

    public void c(CharSequence charSequence) throws IOException {
        H.E(charSequence);
        try {
            Writer writer = (Writer) m.c().d(b());
            writer.append(charSequence);
            writer.flush();
        } finally {
        }
    }

    @I2.a
    public long d(Readable readable) throws IOException {
        H.E(readable);
        try {
            Writer writer = (Writer) m.c().d(b());
            long b10 = k.b(readable, writer);
            writer.flush();
            return b10;
        } finally {
        }
    }

    public void e(Iterable<? extends CharSequence> iterable) throws IOException {
        f(iterable, System.getProperty("line.separator"));
    }

    public void f(Iterable<? extends CharSequence> iterable, String str) throws IOException {
        H.E(iterable);
        H.E(str);
        try {
            Writer writer = (Writer) m.c().d(a());
            Iterator<? extends CharSequence> it = iterable.iterator();
            while (it.hasNext()) {
                writer.append(it.next()).append((CharSequence) str);
            }
            writer.flush();
        } finally {
        }
    }
}
