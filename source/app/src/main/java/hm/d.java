package hm;

import org.bouncycastle.util.w;

public class d implements i {

    public static final String f91151d = w.f();

    public boolean f91152a;

    public String f91153b;

    public Throwable f91154c;

    public d(boolean z10, String str) {
        this.f91152a = z10;
        this.f91153b = str;
    }

    public static i c(e eVar, String str) {
        return new d(false, eVar.getName() + ": " + str);
    }

    public static i d(e eVar, String str, Object obj, Object obj2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = f91151d;
        sb2.append(str2);
        sb2.append("Expected: ");
        sb2.append(obj);
        sb2.append(str2);
        sb2.append("Found   : ");
        sb2.append(obj2);
        return c(eVar, sb2.toString());
    }

    public static i e(e eVar, String str, Throwable th2) {
        return new d(false, eVar.getName() + ": " + str, th2);
    }

    public static String f(String str, String str2, String str3, String str4) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(" failing ");
        stringBuffer.append(str2);
        String str5 = f91151d;
        stringBuffer.append(str5);
        stringBuffer.append("    expected: ");
        stringBuffer.append(str3);
        stringBuffer.append(str5);
        stringBuffer.append("    got     : ");
        stringBuffer.append(str4);
        return stringBuffer.toString();
    }

    public static i g(e eVar, String str) {
        return new d(true, eVar.getName() + ": " + str);
    }

    @Override
    public Throwable a() {
        return this.f91154c;
    }

    @Override
    public boolean b() {
        return this.f91152a;
    }

    @Override
    public String toString() {
        return this.f91153b;
    }

    public d(boolean z10, String str, Throwable th2) {
        this.f91152a = z10;
        this.f91153b = str;
        this.f91154c = th2;
    }
}
