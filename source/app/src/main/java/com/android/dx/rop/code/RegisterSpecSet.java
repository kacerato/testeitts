package com.android.dx.rop.code;

import com.android.dx.util.MutabilityControl;
import org.eclipse.jdt.internal.core.JavaElement;

public final class RegisterSpecSet extends MutabilityControl {
    public static final RegisterSpecSet EMPTY = new RegisterSpecSet(0);
    private int size;
    private final RegisterSpec[] specs;

    public RegisterSpecSet(int i10) {
        super(i10 != 0);
        this.specs = new RegisterSpec[i10];
        this.size = 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RegisterSpecSet)) {
            return false;
        }
        RegisterSpecSet registerSpecSet = (RegisterSpecSet) obj;
        RegisterSpec[] registerSpecArr = registerSpecSet.specs;
        int length = this.specs.length;
        if (length != registerSpecArr.length || size() != registerSpecSet.size()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            RegisterSpec registerSpec = this.specs[i10];
            Object obj2 = registerSpecArr[i10];
            if (registerSpec != obj2 && (registerSpec == null || !registerSpec.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public RegisterSpec findMatchingLocal(RegisterSpec registerSpec) {
        int length = this.specs.length;
        for (int i10 = 0; i10 < length; i10++) {
            RegisterSpec registerSpec2 = this.specs[i10];
            if (registerSpec2 != null && registerSpec.matchesVariable(registerSpec2)) {
                return registerSpec2;
            }
        }
        return null;
    }

    public RegisterSpec get(int i10) {
        try {
            return this.specs[i10];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public int getMaxSize() {
        return this.specs.length;
    }

    public int hashCode() {
        int length = this.specs.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            RegisterSpec registerSpec = this.specs[i11];
            i10 = (i10 * 31) + (registerSpec == null ? 0 : registerSpec.hashCode());
        }
        return i10;
    }

    public void intersect(RegisterSpecSet registerSpecSet, boolean z10) {
        RegisterSpec intersect;
        throwIfImmutable();
        RegisterSpec[] registerSpecArr = registerSpecSet.specs;
        int length = this.specs.length;
        int min = Math.min(length, registerSpecArr.length);
        this.size = -1;
        for (int i10 = 0; i10 < min; i10++) {
            RegisterSpec registerSpec = this.specs[i10];
            if (registerSpec != null && (intersect = registerSpec.intersect(registerSpecArr[i10], z10)) != registerSpec) {
                this.specs[i10] = intersect;
            }
        }
        while (min < length) {
            this.specs[min] = null;
            min++;
        }
    }

    public RegisterSpec localItemToSpec(LocalItem localItem) {
        int length = this.specs.length;
        for (int i10 = 0; i10 < length; i10++) {
            RegisterSpec registerSpec = this.specs[i10];
            if (registerSpec != null && localItem.equals(registerSpec.getLocalItem())) {
                return registerSpec;
            }
        }
        return null;
    }

    public RegisterSpecSet mutableCopy() {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length);
        for (int i10 = 0; i10 < length; i10++) {
            RegisterSpec registerSpec = this.specs[i10];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec);
            }
        }
        registerSpecSet.size = this.size;
        return registerSpecSet;
    }

    public void put(RegisterSpec registerSpec) {
        int i10;
        RegisterSpec registerSpec2;
        throwIfImmutable();
        if (registerSpec == null) {
            throw new NullPointerException("spec == null");
        }
        this.size = -1;
        try {
            int reg = registerSpec.getReg();
            RegisterSpec[] registerSpecArr = this.specs;
            registerSpecArr[reg] = registerSpec;
            if (reg > 0 && (registerSpec2 = registerSpecArr[reg - 1]) != null && registerSpec2.getCategory() == 2) {
                this.specs[i10] = null;
            }
            if (registerSpec.getCategory() == 2) {
                this.specs[reg + 1] = null;
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("spec.getReg() out of range");
        }
    }

    public void putAll(RegisterSpecSet registerSpecSet) {
        int maxSize = registerSpecSet.getMaxSize();
        for (int i10 = 0; i10 < maxSize; i10++) {
            RegisterSpec registerSpec = registerSpecSet.get(i10);
            if (registerSpec != null) {
                put(registerSpec);
            }
        }
    }

    public void remove(RegisterSpec registerSpec) {
        try {
            this.specs[registerSpec.getReg()] = null;
            this.size = -1;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("bogus reg");
        }
    }

    public int size() {
        int i10 = this.size;
        if (i10 >= 0) {
            return i10;
        }
        int length = this.specs.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (this.specs[i12] != null) {
                i11++;
            }
        }
        this.size = i11;
        return i11;
    }

    public String toString() {
        int length = this.specs.length;
        StringBuffer stringBuffer = new StringBuffer(length * 25);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            RegisterSpec registerSpec = this.specs[i10];
            if (registerSpec != null) {
                if (z10) {
                    stringBuffer.append(", ");
                } else {
                    z10 = true;
                }
                stringBuffer.append((Object) registerSpec);
            }
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    public RegisterSpecSet withOffset(int i10) {
        int length = this.specs.length;
        RegisterSpecSet registerSpecSet = new RegisterSpecSet(length + i10);
        for (int i11 = 0; i11 < length; i11++) {
            RegisterSpec registerSpec = this.specs[i11];
            if (registerSpec != null) {
                registerSpecSet.put(registerSpec.withOffset(i10));
            }
        }
        registerSpecSet.size = this.size;
        if (isImmutable()) {
            registerSpecSet.setImmutable();
        }
        return registerSpecSet;
    }

    public RegisterSpec get(RegisterSpec registerSpec) {
        return get(registerSpec.getReg());
    }
}
