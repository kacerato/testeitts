package mi;

import Ii.J;
import Qk.p;
import Xi.C3335c;
import hi.C13486b;
import hi.C13499k;
import hi.g0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import li.C14148j;
import org.bouncycastle.crypto.util.w;

public class C14271a extends C14148j {

    public static class b implements p {

        public ByteArrayOutputStream f97122a;

        public b() {
            this.f97122a = new ByteArrayOutputStream();
        }

        @Override
        public C13486b a() {
            return new C13486b(Wh.b.f27785i);
        }

        @Override
        public byte[] b() {
            byte[] byteArray = this.f97122a.toByteArray();
            this.f97122a.reset();
            J j10 = new J();
            j10.update(byteArray, 0, byteArray.length);
            byte[] bArr = new byte[j10.f()];
            j10.c(bArr, 0);
            return bArr;
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f97122a;
        }
    }

    public C14271a() {
        super(new b());
    }

    public C13499k h(C3335c c3335c) throws IOException {
        return super.b(w.a(c3335c));
    }

    public g0 i(C3335c c3335c) throws IOException {
        return super.e(w.a(c3335c));
    }

    public C14271a(p pVar) {
        super(pVar);
    }
}
