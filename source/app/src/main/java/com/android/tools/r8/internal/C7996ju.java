package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.D3;

public final class C7996ju {

    public final InterfaceC10662zs0[] f49394a;

    public final InterfaceC4889As0[] f49395b;

    public final InterfaceC4947Bs0[] f49396c;

    public final InterfaceC5005Cs0[] f49397d;

    public final InterfaceC5063Ds0[] f49398e;

    public final InterfaceC5121Es0[] f49399f;

    public final InterfaceC5237Gs0[] f49400g;

    public final InterfaceC8739oK[] f49401h;

    public final InterfaceC10104wZ[] f49402i;

    public final InterfaceC10438yZ[] f49403j;

    public final InterfaceC10605zZ[] f49404k;

    public final AZ[] f49405l;

    public final BZ[] f49406m;

    public final InterfaceC10271xZ[] f49407n;

    public final CZ[] f49408o;

    public final DZ[] f49409p;

    public final EZ[] f49410q;

    public final FZ[] f49411r;

    public final InterfaceC7339fx[] f49412s;

    public final InterfaceC8005jx[] f49413t;

    public C7996ju(InterfaceC10662zs0[] interfaceC10662zs0Arr, InterfaceC4889As0[] interfaceC4889As0Arr, InterfaceC4947Bs0[] interfaceC4947Bs0Arr, InterfaceC5005Cs0[] interfaceC5005Cs0Arr, InterfaceC5063Ds0[] interfaceC5063Ds0Arr, InterfaceC5121Es0[] interfaceC5121Es0Arr, InterfaceC5237Gs0[] interfaceC5237Gs0Arr, InterfaceC8739oK[] interfaceC8739oKArr, InterfaceC10104wZ[] interfaceC10104wZArr, InterfaceC10438yZ[] interfaceC10438yZArr, InterfaceC10605zZ[] interfaceC10605zZArr, AZ[] azArr, BZ[] bzArr, InterfaceC10271xZ[] interfaceC10271xZArr, CZ[] czArr, DZ[] dzArr, EZ[] ezArr, FZ[] fzArr, InterfaceC7339fx[] interfaceC7339fxArr, InterfaceC8005jx[] interfaceC8005jxArr) {
        this.f49394a = interfaceC10662zs0Arr;
        this.f49395b = interfaceC4889As0Arr;
        this.f49396c = interfaceC4947Bs0Arr;
        this.f49397d = interfaceC5005Cs0Arr;
        this.f49398e = interfaceC5063Ds0Arr;
        this.f49399f = interfaceC5121Es0Arr;
        this.f49400g = interfaceC5237Gs0Arr;
        this.f49401h = interfaceC8739oKArr;
        this.f49402i = interfaceC10104wZArr;
        this.f49403j = interfaceC10438yZArr;
        this.f49404k = interfaceC10605zZArr;
        this.f49405l = azArr;
        this.f49406m = bzArr;
        this.f49407n = interfaceC10271xZArr;
        this.f49408o = czArr;
        this.f49409p = dzArr;
        this.f49410q = ezArr;
        this.f49411r = fzArr;
        this.f49412s = interfaceC7339fxArr;
        this.f49413t = interfaceC8005jxArr;
    }

    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.L0 l02, com.android.tools.r8.shaking.J j10) {
        int ordinal = j10.ordinal();
        int i10 = 0;
        if (ordinal == 0) {
            InterfaceC5005Cs0[] interfaceC5005Cs0Arr = this.f49397d;
            int length = interfaceC5005Cs0Arr.length;
            while (i10 < length) {
                interfaceC5005Cs0Arr[i10].a(c4554l1, aVar, h52);
                i10++;
            }
            return;
        }
        if (ordinal == 1) {
            InterfaceC5005Cs0[] interfaceC5005Cs0Arr2 = this.f49397d;
            int length2 = interfaceC5005Cs0Arr2.length;
            while (i10 < length2) {
                interfaceC5005Cs0Arr2[i10].b(aVar, h52);
                i10++;
            }
            return;
        }
        if (ordinal == 2) {
            InterfaceC5005Cs0[] interfaceC5005Cs0Arr3 = this.f49397d;
            int length3 = interfaceC5005Cs0Arr3.length;
            while (i10 < length3) {
                interfaceC5005Cs0Arr3[i10].a(c4554l1, aVar, h52, l02);
                i10++;
            }
            return;
        }
        if (ordinal != 3) {
            throw new C5417Jv0();
        }
        InterfaceC5005Cs0[] interfaceC5005Cs0Arr4 = this.f49397d;
        int length4 = interfaceC5005Cs0Arr4.length;
        while (i10 < length4) {
            interfaceC5005Cs0Arr4[i10].a(aVar, h52);
            i10++;
        }
    }
}
