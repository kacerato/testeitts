package org.eclipse.jdt.internal.core.builder;

public class StringSet {
    public int elementSize = 0;
    public int threshold;
    public String[] values;

    public StringSet(int i10) {
        this.threshold = i10;
        int i11 = (int) (i10 * 1.5f);
        this.values = new String[i10 == i11 ? i11 + 1 : i11];
    }

    private void rehash() {
        StringSet stringSet = new StringSet(this.elementSize * 2);
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.values = stringSet.values;
                this.elementSize = stringSet.elementSize;
                this.threshold = stringSet.threshold;
                return;
            } else {
                String str = this.values[length];
                if (str != null) {
                    stringSet.add(str);
                }
            }
        }
    }

    public boolean add(String str) {
        int length = this.values.length;
        int hashCode = (str.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            String[] strArr = this.values;
            String str2 = strArr[hashCode];
            if (str2 == null) {
                strArr[hashCode] = str;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return true;
            }
            if (str.equals(str2)) {
                return false;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void clear() {
        int length = this.values.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            }
            this.values[length] = null;
        }
    }

    public boolean includes(String str) {
        int length = this.values.length;
        int hashCode = (str.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            String str2 = this.values[hashCode];
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public String toString() {
        int length = this.values.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = this.values[i10];
            if (str2 != null) {
                str = String.valueOf(str) + str2 + "\n";
            }
        }
        return str;
    }
}
