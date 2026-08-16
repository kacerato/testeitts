package Hf;

import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.jetbrains.annotations.NotNull;
import pf.C14985q;

@t0({"SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,844:1\n14135#2,3:845\n14135#2,3:848\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nkotlin/io/encoding/Base64Kt\n*L\n786#1:845,3\n802#1:848,3\n*E\n"})
public final class c {

    @NotNull
    public static final byte[] f8434a;

    @NotNull
    public static final int[] f8435b;

    @NotNull
    public static final byte[] f8436c;

    @NotNull
    public static final int[] f8437d;

    static {
        byte[] bArr = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_aload_1, Opcodes.OPC_laload};
        f8434a = bArr;
        int[] iArr = new int[256];
        int i10 = 0;
        C14985q.T1(iArr, -1, 0, 0, 6, null);
        iArr[61] = -2;
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            iArr[bArr[i11]] = i12;
            i11++;
            i12++;
        }
        f8435b = iArr;
        byte[] bArr2 = {Opcodes.OPC_lstore_2, Opcodes.OPC_lstore_3, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_fstore_2, 70, 71, 72, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_0, Opcodes.OPC_astore_1, Opcodes.OPC_astore_2, Opcodes.OPC_astore_3, Opcodes.OPC_iastore, 80, Opcodes.OPC_fastore, Opcodes.OPC_dastore, Opcodes.OPC_aastore, Opcodes.OPC_bastore, Opcodes.OPC_castore, Opcodes.OPC_sastore, Opcodes.OPC_pop, Opcodes.OPC_pop2, Opcodes.OPC_dup, 90, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122, 48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_aload_3, Opcodes.OPC_swap};
        f8436c = bArr2;
        int[] iArr2 = new int[256];
        C14985q.T1(iArr2, -1, 0, 0, 6, null);
        iArr2[61] = -2;
        int length2 = bArr2.length;
        int i13 = 0;
        while (i10 < length2) {
            iArr2[bArr2[i10]] = i13;
            i10++;
            i13++;
        }
        f8437d = iArr2;
    }

    public static final int[] a() {
        return f8435b;
    }

    public static final byte[] b() {
        return f8434a;
    }

    public static final int[] c() {
        return f8437d;
    }

    public static final byte[] d() {
        return f8436c;
    }

    @InterfaceC14422l0(version = "1.8")
    public static final boolean e(int i10) {
        if (i10 >= 0) {
            int[] iArr = f8435b;
            if (i10 < iArr.length && iArr[i10] != -1) {
                return true;
            }
        }
        return false;
    }
}
