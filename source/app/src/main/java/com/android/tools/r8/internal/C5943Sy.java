package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C5943Sy {

    public final Iterator f44352a;

    public Map.Entry f44353b;

    public C5943Sy(AbstractC6001Ty abstractC6001Ty) {
        C5418Jw c5418Jw = abstractC6001Ty.f44631b;
        c5418Jw.getClass();
        C7143en0 c7143en0 = new C7143en0(((C7477gn0) c5418Jw.f41526a.entrySet()).f48361b);
        this.f44352a = c7143en0;
        if (c7143en0.hasNext()) {
            this.f44353b = (Map.Entry) c7143en0.next();
        }
    }

    public final void a(int i10, C5264He c5264He) {
        while (true) {
            Map.Entry entry = this.f44353b;
            if (entry == null || ((C6116Vy) entry.getKey()).f45236b >= i10) {
                return;
            }
            C6116Vy c6116Vy = (C6116Vy) this.f44353b.getKey();
            Object value = this.f44353b.getValue();
            C5418Jw c5418Jw = C5418Jw.f41525c;
            EnumC5942Sx0 enumC5942Sx0 = c6116Vy.f45237c;
            int i11 = c6116Vy.f45236b;
            if (c6116Vy.f45238d) {
                for (Object obj : (List) value) {
                    if (enumC5942Sx0 == EnumC5942Sx0.f44345f) {
                        c5264He.b(i11, 3);
                        ((O0) obj).a(c5264He);
                        c5264He.b(i11, 4);
                    } else {
                        c5264He.b(i11, enumC5942Sx0.f44349c);
                        C5418Jw.a(c5264He, enumC5942Sx0, obj);
                    }
                }
            } else if (enumC5942Sx0 == EnumC5942Sx0.f44345f) {
                c5264He.b(i11, 3);
                ((O0) value).a(c5264He);
                c5264He.b(i11, 4);
            } else {
                c5264He.b(i11, enumC5942Sx0.f44349c);
                C5418Jw.a(c5264He, enumC5942Sx0, value);
            }
            if (this.f44352a.hasNext()) {
                this.f44353b = (Map.Entry) this.f44352a.next();
            } else {
                this.f44353b = null;
            }
        }
    }
}
