package D2;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@p
public class C2483a extends Writer {

    public final Appendable f4742b;

    public boolean f4743c;

    public C2483a(Appendable appendable) {
        this.f4742b = (Appendable) H.E(appendable);
    }

    public final void c() throws IOException {
        if (this.f4743c) {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override
    public void close() throws IOException {
        this.f4743c = true;
        Appendable appendable = this.f4742b;
        if (appendable instanceof Closeable) {
            ((Closeable) appendable).close();
        }
    }

    @Override
    public void flush() throws IOException {
        c();
        Appendable appendable = this.f4742b;
        if (appendable instanceof Flushable) {
            ((Flushable) appendable).flush();
        }
    }

    @Override
    public void write(char[] cArr, int i10, int i11) throws IOException {
        c();
        this.f4742b.append(new String(cArr, i10, i11));
    }

    @Override
    public void write(int i10) throws IOException {
        c();
        this.f4742b.append((char) i10);
    }

    @Override
    public Writer append(char c10) throws IOException {
        c();
        this.f4742b.append(c10);
        return this;
    }

    @Override
    public void write(String str) throws IOException {
        H.E(str);
        c();
        this.f4742b.append(str);
    }

    @Override
    public Writer append(@CheckForNull CharSequence charSequence) throws IOException {
        c();
        this.f4742b.append(charSequence);
        return this;
    }

    @Override
    public Writer append(@CheckForNull CharSequence charSequence, int i10, int i11) throws IOException {
        c();
        this.f4742b.append(charSequence, i10, i11);
        return this;
    }

    @Override
    public void write(String str, int i10, int i11) throws IOException {
        H.E(str);
        c();
        this.f4742b.append(str, i10, i11 + i10);
    }
}
