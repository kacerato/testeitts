package com.android.dx.rop.code;

import b3.s;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.type.Type;
import com.android.dx.rop.type.TypeBearer;
import com.android.dx.util.ToHuman;
import java.util.HashMap;

public final class RegisterSpec implements TypeBearer, ToHuman, Comparable<RegisterSpec> {
    public static final String PREFIX = "v";
    private final LocalItem local;
    private final int reg;
    private final TypeBearer type;
    private static final HashMap<Object, RegisterSpec> theInterns = new HashMap<>(1000);
    private static final ForComparison theInterningItem = new ForComparison();

    public static class ForComparison {
        private LocalItem local;
        private int reg;
        private TypeBearer type;

        private ForComparison() {
        }

        public boolean equals(Object obj) {
            if (obj instanceof RegisterSpec) {
                return ((RegisterSpec) obj).equals(this.reg, this.type, this.local);
            }
            return false;
        }

        public int hashCode() {
            return RegisterSpec.hashCodeOf(this.reg, this.type, this.local);
        }

        public void set(int i10, TypeBearer typeBearer, LocalItem localItem) {
            this.reg = i10;
            this.type = typeBearer;
            this.local = localItem;
        }

        public RegisterSpec toRegisterSpec() {
            return new RegisterSpec(this.reg, this.type, this.local);
        }
    }

    public static void clearInternTable() {
        theInterns.clear();
    }

    public static int hashCodeOf(int i10, TypeBearer typeBearer, LocalItem localItem) {
        return ((((localItem != null ? localItem.hashCode() : 0) * 31) + typeBearer.hashCode()) * 31) + i10;
    }

