package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;

public final class HashtableOfModule {
    public int elementSize;
    public char[][] keyTable;
    int threshold;
    public ModuleBinding[] valueTable;

    public HashtableOfModule() {
        this(3);
    }

    private void rehash() {
        HashtableOfModule hashtableOfModule = new HashtableOfModule(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfModule.keyTable;
                this.valueTable = hashtableOfModule.valueTable;
                this.threshold = hashtableOfModule.threshold;
                return;
            } else {
                char[] cArr = this.keyTable[length];
                if (cArr != null) {
                    hashtableOfModule.put(cArr, this.valueTable[length]);
                }
            }
        }
    }

    public boolean containsKey(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return false;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public ModuleBinding get(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return null;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public ModuleBinding put(char[] cArr, ModuleBinding moduleBinding) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = moduleBinding;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return moduleBinding;
            }
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                this.valueTable[hashCode] = moduleBinding;
                return moduleBinding;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int length = this.valueTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            ModuleBinding moduleBinding = this.valueTable[i10];
            if (moduleBinding != null) {
                str = String.valueOf(str) + moduleBinding.toString() + "\n";
            }
        }
        return str;
    }

    public HashtableOfModule(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new char[i11];
        this.valueTable = new ModuleBinding[i11];
    }
}
