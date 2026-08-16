package org.eclipse.jdt.internal.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CharOperation;

public class WeakHashSetOfCharArray {
    public int elementSize;
    ReferenceQueue referenceQueue;
    int threshold;
    HashableWeakReference[] values;

    public static class HashableWeakReference extends WeakReference {
        public int hashCode;

        public HashableWeakReference(char[] cArr, ReferenceQueue referenceQueue) {
            super(cArr, referenceQueue);
            this.hashCode = CharOperation.hashCode(cArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            char[] cArr = (char[]) get();
            char[] cArr2 = (char[]) ((HashableWeakReference) obj).get();
            return cArr == null ? cArr2 == null : CharOperation.equals(cArr, cArr2);
        }

        public int hashCode() {
            return this.hashCode;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public String toString() {
            char[] cArr = (char[]) get();
            if (cArr == null) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] \"" + new String(cArr) + '\"';
        }
    }

    public WeakHashSetOfCharArray() {
        this(5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addValue(HashableWeakReference hashableWeakReference) {
        char[] cArr = (char[]) hashableWeakReference.get();
        if (cArr == null) {
            return;
        }
        int length = this.values.length;
        int i10 = (hashableWeakReference.hashCode & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference[] hashableWeakReferenceArr = this.values;
            HashableWeakReference hashableWeakReference2 = hashableWeakReferenceArr[i10];
            if (hashableWeakReference2 == null) {
                hashableWeakReferenceArr[i10] = hashableWeakReference;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                    return;
                }
                return;
            }
            if (CharOperation.equals(cArr, (char[]) hashableWeakReference2.get())) {
                return;
            }
            i10++;
            if (i10 == length) {
                i10 = 0;
            }
        }
    }

    private void cleanupGarbageCollectedValues() {
        HashableWeakReference[] hashableWeakReferenceArr;
        while (true) {
            HashableWeakReference hashableWeakReference = (HashableWeakReference) this.referenceQueue.poll();
            if (hashableWeakReference == null) {
                return;
            }
            int i10 = hashableWeakReference.hashCode;
            int length = this.values.length;
            int i11 = (Integer.MAX_VALUE & i10) % length;
            while (true) {
                HashableWeakReference hashableWeakReference2 = this.values[i11];
                if (hashableWeakReference2 != null) {
                    if (hashableWeakReference2 == hashableWeakReference) {
                        int i12 = i11;
                        while (true) {
                            hashableWeakReferenceArr = this.values;
                            int i13 = (i12 + 1) % length;
                            HashableWeakReference hashableWeakReference3 = hashableWeakReferenceArr[i13];
                            if (hashableWeakReference3 == null || hashableWeakReference3.hashCode != i10) {
                                break;
                            } else {
                                i12 = i13;
                            }
                        }
                        hashableWeakReferenceArr[i11] = hashableWeakReferenceArr[i12];
                        hashableWeakReferenceArr[i12] = null;
                        this.elementSize--;
                    } else {
                        i11++;
                        if (i11 == length) {
                            i11 = 0;
                        }
                    }
                }
            }
        }
    }

    private void rehash() {
        WeakHashSetOfCharArray weakHashSetOfCharArray = new WeakHashSetOfCharArray(this.elementSize * 2);
        weakHashSetOfCharArray.referenceQueue = this.referenceQueue;
        int length = this.values.length;
        for (int i10 = 0; i10 < length; i10++) {
            HashableWeakReference hashableWeakReference = this.values[i10];
            if (hashableWeakReference != null) {
                weakHashSetOfCharArray.addValue(hashableWeakReference);
            }
        }
        this.values = weakHashSetOfCharArray.values;
        this.threshold = weakHashSetOfCharArray.threshold;
        this.elementSize = weakHashSetOfCharArray.elementSize;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[] add(char[] cArr) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference[] hashableWeakReferenceArr = this.values;
            HashableWeakReference hashableWeakReference = hashableWeakReferenceArr[hashCode];
            if (hashableWeakReference == null) {
                hashableWeakReferenceArr[hashCode] = new HashableWeakReference(cArr, this.referenceQueue);
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return cArr;
            }
            char[] cArr2 = (char[]) hashableWeakReference.get();
            if (CharOperation.equals(cArr, cArr2)) {
                return cArr2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public boolean contains(char[] cArr) {
        return get(cArr) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[] get(char[] cArr) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference hashableWeakReference = this.values[hashCode];
            if (hashableWeakReference == null) {
                return null;
            }
            char[] cArr2 = (char[]) hashableWeakReference.get();
            if (CharOperation.equals(cArr, cArr2)) {
                return cArr2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public char[] remove(char[] cArr) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (CharOperation.hashCode(cArr) & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference hashableWeakReference = this.values[hashCode];
            if (hashableWeakReference == null) {
                return null;
            }
            char[] cArr2 = (char[]) hashableWeakReference.get();
            if (CharOperation.equals(cArr, cArr2)) {
                this.elementSize--;
                this.values[hashCode] = null;
                rehash();
                return cArr2;
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

    /* JADX WARN: Multi-variable type inference failed */
    public String toString() {
        char[] cArr;
        StringBuffer stringBuffer = new StringBuffer("{");
        int length = this.values.length;
        for (int i10 = 0; i10 < length; i10++) {
            HashableWeakReference hashableWeakReference = this.values[i10];
            if (hashableWeakReference != null && (cArr = (char[]) hashableWeakReference.get()) != null) {
                stringBuffer.append('\"');
                stringBuffer.append(cArr);
                stringBuffer.append("\", ");
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public WeakHashSetOfCharArray(int i10) {
        this.referenceQueue = new ReferenceQueue();
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        this.values = new HashableWeakReference[i10 == i11 ? i11 + 1 : i11];
    }
}
