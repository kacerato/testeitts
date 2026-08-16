package Pl;

import java.util.Enumeration;
import java.util.Vector;

public class m {
    public static e[] a(e[] eVarArr) {
        if (eVarArr == null) {
            return null;
        }
        e[] eVarArr2 = new e[eVarArr.length];
        System.arraycopy(eVarArr, 0, eVarArr2, 0, eVarArr.length);
        return eVarArr2;
    }

    public static i[] b(i[] iVarArr) {
        if (iVarArr == null) {
            return null;
        }
        i[] iVarArr2 = new i[iVarArr.length];
        System.arraycopy(iVarArr, 0, iVarArr2, 0, iVarArr.length);
        return iVarArr2;
    }

    public static j[] c(j[] jVarArr) {
        if (jVarArr == null) {
            return null;
        }
        j[] jVarArr2 = new j[jVarArr.length];
        System.arraycopy(jVarArr, 0, jVarArr2, 0, jVarArr.length);
        return jVarArr2;
    }

    public static n[] d(n[] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        n[] nVarArr2 = new n[nVarArr.length];
        System.arraycopy(nVarArr, 0, nVarArr2, 0, nVarArr.length);
        return nVarArr2;
    }

    public static Vector[] e(Vector[] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[] vectorArr2 = new Vector[vectorArr.length];
        for (int i10 = 0; i10 != vectorArr.length; i10++) {
            vectorArr2[i10] = new Vector();
            Enumeration elements = vectorArr[i10].elements();
            while (elements.hasMoreElements()) {
                vectorArr2[i10].addElement(elements.nextElement());
            }
        }
        return vectorArr2;
    }

    public static byte[][] f(byte[][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][] bArr2 = new byte[bArr.length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr2[i10] = org.bouncycastle.util.a.p(bArr[i10]);
        }
        return bArr2;
    }

    public static n[][] g(n[][] nVarArr) {
        if (nVarArr == null) {
            return null;
        }
        n[][] nVarArr2 = new n[nVarArr.length];
        for (int i10 = 0; i10 != nVarArr.length; i10++) {
            nVarArr2[i10] = d(nVarArr[i10]);
        }
        return nVarArr2;
    }

    public static Vector[][] h(Vector[][] vectorArr) {
        if (vectorArr == null) {
            return null;
        }
        Vector[][] vectorArr2 = new Vector[vectorArr.length];
        for (int i10 = 0; i10 != vectorArr.length; i10++) {
            vectorArr2[i10] = e(vectorArr[i10]);
        }
        return vectorArr2;
    }

    public static byte[][][] i(byte[][][] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[][][] bArr2 = new byte[bArr.length][];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            bArr2[i10] = f(bArr[i10]);
        }
        return bArr2;
    }
}
