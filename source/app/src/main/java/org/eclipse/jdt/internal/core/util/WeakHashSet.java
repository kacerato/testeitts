package org.eclipse.jdt.internal.core.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import org.apache.commons.math3.geometry.VectorFormat;

public class WeakHashSet {
    public int elementSize;
    ReferenceQueue referenceQueue;
    int threshold;
    HashableWeakReference[] values;

    public static class HashableWeakReference extends WeakReference {
        public int hashCode;

        public HashableWeakReference(Object obj, ReferenceQueue referenceQueue) {
            super(obj, referenceQueue);
            this.hashCode = obj.hashCode();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean equals(Object obj) {
            if (!(obj instanceof HashableWeakReference)) {
                return false;
            }
            T t10 = get();
            Object obj2 = ((HashableWeakReference) obj).get();
            return t10 == 0 ? obj2 == null : t10.equals(obj2);
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            T t10 = get();
            if (t10 == 0) {
                return "[hashCode=" + this.hashCode + "] <referent was garbage collected>";
            }
            return "[hashCode=" + this.hashCode + "] " + t10.toString();
        }
    }

    public WeakHashSet() {
        this(5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addValue(HashableWeakReference hashableWeakReference) {
        T t10 = hashableWeakReference.get();
        if (t10 == 0) {
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
            if (t10.equals(hashableWeakReference2.get())) {
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
        WeakHashSet weakHashSet = new WeakHashSet(this.elementSize * 2);
        weakHashSet.referenceQueue = this.referenceQueue;
        int length = this.values.length;
        for (int i10 = 0; i10 < length; i10++) {
            HashableWeakReference hashableWeakReference = this.values[i10];
            if (hashableWeakReference != null) {
                weakHashSet.addValue(hashableWeakReference);
            }
        }
        this.values = weakHashSet.values;
        this.threshold = weakHashSet.threshold;
        this.elementSize = weakHashSet.elementSize;
    }

    public Object add(Object obj) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference[] hashableWeakReferenceArr = this.values;
            HashableWeakReference hashableWeakReference = hashableWeakReferenceArr[hashCode];
            if (hashableWeakReference == null) {
                hashableWeakReferenceArr[hashCode] = new HashableWeakReference(obj, this.referenceQueue);
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            Object obj2 = hashableWeakReference.get();
            if (obj.equals(obj2)) {
                return obj2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public boolean contains(Object obj) {
        return get(obj) != null;
    }

    public Object get(Object obj) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference hashableWeakReference = this.values[hashCode];
            if (hashableWeakReference == null) {
                return null;
            }
            Object obj2 = hashableWeakReference.get();
            if (obj.equals(obj2)) {
                return obj2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object remove(Object obj) {
        cleanupGarbageCollectedValues();
        int length = this.values.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            HashableWeakReference hashableWeakReference = this.values[hashCode];
            if (hashableWeakReference == null) {
                return null;
            }
            Object obj2 = hashableWeakReference.get();
            if (obj.equals(obj2)) {
                this.elementSize--;
                this.values[hashCode] = null;
                rehash();
                return obj2;
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
        T t10;
        StringBuffer stringBuffer = new StringBuffer("{");
        int length = this.values.length;
        for (int i10 = 0; i10 < length; i10++) {
            HashableWeakReference hashableWeakReference = this.values[i10];
            if (hashableWeakReference != null && (t10 = hashableWeakReference.get()) != 0) {
                stringBuffer.append(t10.toString());
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public WeakHashSet(int i10) {
        this.referenceQueue = new ReferenceQueue();
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        this.values = new HashableWeakReference[i10 == i11 ? i11 + 1 : i11];
    }
}
