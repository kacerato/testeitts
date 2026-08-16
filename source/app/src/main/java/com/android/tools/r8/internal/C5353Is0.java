package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class C5353Is0 extends AbstractC6091Vl0 {

    public static final Map f41227l;

    public final boolean f41228a;

    public final StringBuilder f41229b;

    public StringBuilder f41230c;

    public StringBuilder f41231d;

    public boolean f41232e;

    public boolean f41233f;

    public boolean f41234g;

    public boolean f41235h;

    public int f41236i;

    public int f41237j;

    public String f41238k;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put('Z', TypedValues.Custom.S_BOOLEAN);
        hashMap.put('B', "byte");
        hashMap.put('C', "char");
        hashMap.put('S', "short");
        hashMap.put('I', "int");
        hashMap.put('J', "long");
        hashMap.put('F', TypedValues.Custom.S_FLOAT);
        hashMap.put('D', "double");
        hashMap.put('V', "void");
        f41227l = Collections.unmodifiableMap(hashMap);
    }

    public C5353Is0() {
        this.f41238k = "";
        this.f41228a = false;
        this.f41229b = new StringBuilder();
    }

    public final void a(String str) {
        if ("java/lang/Object".equals(str)) {
            if (this.f41236i % 2 != 0 || this.f41234g) {
                StringBuilder sb2 = this.f41229b;
                sb2.append(this.f41238k);
                sb2.append(str.replace('/', '.'));
            }
        } else {
            StringBuilder sb3 = this.f41229b;
            sb3.append(this.f41238k);
            sb3.append(str.replace('/', '.'));
        }
        this.f41238k = "";
        this.f41236i *= 2;
    }

    public final void b(String str) {
        if (this.f41236i % 2 != 0) {
            this.f41229b.append('>');
        }
        this.f41236i /= 2;
        this.f41229b.append('.');
        StringBuilder sb2 = this.f41229b;
        sb2.append(this.f41238k);
        sb2.append(str.replace('/', '.'));
        this.f41238k = "";
        this.f41236i *= 2;
    }

    public C5353Is0(StringBuilder sb2) {
        this.f41238k = "";
        this.f41228a = false;
        this.f41229b = sb2;
    }

    public final C5353Is0 a(char c10) {
        int i10 = this.f41236i;
        if (i10 % 2 == 0) {
            this.f41236i = i10 + 1;
            this.f41229b.append('<');
        } else {
            this.f41229b.append(", ");
        }
        if (c10 == '+') {
            this.f41229b.append("? extends ");
        } else if (c10 == '-') {
            this.f41229b.append("? super ");
        }
        this.f41237j *= 2;
        return this;
    }

    public final void a() {
        int i10 = this.f41237j;
        if (i10 % 2 == 0) {
            this.f41237j = i10 / 2;
            return;
        }
        while (true) {
            int i11 = this.f41237j;
            if (i11 % 2 == 0) {
                return;
            }
            this.f41237j = i11 / 2;
            this.f41229b.append(okhttp3.v.f99450n);
        }
    }
}
