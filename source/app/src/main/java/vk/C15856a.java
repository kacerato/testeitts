package vk;

import Qk.F;
import fd.C13208a;
import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedHashMap;
import java.util.Map;
import org.bouncycastle.cms.B;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.G0;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.cms.x0;
import org.bouncycastle.mime.MimeIOException;
import org.bouncycastle.util.w;
import tk.C15468e;
import tk.m;
import uk.C15640b;

public class C15856a extends m {

    public final B f121640b;

    public final F f121641c;

    public final OutputStream f121642d;

    public final String f121643e;

    public static class b {

        public static final String[] f121644d = {"Content-Type", F2.d.f6218a0, "Content-Transfer-Encoding", "Content-Description"};

        public static final String[] f121645e = {"application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data", "attachment; filename=\"smime.p7m\"", "base64", "S/MIME Encrypted Message"};

        public final B f121646a = new B();

        public final Map<String, String> f121647b = new LinkedHashMap();

        public String f121648c = "base64";

        public b() {
            int i10 = 0;
            while (true) {
                String[] strArr = f121644d;
                if (i10 == strArr.length) {
                    return;
                }
                this.f121647b.put(strArr[i10], f121645e[i10]);
                i10++;
            }
        }

        public b c(G0 g02) {
            this.f121646a.a(g02);
            return this;
        }

        public C15856a d(OutputStream outputStream, F f10) {
            return new C15856a(this, f10, g.b(outputStream));
        }

        public b e(int i10) {
            this.f121646a.k(i10);
            return this;
        }

        public b f(x0 x0Var) {
            this.f121646a.b(x0Var);
            return this;
        }

        public b g(InterfaceC14626d interfaceC14626d) {
            this.f121646a.c(interfaceC14626d);
            return this;
        }

        public b h(String str, String str2) {
            this.f121647b.put(str, str2);
            return this;
        }
    }

    public static class c extends OutputStream {

        public final OutputStream f121649b;

        public final OutputStream f121650c;

        public c(OutputStream outputStream, OutputStream outputStream2) {
            this.f121649b = outputStream;
            this.f121650c = outputStream2;
        }

        @Override
        public void close() throws IOException {
            this.f121649b.close();
            OutputStream outputStream = this.f121650c;
            if (outputStream != null) {
                outputStream.close();
            }
        }

        @Override
        public void write(int i10) throws IOException {
            this.f121649b.write(i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f121649b.write(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f121649b.write(bArr, i10, i11);
        }
    }

    public C15856a(b bVar, F f10, OutputStream outputStream) {
        super(new C15468e(m.c(bVar.f121647b), bVar.f121648c));
        this.f121640b = bVar.f121646a;
        this.f121643e = bVar.f121648c;
        this.f121641c = f10;
        this.f121642d = outputStream;
    }

    @Override
    public OutputStream a() throws IOException {
        this.f117725a.c(this.f121642d);
        this.f121642d.write(w.j(C13208a.f86201f));
        try {
            OutputStream outputStream = this.f121642d;
            if ("base64".equals(this.f121643e)) {
                outputStream = new C15640b(outputStream);
            }
            return new c(this.f121640b.f(g.c(outputStream), this.f121641c), outputStream);
        } catch (CMSException e10) {
            throw new MimeIOException(e10.getMessage(), e10);
        }
    }
}
