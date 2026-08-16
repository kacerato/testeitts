package com.google.android.gms.internal.measurement;

public final class G4 {

    public int f61927a;

    public long f61928b;

    public Object f61929c;

    public final C12028b5 f61930d;

    public int f61931e;

    public G4() {
        int i10 = C12028b5.f62235e;
        int i11 = C12056e6.f62268d;
        this.f61930d = C12028b5.f62234d;
    }

    public static String a(int i10, int i11, byte b10, String str, String str2) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + b10 + String.valueOf(i10).length());
        sb2.append(str);
        sb2.append(i11);
        sb2.append(str2);
        sb2.append(i10);
        return sb2.toString();
    }

    public G4(C12028b5 c12028b5) {
        c12028b5.getClass();
        this.f61930d = c12028b5;
    }
}
