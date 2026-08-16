package D2;

import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.CheckForNull;
import w2.H;

@v2.c
@p
public class B extends Reader {

    public final Iterator<? extends j> f4729b;

    @CheckForNull
    public Reader f4730c;

    public B(Iterator<? extends j> it) throws IOException {
        this.f4729b = it;
        c();
    }

    public final void c() throws IOException {
        close();
        if (this.f4729b.hasNext()) {
            this.f4730c = this.f4729b.next().m();
        }
    }

    @Override
    public void close() throws IOException {
        Reader reader = this.f4730c;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f4730c = null;
            }
        }
    }

    @Override
    public int read(char[] cArr, int i10, int i11) throws IOException {
        H.E(cArr);
        Reader reader = this.f4730c;
        if (reader == null) {
            return -1;
        }
        int read = reader.read(cArr, i10, i11);
        if (read != -1) {
            return read;
        }
        c();
        return read(cArr, i10, i11);
    }

    @Override
    public boolean ready() throws IOException {
        Reader reader = this.f4730c;
        return reader != null && reader.ready();
    }

    @Override
    public long skip(long j10) throws IOException {
        H.e(j10 >= 0, "n is negative");
        if (j10 > 0) {
            while (true) {
                Reader reader = this.f4730c;
                if (reader == null) {
                    break;
                }
                long skip = reader.skip(j10);
                if (skip > 0) {
                    return skip;
                }
                c();
            }
        }
        return 0L;
    }
}
