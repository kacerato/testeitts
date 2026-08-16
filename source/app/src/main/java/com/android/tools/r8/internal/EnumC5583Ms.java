package com.android.tools.r8.internal;

import java.util.Optional;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public enum EnumC5583Ms implements C40<EnumC5583Ms> {
    V35(35, new byte[]{48, 51, Opcodes.OPC_saload}, 1),
    V37(37, new byte[]{48, 51, Opcodes.OPC_lstore}, 1),
    V38(38, new byte[]{48, 51, Opcodes.OPC_fstore}, 1),
    V39(39, new byte[]{48, 51, Opcodes.OPC_dstore}, 1),
    V40(40, new byte[]{48, 52, 48}, 1),
    V41(41, new byte[]{48, 52, Opcodes.OPC_daload}, 2);


    public static final boolean f42432l = true;

    public final int f42433b;

    public final byte[] f42434c;

    public final int f42435d;

    EnumC5583Ms(int i10, byte[] bArr, int i11) {
        this.f42433b = i10;
        this.f42434c = bArr;
        this.f42435d = i11;
    }

    public static EnumC5583Ms c(C2 c22) {
        switch (AbstractC5525Ls.f42092a[c22.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return V39;
            case 11:
            case 12:
                return V38;
            case 13:
            case 14:
                return V37;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
                return V35;
            default:
                throw new C5417Jv0("Unsupported api level " + ((Object) c22));
        }
    }

    public byte[] a() {
        return this.f42434c;
    }

    public boolean b() {
        return this.f42435d == 2;
    }

    @Override
    public final int compareTo(EnumC5583Ms enumC5583Ms) {
        return compareTo(enumC5583Ms);
    }

    public static Optional<EnumC5583Ms> a(int i10) {
        switch (i10) {
            case 35:
                return Optional.of(V35);
            case 36:
            default:
                return Optional.empty();
            case 37:
                return Optional.of(V37);
            case 38:
                return Optional.of(V38);
            case 39:
                return Optional.of(V39);
            case 40:
                return Optional.of(V40);
            case 41:
                return Optional.of(V41);
        }
    }

    public static Optional<EnumC5583Ms> a(char c10, char c11, char c12) {
        if (c10 != '0') {
            return Optional.empty();
        }
        for (EnumC5583Ms enumC5583Ms : (EnumC5583Ms[]) values().clone()) {
            if (!f42432l && enumC5583Ms.a()[0] != 48) {
                throw new AssertionError();
            }
            if (enumC5583Ms.a()[2] == c12 && enumC5583Ms.a()[1] == c11) {
                return Optional.of(enumC5583Ms);
            }
        }
        return Optional.empty();
    }
}
