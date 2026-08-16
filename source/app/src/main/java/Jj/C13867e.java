package jj;

import ij.r;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.operator.OperatorCreationException;

public class C13867e {

    public org.bouncycastle.operator.jcajce.d f93799a;

    public final String f93800b;

    public final String f93801c;

    public final char[] f93802d;

    public SecureRandom f93803e;

    public C13867e(String str, String str2, char[] cArr) {
        this.f93799a = new org.bouncycastle.operator.jcajce.d();
        this.f93803e = new SecureRandom();
        this.f93800b = str;
        this.f93801c = str2;
        this.f93802d = cArr;
    }

    public r a() throws OperatorCreationException {
        return new r(this.f93800b, this.f93801c, this.f93802d, this.f93803e, this.f93799a.b());
    }

    public C13867e b(SecureRandom secureRandom) {
        this.f93803e = secureRandom;
        return this;
    }

    public C13867e c(String str) {
        this.f93799a.d(str);
        return this;
    }

    public C13867e d(Provider provider) {
        this.f93799a.e(provider);
        return this;
    }

    public C13867e(String str, char[] cArr) {
        this(null, str, cArr);
    }
}
