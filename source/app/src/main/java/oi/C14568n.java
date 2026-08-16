package oi;

import fm.C13260d;
import hi.C13486b;
import hi.C13505q;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import li.C14146h;
import org.bouncycastle.cert.crmf.CRMFException;

public class C14568n {

    public wh.m f99040a;

    public InterfaceC14567m f99041b;

    public C14568n(wh.m mVar) {
        this.f99040a = mVar;
    }

    public final byte[] a(InterfaceC14577w interfaceC14577w) throws CRMFException {
        if (this.f99040a.C() != null) {
            throw new UnsupportedOperationException();
        }
        try {
            return f(C13260d.e(interfaceC14577w.a(this.f99040a.A(), this.f99040a.B(), this.f99040a.v().F()).d(new ByteArrayInputStream(this.f99040a.x().F()))));
        } catch (IOException e10) {
            throw new CRMFException("Cannot parse decrypted data: " + e10.getMessage(), e10);
        }
    }

    public C13486b b() {
        return this.f99040a.z();
    }

    public C14146h c(InterfaceC14577w interfaceC14577w) throws CRMFException {
        return new C14146h(C13505q.v(a(interfaceC14577w)));
    }

    public char[] d(InterfaceC14577w interfaceC14577w) throws CRMFException {
        return org.bouncycastle.util.w.d(a(interfaceC14577w)).toCharArray();
    }

    public Xh.v e(InterfaceC14577w interfaceC14577w) throws CRMFException {
        return Xh.v.v(a(interfaceC14577w));
    }

    public final byte[] f(byte[] bArr) {
        InterfaceC14567m interfaceC14567m = this.f99041b;
        return interfaceC14567m != null ? interfaceC14567m.a(bArr) : bArr;
    }

    public C14568n(wh.m mVar, InterfaceC14567m interfaceC14567m) {
        this.f99040a = mVar;
        this.f99041b = interfaceC14567m;
    }
}
