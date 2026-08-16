package com.android.tools.r8.kotlin;

import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.QC;
import java.util.function.Consumer;

public abstract class AbstractC10751b {

    public static final QC f55254a;

    static {
        int i10 = QC.f43505c;
        QC a10 = new IC().a("Lkotlin/Boolean").a("Lkotlin/Char").a("Lkotlin/Byte").a("Lkotlin/UByte").a("Lkotlin/Short;").a("Lkotlin/UShort;").a("Lkotlin/Int;").a("Lkotlin/UInt;").a("Lkotlin/Float;").a("Lkotlin/Long;").a("Lkotlin/ULong;").a("Lkotlin/Double;").a();
        final IC ic2 = new IC();
        a10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10751b.a(IC.this, (String) obj);
            }
        });
        ic2.a("Lkotlin/Unit;");
        ic2.a("Lkotlin/Any;");
        ic2.a("Lkotlin/Array;");
        ic2.a("Lkotlin/Function;");
        ic2.a("Lkotlin/KFunction;");
        f55254a = ic2.a();
    }

    public static void a(IC ic2, String str) {
        ic2.a(str);
        ic2.a(str.substring(0, str.length() - 1) + "Array;");
    }
}
