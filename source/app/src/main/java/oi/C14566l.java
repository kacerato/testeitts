package oi;

import Qk.F;
import Qk.y;
import hi.C13486b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import li.C14146h;
import oh.C14538r0;
import org.bouncycastle.cert.crmf.CRMFException;
import org.bouncycastle.operator.OperatorException;

public class C14566l {

    public y f99037a;

    public F f99038b;

    public InterfaceC14567m f99039c;

    public C14566l(y yVar, F f10) {
        this(yVar, f10, null);
    }

    public wh.m a(Xh.v vVar) throws CRMFException {
        try {
            return new wh.m(vVar.y(), this.f99038b.a(), new C14538r0(this.f99037a.b(this.f99038b.getKey())), this.f99037a.a(), null, new C14538r0(new Sk.o(vVar).a(this.f99038b).c()));
        } catch (IllegalStateException e10) {
            throw new CRMFException("cannot encode key: " + e10.getMessage(), e10);
        } catch (OperatorException e11) {
            throw new CRMFException("cannot wrap key: " + e11.getMessage(), e11);
        }
    }

    public wh.m b(C14146h c14146h) throws CRMFException {
        try {
            return d(e(c14146h.getEncoded()));
        } catch (IOException e10) {
            throw new CRMFException("cannot encode certificate: " + e10.getMessage(), e10);
        }
    }

    public wh.m c(char[] cArr) throws CRMFException {
        return d(e(org.bouncycastle.util.w.o(cArr)));
    }

    public final wh.m d(byte[] bArr) throws CRMFException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        OutputStream d10 = this.f99038b.d(byteArrayOutputStream);
        try {
            d10.write(bArr);
            d10.close();
            C13486b a10 = this.f99038b.a();
            try {
                this.f99037a.b(this.f99038b.getKey());
                return new wh.m(null, a10, new C14538r0(this.f99037a.b(this.f99038b.getKey())), this.f99037a.a(), null, new C14538r0(byteArrayOutputStream.toByteArray()));
            } catch (OperatorException e10) {
                throw new CRMFException("cannot wrap key: " + e10.getMessage(), e10);
            }
        } catch (IOException e11) {
            throw new CRMFException("cannot process data: " + e11.getMessage(), e11);
        }
    }

    public final byte[] e(byte[] bArr) {
        InterfaceC14567m interfaceC14567m = this.f99039c;
        return interfaceC14567m != null ? interfaceC14567m.b(bArr) : bArr;
    }

    public C14566l(y yVar, F f10, InterfaceC14567m interfaceC14567m) {
        this.f99037a = yVar;
        this.f99038b = f10;
        this.f99039c = interfaceC14567m;
    }
}
