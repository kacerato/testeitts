package com.android.tools.r8.internal;

public final class C6783ce0 extends AbstractC5161Fj0 implements InterfaceC4958By {

    public int f47124c;

    public int f47125d;

    public Object f47126e;

    public final String f47127f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6783ce0(String str, InterfaceC7294fi interfaceC7294fi) {
        super(interfaceC7294fi);
        this.f47127f = str;
    }

    @Override
    public final InterfaceC7294fi a(C8805ol0 c8805ol0, C8805ol0 c8805ol02) {
        C6783ce0 c6783ce0 = new C6783ce0(this.f47127f, c8805ol02);
        c6783ce0.f47126e = c8805ol0;
        return c6783ce0;
    }

    @Override
    public final Object b(Object obj) {
        C8805ol0 c8805ol0;
        int i10;
        int a10;
        EnumC7960ji enumC7960ji = EnumC7960ji.f49313b;
        int i11 = this.f47125d;
        if (i11 == 0) {
            AbstractC5277Hj0.a(obj);
            c8805ol0 = (C8805ol0) this.f47126e;
            i10 = 0;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = this.f47124c;
            c8805ol0 = (C8805ol0) this.f47126e;
            AbstractC5277Hj0.a(obj);
        }
        if (i10 >= this.f47127f.length() || (a10 = AbstractC5349Iq0.a(this.f47127f, "android_res/", i10, 4)) == -1) {
            return C7833iv0.f49115a;
        }
        int i12 = a10 + 12;
        int i13 = i12;
        while (i13 < this.f47127f.length() && !Character.isWhitespace(this.f47127f.charAt(i13))) {
            i13++;
        }
        String substring = this.f47127f.substring(i12, i13);
        GJ.b(substring, "substring(...)");
        this.f47126e = c8805ol0;
        this.f47124c = i13;
        this.f47125d = 1;
        c8805ol0.f51341c = substring;
        c8805ol0.f51340b = 3;
        c8805ol0.f51342d = this;
        return enumC7960ji;
    }

    @Override
    public final Object a(Object obj, Object obj2) {
        C6783ce0 c6783ce0 = new C6783ce0(this.f47127f, (InterfaceC7294fi) obj2);
        c6783ce0.f47126e = (C8805ol0) obj;
        return c6783ce0.b(C7833iv0.f49115a);
    }
}
