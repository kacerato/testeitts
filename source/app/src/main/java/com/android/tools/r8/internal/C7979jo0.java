package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.StackTraceLineParser;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class C7979jo0 implements StackTraceLineParser {

    public static final boolean f49350l = true;

    public final Pattern f49351a;

    public final ArrayList f49353c;

    public final C7647ho0 f49352b = new C7647ho0();

    public final C7813io0 f49354d = new C7813io0();

    public final C6152Wn0 f49355e = new C6152Wn0();

    public final C7480go0 f49356f = new C7480go0();

    public final C6647bo0 f49357g = new C6647bo0();

    public final C6480ao0 f49358h = new C6480ao0();

    public final C6813co0 f49359i = new C6813co0();

    public final C6979do0 f49360j = new C6979do0();

    public final C6323Zn0 f49361k = new C6323Zn0();

    public C7979jo0(String str) {
        ArrayList arrayList = new ArrayList();
        this.f49353c = arrayList;
        StringBuilder sb2 = new StringBuilder();
        a(str, sb2, arrayList);
        this.f49351a = Pattern.compile(sb2.toString());
    }

    public final void a(String str, StringBuilder sb2, ArrayList arrayList) {
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        int i11 = 0;
        for (int i12 = 0; i12 < str.length(); i12++) {
            if (z10) {
                if (!f49350l && z11) {
                    throw new AssertionError();
                }
                AbstractC7146eo0 a10 = a(str.charAt(i12));
                sb2.append((CharSequence) str, i10, i12 - 1);
                a10.getClass();
                int i13 = i11 + 1;
                String str2 = "captureGroup" + i11;
                sb2.append("(?<");
                sb2.append(str2);
                sb2.append(">");
                sb2.append(a10.a());
                sb2.append(")");
                arrayList.add(a10.a(str2));
                i11 = i13;
                i10 = i12 + 1;
                z10 = false;
            } else {
                boolean z12 = !z11 && str.charAt(i12) == '%';
                z11 = !z11 && str.charAt(i12) == '\\';
                z10 = z12;
            }
        }
        sb2.append((CharSequence) str, i10, str.length());
    }

    @Override
    public final C6095Vn0 parse(String str) {
        boolean z10 = C6095Vn0.f45166j;
        C5980Tn0 c5980Tn0 = new C5980Tn0(str);
        Matcher matcher = this.f49351a.matcher(str);
        if (matcher.matches()) {
            ArrayList arrayList = this.f49353c;
            int size = arrayList.size();
            int i10 = 0;
            boolean z11 = false;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                InterfaceC7313fo0 interfaceC7313fo0 = (InterfaceC7313fo0) obj;
                if (!z11 || !interfaceC7313fo0.a()) {
                    if (interfaceC7313fo0.a(c5980Tn0, matcher)) {
                        z11 |= interfaceC7313fo0.a();
                    }
                }
            }
        }
        return new C6095Vn0(c5980Tn0.f44580a, c5980Tn0.f44581b, c5980Tn0.f44582c, c5980Tn0.f44583d, c5980Tn0.f44584e, c5980Tn0.f44585f, c5980Tn0.f44586g, c5980Tn0.f44587h, c5980Tn0.f44588i);
    }

    public final AbstractC7146eo0 a(char c10) {
        if (c10 == 'C') {
            return this.f49355e;
        }
        if (c10 == 'S') {
            return this.f49352b;
        }
        if (c10 == 'a') {
            return this.f49359i;
        }
        if (c10 == 'c') {
            return this.f49354d;
        }
        if (c10 == 'f') {
            return this.f49361k;
        }
        if (c10 == 'l') {
            return this.f49357g;
        }
        if (c10 == 'm') {
            return this.f49360j;
        }
        if (c10 == 's') {
            return this.f49356f;
        }
        if (c10 == 't') {
            return this.f49358h;
        }
        throw new C5417Jv0("Unexpected variable: " + c10);
    }
}
