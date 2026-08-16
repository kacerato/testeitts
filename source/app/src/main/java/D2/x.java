package D2;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
@InterfaceC15800a
public final class x {

    public final Readable f4807a;

    @CheckForNull
    public final Reader f4808b;

    public final CharBuffer f4809c;

    public final char[] f4810d;

    public final Queue<String> f4811e;

    public final v f4812f;

    public class a extends v {
        public a() {
        }

        @Override
        public void d(String str, String str2) {
            x.this.f4811e.add(str);
        }
    }

    public x(Readable readable) {
        CharBuffer e10 = k.e();
        this.f4809c = e10;
        this.f4810d = e10.array();
        this.f4811e = new ArrayDeque();
        this.f4812f = new a();
        this.f4807a = (Readable) H.E(readable);
        this.f4808b = readable instanceof Reader ? (Reader) readable : null;
    }

    @I2.a
    @CheckForNull
    public String b() throws IOException {
        int read;
        while (true) {
            if (this.f4811e.peek() != null) {
                break;
            }
            u.a(this.f4809c);
            Reader reader = this.f4808b;
            if (reader != null) {
                char[] cArr = this.f4810d;
                read = reader.read(cArr, 0, cArr.length);
            } else {
                read = this.f4807a.read(this.f4809c);
            }
            if (read == -1) {
                this.f4812f.b();
                break;
            }
            this.f4812f.a(this.f4810d, 0, read);
        }
        return this.f4811e.poll();
    }
}
