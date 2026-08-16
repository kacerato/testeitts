package j1;

import java.util.Arrays;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;

public final class C13787k {

    public final String f92528a;

    public final C13785i f92529b;

    public C13785i f92530c;

    public C13787k(String str, C13786j c13786j) {
        C13785i c13785i = new C13785i(null);
        this.f92529b = c13785i;
        this.f92530c = c13785i;
        str.getClass();
        this.f92528a = str;
    }

    public final C13787k a(String str, int i10) {
        String valueOf = String.valueOf(i10);
        C13783g c13783g = new C13783g(null);
        this.f92530c.f92527c = c13783g;
        this.f92530c = c13783g;
        c13783g.f92526b = valueOf;
        c13783g.f92525a = "errorCode";
        return this;
    }

    public final C13787k b(String str, @CheckForNull Object obj) {
        C13785i c13785i = new C13785i(null);
        this.f92530c.f92527c = c13785i;
        this.f92530c = c13785i;
        c13785i.f92526b = obj;
        c13785i.f92525a = str;
        return this;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.f92528a);
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        C13785i c13785i = this.f92529b.f92527c;
        String str = "";
        while (c13785i != null) {
            Object obj = c13785i.f92526b;
            boolean z10 = c13785i instanceof C13783g;
            sb2.append(str);
            String str2 = c13785i.f92525a;
            if (str2 != null) {
                sb2.append(str2);
                sb2.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb2.append(obj);
            } else {
                sb2.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r2.length() - 1);
            }
            c13785i = c13785i.f92527c;
            str = ", ";
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }
}
