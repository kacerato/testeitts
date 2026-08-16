package oh;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1ParsingException;

public class C14529m0 implements N {

    public final int f98911b;

    public final int f98912c;

    public final I f98913d;

    public C14529m0(int i10, int i11, I i12) {
        this.f98911b = i10;
        this.f98912c = i11;
        this.f98913d = i12;
    }

    @Override
    public InterfaceC14516g b() throws IOException {
        return this.f98913d.j();
    }

    public B c() throws IOException {
        return this.f98913d.c(this.f98911b, this.f98912c);
    }

    @Override
    public InterfaceC14516g d(boolean z10, int i10) throws IOException {
        return z10 ? this.f98913d.h(i10) : this.f98913d.e(i10);
    }

    @Override
    public int g() {
        return this.f98912c;
    }

    @Override
    public N h(int i10, int i11) throws IOException {
        return new C14529m0(i10, i11, this.f98913d);
    }

    @Override
    public N j() throws IOException {
        return this.f98913d.i();
    }

    @Override
    public boolean k(int i10) {
        return this.f98911b == i10;
    }

    @Override
    public int l() {
        return this.f98911b;
    }

    @Override
    public boolean m(int i10, int i11) {
        return this.f98911b == i10 && this.f98912c == i11;
    }

    @Override
    public boolean o() {
        return this.f98911b == 128;
    }

    @Override
    public boolean p(int i10) {
        return this.f98911b == 128 && this.f98912c == i10;
    }

    @Override
    public B r() {
        try {
            return c();
        } catch (IOException e10) {
            throw new ASN1ParsingException(e10.getMessage());
        }
    }
}
