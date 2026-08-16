package vk;

import Qk.p;
import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import org.bouncycastle.cms.A;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.I0;
import org.bouncycastle.cms.O;
import org.bouncycastle.cms.O0;
import org.bouncycastle.cms.x0;
import org.bouncycastle.mime.MimeIOException;
import org.bouncycastle.util.t;
import tk.C15467d;
import tk.C15468e;
import tk.InterfaceC15470g;
import tk.j;
import tk.k;

public abstract class e implements k {

    public p[] f121678a;

    public C15858c f121679b;

    @Override
    public void a(j jVar, C15468e c15468e, InputStream inputStream) throws IOException {
        try {
            if (!c15468e.h().equals("application/pkcs7-signature") && !c15468e.h().equals("application/x-pkcs7-signature")) {
                if (!c15468e.h().equals("application/pkcs7-mime") && !c15468e.h().equals("application/x-pkcs7-mime")) {
                    c(jVar, c15468e, inputStream);
                    return;
                }
                A a10 = new A(inputStream);
                d(jVar, c15468e, a10.e(), a10.f());
                a10.a();
                return;
            }
            HashMap hashMap = new HashMap();
            int i10 = 0;
            while (true) {
                p[] pVarArr = this.f121678a;
                if (i10 == pVarArr.length) {
                    O o10 = new O(hashMap, C13260d.e(inputStream));
                    e(jVar, c15468e, o10.e(), o10.d(), o10.c(), o10.l());
                    return;
                } else {
                    pVarArr[i10].getOutputStream().close();
                    hashMap.put(this.f121678a[i10].a().u(), this.f121678a[i10].b());
                    i10++;
                }
            }
        } catch (CMSException e10) {
            throw new MimeIOException("CMS failure: " + e10.getMessage(), e10);
        }
    }

    @Override
    public InterfaceC15470g b(j jVar, C15468e c15468e) {
        if (!c15468e.l()) {
            return new C15467d();
        }
        C15858c c15858c = new C15858c(jVar, c15468e);
        this.f121679b = c15858c;
        this.f121678a = c15858c.e();
        return this.f121679b;
    }

    public void c(j jVar, C15468e c15468e, InputStream inputStream) throws IOException {
        throw new IllegalStateException("content handling not implemented");
    }

    public void d(j jVar, C15468e c15468e, x0 x0Var, I0 i02) throws IOException, CMSException {
        throw new IllegalStateException("envelopedData handling not implemented");
    }

    public void e(j jVar, C15468e c15468e, t tVar, t tVar2, t tVar3, O0 o02) throws IOException, CMSException {
        throw new IllegalStateException("signedData handling not implemented");
    }
}
