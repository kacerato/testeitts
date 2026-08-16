package Bf;

import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14410f0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,158:1\n37#2,2:159\n*S KotlinDebug\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n*L\n131#1:159,2\n*E\n"})
public final class g {

    public static final int f1719a = 1;

    public static final int f1720b = 2;

    public static final f a(a aVar) {
        return (f) aVar.getClass().getAnnotation(f.class);
    }

    public static final int b(a aVar) {
        try {
            Field declaredField = aVar.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(aVar);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @InterfaceC14410f0
    @InterfaceC14422l0(version = "2.2")
    public static final int c(@NotNull a aVar) {
        int b10;
        M.p(aVar, "<this>");
        f a10 = a(aVar);
        if (a10 != null && a10.v() >= 2 && (b10 = b(aVar)) >= 0 && b10 < a10.nl().length) {
            return a10.nl()[b10];
        }
        return -1;
    }

    @Nullable
    @Lf.j(name = "getSpilledVariableFieldMapping")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final String[] d(@NotNull a aVar) {
        M.p(aVar, "<this>");
        f a10 = a(aVar);
        if (a10 == null || a10.v() < 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int b10 = b(aVar);
        int[] i10 = a10.i();
        int length = i10.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10[i11] == b10) {
                arrayList.add(a10.s()[i11]);
                arrayList.add(a10.n()[i11]);
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Nullable
    @Lf.j(name = "getStackTraceElement")
    @InterfaceC14410f0
    @InterfaceC14422l0(version = "1.3")
    public static final StackTraceElement e(@NotNull a aVar) {
        String str;
        M.p(aVar, "<this>");
        f a10 = a(aVar);
        if (a10 == null || a10.v() < 1) {
            return null;
        }
        int b10 = b(aVar);
        int i10 = b10 < 0 ? -1 : a10.l()[b10];
        String b11 = j.f1721a.b(aVar);
        if (b11 == null) {
            str = a10.c();
        } else {
            str = b11 + '/' + a10.c();
        }
        return new StackTraceElement(str, a10.m(), a10.f(), i10);
    }
}
