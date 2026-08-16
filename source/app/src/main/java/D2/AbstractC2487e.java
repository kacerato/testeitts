package D2;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import w2.H;

@v2.c
@p
public abstract class AbstractC2487e {

    public final class b extends i {

        public final Charset f4744a;

        @Override
        public Writer b() throws IOException {
            return new OutputStreamWriter(AbstractC2487e.this.c(), this.f4744a);
        }

        public String toString() {
            String obj = AbstractC2487e.this.toString();
            String valueOf = String.valueOf(this.f4744a);
            StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 13 + valueOf.length());
            sb2.append(obj);
            sb2.append(".asCharSink(");
            sb2.append(valueOf);
            sb2.append(")");
            return sb2.toString();
        }

        public b(Charset charset) {
            this.f4744a = (Charset) H.E(charset);
        }
    }

    public i a(Charset charset) {
        return new b(charset);
    }

    public OutputStream b() throws IOException {
        OutputStream c10 = c();
        return c10 instanceof BufferedOutputStream ? (BufferedOutputStream) c10 : new BufferedOutputStream(c10);
    }

    public abstract OutputStream c() throws IOException;

    public void d(byte[] bArr) throws IOException {
        H.E(bArr);
        try {
            OutputStream outputStream = (OutputStream) m.c().d(c());
            outputStream.write(bArr);
            outputStream.flush();
        } finally {
        }
    }

    @I2.a
    public long e(InputStream inputStream) throws IOException {
        H.E(inputStream);
        try {
            OutputStream outputStream = (OutputStream) m.c().d(c());
            long b10 = C2489g.b(inputStream, outputStream);
            outputStream.flush();
            return b10;
        } finally {
        }
    }
}
