package com.android.tools.r8.internal;

import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.IR;
import com.android.tools.r8.origin.Origin;
import java.util.ArrayList;
import java.util.function.Consumer;

public class C8767oY extends DR {
    public C8767oY(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        super(c4724u1, c5094Ef0, false, 1);
    }

    public static void b(InterfaceC10161ws0 interfaceC10161ws0) {
    }

    public final CF a(String str) {
        ArrayList arrayList;
        int i10;
        IR.a a10;
        AbstractC6907dL a11 = a(this.f39523f, str);
        CF cf2 = new CF();
        ArrayList arrayList2 = a11.c().f46749b;
        int size = arrayList2.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList2.get(i11);
            i11++;
            C7407gL d10 = ((AbstractC6907dL) obj).d();
            int b10 = a(d10, "api_level_below_or_equal").b();
            if (cf2.a(b10)) {
                IR ir = (IR) cf2.get(b10);
                C4724u1 c4724u1 = this.f39518a;
                C5094Ef0 c5094Ef0 = this.f39519b;
                if (!DR.f39517h && this.f39522e == null) {
                    throw new AssertionError();
                }
                Origin origin = this.f39522e;
                ir.getClass();
                arrayList = arrayList2;
                i10 = size;
                a10 = new IR.a(c4724u1, c5094Ef0, origin, ir.f41082a, ir.f41083b, ir.f41084c, ir.f41085d, ir.f41086e, ir.f41087f, ir.f41088g, ir.f41089h);
            } else {
                arrayList = arrayList2;
                i10 = size;
                C4724u1 c4724u12 = this.f39518a;
                C5094Ef0 c5094Ef02 = this.f39519b;
                if (!DR.f39517h && this.f39522e == null) {
                    throw new AssertionError();
                }
                a10 = IR.a(c4724u12, c5094Ef02, this.f39522e);
            }
            IR.a aVar = a10;
            DR.a(d10, aVar);
            cf2.a(b10, aVar.a());
            arrayList2 = arrayList;
            size = i10;
        }
        return cf2;
    }

    public C8600nY c(InterfaceC11677v0 interfaceC11677v0) {
        MR a10 = a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8767oY.b((InterfaceC10161ws0) obj);
            }
        }, b(interfaceC11677v0));
        CF a11 = a("common_flags");
        CF a12 = a("library_flags");
        CF a13 = a("program_flags");
        if (DR.f39517h || this.f39522e != null) {
            return new C8600nY(this.f39522e, a10, a11, a12, a13);
        }
        throw new AssertionError();
    }
}
