package oh;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import org.bouncycastle.asn1.ASN1ParsingException;

public class f1 extends E {

    public byte[] f98882d;

    public f1(byte[] bArr) throws IOException {
        if (bArr == null) {
            throw new NullPointerException("'encoded' cannot be null");
        }
        this.f98882d = bArr;
    }

    @Override
    public B C() {
        S();
        return super.C();
    }

    @Override
    public B D() {
        S();
        return super.D();
    }

    @Override
    public InterfaceC14516g I(int i10) {
        S();
        return super.I(i10);
    }

    @Override
    public Enumeration J() {
        byte[] T10 = T();
        return T10 != null ? new e1(T10) : super.J();
    }

    @Override
    public AbstractC14508c M() {
        return ((E) D()).M();
    }

    @Override
    public AbstractC14524k N() {
        return ((E) D()).N();
    }

    @Override
    public AbstractC14551y O() {
        return ((E) D()).O();
    }

    @Override
    public G P() {
        return ((E) D()).P();
    }

    @Override
    public InterfaceC14516g[] Q() {
        S();
        return super.Q();
    }

    @Override
    public InterfaceC14516g[] R() {
        S();
        return super.R();
    }

    public final synchronized void S() {
        if (this.f98882d != null) {
            r rVar = new r(this.f98882d, true);
            try {
                C14518h n10 = rVar.n();
                rVar.close();
                this.f98789b = n10.j();
                this.f98882d = null;
            } catch (IOException e10) {
                throw new ASN1ParsingException("malformed ASN.1: " + ((Object) e10), e10);
            }
        }
    }

    public final synchronized byte[] T() {
        return this.f98882d;
    }

    @Override
    public int hashCode() {
        S();
        return super.hashCode();
    }

    @Override
    public Iterator<InterfaceC14516g> iterator() {
        S();
        return super.iterator();
    }

    @Override
    public int size() {
        S();
        return super.size();
    }

    @Override
    public void v(C14503A c14503a, boolean z10) throws IOException {
        byte[] T10 = T();
        if (T10 != null) {
            c14503a.r(z10, 48, T10);
        } else {
            super.D().v(c14503a, z10);
        }
    }

    @Override
    public int y(boolean z10) throws IOException {
        byte[] T10 = T();
        return T10 != null ? C14503A.i(z10, T10.length) : super.D().y(z10);
    }
}
