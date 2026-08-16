package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.H;

@f
@v2.b
public final class b {

    @v2.b
    public static class a extends AbstractList<Byte> implements RandomAccess, Serializable {

        public static final long f67007e = 0;

        public final byte[] f67008b;

        public final int f67009c;

        public final int f67010d;

        public a(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return (obj instanceof Byte) && b.i(this.f67008b, ((Byte) obj).byteValue(), this.f67009c, this.f67010d) != -1;
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return super.equals(obj);
            }
            a aVar = (a) obj;
            int size = size();
            if (aVar.size() != size) {
                return false;
            }
            for (int i10 = 0; i10 < size; i10++) {
                if (this.f67008b[this.f67009c + i10] != aVar.f67008b[aVar.f67009c + i10]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f67009c; i11 < this.f67010d; i11++) {
                i10 = (i10 * 31) + b.g(this.f67008b[i11]);
            }
            return i10;
        }

        @Override
        public int indexOf(@CheckForNull Object obj) {
            int i10;
            if (!(obj instanceof Byte) || (i10 = b.i(this.f67008b, ((Byte) obj).byteValue(), this.f67009c, this.f67010d)) < 0) {
                return -1;
            }
            return i10 - this.f67009c;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public Byte get(int i10) {
            H.C(i10, size());
            return Byte.valueOf(this.f67008b[this.f67009c + i10]);
        }

        @Override
        public Byte set(int i10, Byte b10) {
            H.C(i10, size());
            byte[] bArr = this.f67008b;
            int i11 = this.f67009c;
            byte b11 = bArr[i11 + i10];
            bArr[i11 + i10] = ((Byte) H.E(b10)).byteValue();
            return Byte.valueOf(b11);
        }

        public byte[] l() {
            return Arrays.copyOfRange(this.f67008b, this.f67009c, this.f67010d);
        }

        @Override
        public int lastIndexOf(@CheckForNull Object obj) {
            int l10;
            if (!(obj instanceof Byte) || (l10 = b.l(this.f67008b, ((Byte) obj).byteValue(), this.f67009c, this.f67010d)) < 0) {
                return -1;
            }
            return l10 - this.f67009c;
        }

        @Override
        public int size() {
            return this.f67010d - this.f67009c;
        }

        @Override
        public List<Byte> subList(int i10, int i11) {
            H.f0(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            byte[] bArr = this.f67008b;
            int i12 = this.f67009c;
            return new a(bArr, i10 + i12, i12 + i11);
        }

        @Override
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
            sb2.append('[');
            sb2.append((int) this.f67008b[this.f67009c]);
            int i10 = this.f67009c;
            while (true) {
                i10++;
                if (i10 >= this.f67010d) {
                    sb2.append(JavaElement.JEM_TYPE_PARAMETER);
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append((int) this.f67008b[i10]);
            }
        }

        public a(byte[] bArr, int i10, int i11) {
            this.f67008b = bArr;
            this.f67009c = i10;
            this.f67010d = i11;
        }
    }

    public static List<Byte> c(byte... bArr) {
        return bArr.length == 0 ? Collections.emptyList() : new a(bArr);
    }

    public static byte[] d(byte[]... bArr) {
        int i10 = 0;
        for (byte[] bArr2 : bArr) {
            i10 += bArr2.length;
        }
        byte[] bArr3 = new byte[i10];
        int i11 = 0;
        for (byte[] bArr4 : bArr) {
            System.arraycopy(bArr4, 0, bArr3, i11, bArr4.length);
            i11 += bArr4.length;
        }
        return bArr3;
    }

    public static boolean e(byte[] bArr, byte b10) {
        for (byte b11 : bArr) {
            if (b11 == b10) {
                return true;
            }
        }
        return false;
    }

    public static byte[] f(byte[] bArr, int i10, int i11) {
        H.k(i10 >= 0, "Invalid minLength: %s", i10);
        H.k(i11 >= 0, "Invalid padding: %s", i11);
        return bArr.length < i10 ? Arrays.copyOf(bArr, i10 + i11) : bArr;
    }

    public static int g(byte b10) {
        return b10;
    }

    public static int h(byte[] bArr, byte b10) {
        return i(bArr, b10, 0, bArr.length);
    }

    public static int i(byte[] bArr, byte b10, int i10, int i11) {
        while (i10 < i11) {
            if (bArr[i10] == b10) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int j(byte[] bArr, byte[] bArr2) {
        H.F(bArr, "array");
        H.F(bArr2, TypedValues.AttributesType.S_TARGET);
        if (bArr2.length == 0) {
            return 0;
        }
        int i10 = 0;
        while (i10 < (bArr.length - bArr2.length) + 1) {
            for (int i11 = 0; i11 < bArr2.length; i11++) {
                if (bArr[i10 + i11] != bArr2[i11]) {
                    break;
                }
            }
            return i10;
        }
        return -1;
    }

    public static int k(byte[] bArr, byte b10) {
        return l(bArr, b10, 0, bArr.length);
    }

    public static int l(byte[] bArr, byte b10, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            if (bArr[i12] == b10) {
                return i12;
            }
        }
        return -1;
    }

    public static void m(byte[] bArr) {
        H.E(bArr);
        n(bArr, 0, bArr.length);
    }

    public static void n(byte[] bArr, int i10, int i11) {
        H.E(bArr);
        H.f0(i10, i11, bArr.length);
        for (int i12 = i11 - 1; i10 < i12; i12--) {
            byte b10 = bArr[i10];
            bArr[i10] = bArr[i12];
            bArr[i12] = b10;
            i10++;
        }
    }

    public static byte[] o(Collection<? extends Number> collection) {
        if (collection instanceof a) {
            return ((a) collection).l();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = ((Number) H.E(array[i10])).byteValue();
        }
        return bArr;
    }
}
