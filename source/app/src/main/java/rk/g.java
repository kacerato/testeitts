package Rk;

import Bi.S;
import Qk.InterfaceC3014g;
import Qk.InterfaceC3015h;
import Xi.C3335c;
import hi.C13486b;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import li.C14146h;
import org.bouncycastle.operator.OperatorCreationException;

public abstract class g {

    public l f22845a = j.f22854b;

    public class a implements InterfaceC3015h {

        public final C14146h f22846a;

        public a(C14146h c14146h) {
            this.f22846a = c14146h;
        }

        @Override
        public InterfaceC3014g a(C13486b c13486b) throws OperatorCreationException {
            try {
                return new c(c13486b, g.this.d(c13486b, g.this.f(this.f22846a.m())));
            } catch (IOException e10) {
                throw new OperatorCreationException("exception on setup: " + ((Object) e10), e10);
            }
        }

        @Override
        public C14146h b() {
            return this.f22846a;
        }

        @Override
        public boolean c() {
            return true;
        }
    }

    public class b implements InterfaceC3015h {

        public final C3335c f22848a;

        public b(C3335c c3335c) {
            this.f22848a = c3335c;
        }

        @Override
        public InterfaceC3014g a(C13486b c13486b) throws OperatorCreationException {
            return new c(c13486b, g.this.d(c13486b, this.f22848a));
        }

        @Override
        public C14146h b() {
            return null;
        }

        @Override
        public boolean c() {
            return false;
        }
    }

    public static class c implements InterfaceC3014g {

        public u f22850a;

        public C13486b f22851b;

        public c(C13486b c13486b, u uVar) {
            this.f22851b = c13486b;
            this.f22850a = uVar;
        }

        @Override
        public C13486b a() {
            return this.f22851b;
        }

        @Override
        public OutputStream getOutputStream() {
            u uVar = this.f22850a;
            if (uVar != null) {
                return uVar;
            }
            throw new IllegalStateException("verifier not initialised");
        }

        @Override
        public boolean verify(byte[] bArr) {
            return this.f22850a.d(bArr);
        }
    }

    public InterfaceC3015h b(C3335c c3335c) throws OperatorCreationException {
        return new b(c3335c);
    }

    public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException {
        return new a(c14146h);
    }

    public final u d(C13486b c13486b, C3335c c3335c) throws OperatorCreationException {
        S e10 = e(c13486b);
        e10.a(false, c3335c);
        return new u(e10);
    }

    public abstract S e(C13486b c13486b) throws OperatorCreationException;

    public abstract C3335c f(h0 h0Var) throws IOException;
}