    private static RegisterSpec intern(int i10, TypeBearer typeBearer, LocalItem localItem) {
        HashMap<Object, RegisterSpec> hashMap = theInterns;
        synchronized (hashMap) {
            try {
                ForComparison forComparison = theInterningItem;
                forComparison.set(i10, typeBearer, localItem);
                RegisterSpec registerSpec = hashMap.get(forComparison);
                if (registerSpec != null) {
                    return registerSpec;
                }
                RegisterSpec registerSpec2 = forComparison.toRegisterSpec();
                hashMap.put(registerSpec2, registerSpec2);
                return registerSpec2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static RegisterSpec make(int i10, TypeBearer typeBearer) {
        return intern(i10, typeBearer, null);
    }

    public static RegisterSpec makeLocalOptional(int i10, TypeBearer typeBearer, LocalItem localItem) {
        return intern(i10, typeBearer, localItem);
    }

    public static String regString(int i10) {
        return "v" + i10;
    }

    private String toString0(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(40);
        stringBuffer.append(regString());
        stringBuffer.append(s.f32937c);
        LocalItem localItem = this.local;
        if (localItem != null) {
            stringBuffer.append(localItem.toString());
        }
        Type type = this.type.getType();
        stringBuffer.append((Object) type);
        if (type != this.type) {
            stringBuffer.append("=");
            if (z10) {
                TypeBearer typeBearer = this.type;
                if (typeBearer instanceof CstString) {
                    stringBuffer.append(((CstString) typeBearer).toQuoted());
                }
            }
            if (z10) {
                TypeBearer typeBearer2 = this.type;
                if (typeBearer2 instanceof Constant) {
                    stringBuffer.append(typeBearer2.toHuman());
                }
            }
            stringBuffer.append((Object) this.type);
        }
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RegisterSpec)) {
            if (!(obj instanceof ForComparison)) {
                return false;
            }
            ForComparison forComparison = (ForComparison) obj;
            return equals(forComparison.reg, forComparison.type, forComparison.local);
        }
        RegisterSpec registerSpec = (RegisterSpec) obj;
        return equals(registerSpec.reg, registerSpec.type, registerSpec.local);
    }

    public boolean equalsUsingSimpleType(RegisterSpec registerSpec) {
        return matchesVariable(registerSpec) && this.reg == registerSpec.reg;
    }

    @Override
    public final int getBasicFrameType() {
        return this.type.getBasicFrameType();
    }

    @Override
    public final int getBasicType() {
        return this.type.getBasicType();
    }

    public int getCategory() {
        return this.type.getType().getCategory();
    }

    @Override
    public TypeBearer getFrameType() {
        return this.type.getFrameType();
    }

    public LocalItem getLocalItem() {
        return this.local;
    }

    public int getNextReg() {
        return this.reg + getCategory();
    }

    public int getReg() {
        return this.reg;
    }

    @Override
    public Type getType() {
        return this.type.getType();
    }

    public TypeBearer getTypeBearer() {
        return this.type;
    }

    public int hashCode() {
        return hashCodeOf(this.reg, this.type, this.local);
    }

    public RegisterSpec intersect(RegisterSpec registerSpec, boolean z10) {
        TypeBearer type;
        if (this == registerSpec) {
            return this;
        }
        if (registerSpec == null || this.reg != registerSpec.getReg()) {
            return null;
        }
        LocalItem localItem = this.local;
        LocalItem localItem2 = (localItem == null || !localItem.equals(registerSpec.getLocalItem())) ? null : this.local;
        boolean z11 = localItem2 == this.local;
        if ((z10 && !z11) || (type = getType()) != registerSpec.getType()) {
            return null;
        }
        if (this.type.equals(registerSpec.getTypeBearer())) {
            type = this.type;
        }
        if (type == this.type && z11) {
            return this;
        }
        int i10 = this.reg;
        return localItem2 == null ? make(i10, type) : make(i10, type, localItem2);
    }

    public boolean isCategory1() {
        return this.type.getType().isCategory1();
    }

    public boolean isCategory2() {
        return this.type.getType().isCategory2();
    }

    @Override
    public final boolean isConstant() {
        return false;
    }

    public boolean isEvenRegister() {
        return (getReg() & 1) == 0;
    }

    public boolean matchesVariable(RegisterSpec registerSpec) {
        if (registerSpec == null || !this.type.getType().equals(registerSpec.type.getType())) {
            return false;
        }
        LocalItem localItem = this.local;
        LocalItem localItem2 = registerSpec.local;
        return localItem == localItem2 || (localItem != null && localItem.equals(localItem2));
    }

    @Override
    public String toHuman() {
        return toString0(true);
    }

    public String toString() {
        return toString0(false);
    }

    public RegisterSpec withLocalItem(LocalItem localItem) {
        LocalItem localItem2 = this.local;
        return (localItem2 == localItem || (localItem2 != null && localItem2.equals(localItem))) ? this : makeLocalOptional(this.reg, this.type, localItem);
    }

    public RegisterSpec withOffset(int i10) {
        return i10 == 0 ? this : withReg(this.reg + i10);
    }

    public RegisterSpec withReg(int i10) {
        return this.reg == i10 ? this : makeLocalOptional(i10, this.type, this.local);
    }

    public RegisterSpec withSimpleType() {
        TypeBearer typeBearer = this.type;
        Type type = typeBearer instanceof Type ? (Type) typeBearer : typeBearer.getType();
        if (type.isUninitialized()) {
            type = type.getInitializedType();
        }
        return type == typeBearer ? this : makeLocalOptional(this.reg, type, this.local);
    }

    public RegisterSpec withType(TypeBearer typeBearer) {
        return makeLocalOptional(this.reg, typeBearer, this.local);
    }

    private RegisterSpec(int i10, TypeBearer typeBearer, LocalItem localItem) {
        if (i10 < 0) {
            throw new IllegalArgumentException("reg < 0");
        }
        if (typeBearer != null) {
            this.reg = i10;
            this.type = typeBearer;
            this.local = localItem;
            return;
        }
        throw new NullPointerException("type == null");
    }

    public static RegisterSpec make(int i10, TypeBearer typeBearer, LocalItem localItem) {
        if (localItem != null) {
            return intern(i10, typeBearer, localItem);
        }
        throw new NullPointerException("local  == null");
    }

    @Override
    public int compareTo(RegisterSpec registerSpec) {
        int i10 = this.reg;
        int i11 = registerSpec.reg;
        if (i10 < i11) {
            return -1;
        }
        if (i10 > i11) {
            return 1;
        }
        int compareTo = this.type.getType().compareTo(registerSpec.type.getType());
        if (compareTo != 0) {
            return compareTo;
        }
        LocalItem localItem = this.local;
        if (localItem == null) {
            return registerSpec.local == null ? 0 : -1;
        }
        LocalItem localItem2 = registerSpec.local;
        if (localItem2 == null) {
            return 1;
        }
        return localItem.compareTo(localItem2);
    }

    public String regString() {
        return regString(this.reg);
    }

    public boolean equals(int i10, TypeBearer typeBearer, LocalItem localItem) {
        LocalItem localItem2;
        return this.reg == i10 && this.type.equals(typeBearer) && ((localItem2 = this.local) == localItem || (localItem2 != null && localItem2.equals(localItem)));
    }
}
