package com.android.dx.rop.code;

import com.android.dx.rop.type.StdTypeList;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeList;
import com.android.dx.util.Hex;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class Rop {
    public static final int BRANCH_GOTO = 3;
    public static final int BRANCH_IF = 4;
    public static final int BRANCH_MAX = 6;
    public static final int BRANCH_MIN = 1;
    public static final int BRANCH_NONE = 1;
    public static final int BRANCH_RETURN = 2;
    public static final int BRANCH_SWITCH = 5;
    public static final int BRANCH_THROW = 6;
    private final int branchingness;
    private final TypeList exceptions;
    private final boolean isCallLike;
    private final String nickname;
    private final int opcode;
    private final Type result;
    private final TypeList sources;

    public Rop(int i10, Type type, TypeList typeList, TypeList typeList2, int i11, boolean z10, String str) {
        if (type == null) {
            throw new NullPointerException("result == null");
        }
        if (typeList == null) {
            throw new NullPointerException("sources == null");
        }
        if (typeList2 == null) {
            throw new NullPointerException("exceptions == null");
        }
        if (i11 >= 1 && i11 <= 6) {
            if (typeList2.size() != 0 && i11 != 6) {
                throw new IllegalArgumentException("exceptions / branchingness mismatch");
            }
            this.opcode = i10;
            this.result = type;
            this.sources = typeList;
            this.exceptions = typeList2;
            this.branchingness = i11;
            this.isCallLike = z10;
            this.nickname = str;
            return;
        }
        throw new IllegalArgumentException("invalid branchingness: " + i11);
    }

    public final boolean canThrow() {
        return this.exceptions.size() != 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rop)) {
            return false;
        }
        Rop rop = (Rop) obj;
        return this.opcode == rop.opcode && this.branchingness == rop.branchingness && this.result == rop.result && this.sources.equals(rop.sources) && this.exceptions.equals(rop.exceptions);
    }

    public int getBranchingness() {
        return this.branchingness;
    }

    public TypeList getExceptions() {
        return this.exceptions;
    }

    public String getNickname() {
        String str = this.nickname;
        return str != null ? str : toString();
    }

    public int getOpcode() {
        return this.opcode;
    }

    public Type getResult() {
        return this.result;
    }

    public TypeList getSources() {
        return this.sources;
    }

    public int hashCode() {
        return (((((((this.opcode * 31) + this.branchingness) * 31) + this.result.hashCode()) * 31) + this.sources.hashCode()) * 31) + this.exceptions.hashCode();
    }

    public boolean isCallLike() {
        return this.isCallLike;
    }

    public boolean isCommutative() {
        int i10 = this.opcode;
        if (i10 == 14 || i10 == 16) {
            return true;
        }
        switch (i10) {
            case 20:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append("Rop{");
        stringBuffer.append(RegOps.opName(this.opcode));
        if (this.result != Type.VOID) {
            stringBuffer.append(" ");
            stringBuffer.append((Object) this.result);
        } else {
            stringBuffer.append(" .");
        }
        stringBuffer.append(" <-");
        int size = this.sources.size();
        if (size == 0) {
            stringBuffer.append(" .");
        } else {
            for (int i10 = 0; i10 < size; i10++) {
                stringBuffer.append(C15883c.f126249O);
                stringBuffer.append((Object) this.sources.getType(i10));
            }
        }
        if (this.isCallLike) {
            stringBuffer.append(" call");
        }
        int size2 = this.exceptions.size();
        if (size2 != 0) {
            stringBuffer.append(" throws");
            for (int i11 = 0; i11 < size2; i11++) {
                stringBuffer.append(C15883c.f126249O);
                if (this.exceptions.getType(i11) == Type.THROWABLE) {
                    stringBuffer.append("<any>");
                } else {
                    stringBuffer.append((Object) this.exceptions.getType(i11));
                }
            }
        } else {
            int i12 = this.branchingness;
            if (i12 == 1) {
                stringBuffer.append(" flows");
            } else if (i12 == 2) {
                stringBuffer.append(" returns");
            } else if (i12 == 3) {
                stringBuffer.append(" gotos");
            } else if (i12 == 4) {
                stringBuffer.append(" ifs");
            } else if (i12 != 5) {
                stringBuffer.append(" " + Hex.u1(this.branchingness));
            } else {
                stringBuffer.append(" switches");
            }
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    public Rop(int i10, Type type, TypeList typeList, TypeList typeList2, int i11, String str) {
        this(i10, type, typeList, typeList2, i11, false, str);
    }

    public Rop(int i10, Type type, TypeList typeList, int i11, String str) {
        this(i10, type, typeList, StdTypeList.EMPTY, i11, false, str);
    }

    public Rop(int i10, Type type, TypeList typeList, String str) {
        this(i10, type, typeList, StdTypeList.EMPTY, 1, false, str);
    }

    public Rop(int i10, Type type, TypeList typeList, TypeList typeList2, String str) {
        this(i10, type, typeList, typeList2, 6, false, str);
    }

    public Rop(int i10, TypeList typeList, TypeList typeList2) {
        this(i10, Type.VOID, typeList, typeList2, 6, true, null);
    }
}
