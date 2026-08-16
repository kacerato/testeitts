package hm;

import java.io.PrintStream;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.util.test.TestFailedException;

public abstract class c implements e {

    public interface a {
        void a() throws Exception;
    }

    public static void q(e eVar) {
        r(eVar, System.out);
    }

    public static void r(e eVar, PrintStream printStream) {
        i perform = eVar.perform();
        if (perform.a() != null) {
            perform.a().printStackTrace(printStream);
        }
        printStream.println(perform);
    }

    public static void s(e[] eVarArr) {
        t(eVarArr, System.out);
    }

    public static void t(e[] eVarArr, PrintStream printStream) {
        Vector vector = new Vector();
        for (int i10 = 0; i10 != eVarArr.length; i10++) {
            i perform = eVarArr[i10].perform();
            if (!perform.b()) {
                vector.addElement(perform);
            }
            if (perform.a() != null) {
                perform.a().printStackTrace(printStream);
            }
            printStream.println(perform);
        }
        printStream.println("-----");
        if (vector.isEmpty()) {
            printStream.println("All tests successful.");
            return;
        }
        printStream.println("Completed with " + vector.size() + " FAILURES:");
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            PrintStream printStream2 = System.out;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("=>  ");
            sb2.append(elements.nextElement());
            printStream2.println(sb2.toString());
        }
    }

    public boolean a(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        return org.bouncycastle.util.a.f(bArr, i10, i11, bArr2, i12, i13);
    }

    public boolean b(byte[] bArr, byte[] bArr2) {
        return org.bouncycastle.util.a.g(bArr, bArr2);
    }

    public boolean c(byte[][] bArr, byte[][] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (!b(bArr[i10], bArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public void d(String str) {
        throw new TestFailedException(d.c(this, str));
    }

    public void e(String str, Object obj, Object obj2) {
        throw new TestFailedException(d.d(this, str, obj, obj2));
    }

    public void f(String str, Throwable th2) {
        throw new TestFailedException(d.e(this, str, th2));
    }

    public void g(int i10, int i11) {
        if (i10 != i11) {
            throw new TestFailedException(d.c(this, "no message"));
        }
    }

    @Override
    public abstract String getName();

    public void h(long j10, long j11) {
        if (j10 != j11) {
            throw new TestFailedException(d.c(this, "no message"));
        }
    }

    public void i(Object obj, Object obj2) {
        if (!obj.equals(obj2)) {
            throw new TestFailedException(d.c(this, "no message"));
        }
    }

    public void j(String str, long j10, long j11) {
        if (j10 != j11) {
            throw new TestFailedException(d.c(this, str));
        }
    }

    public void k(String str, Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return;
        }
        if (obj == null) {
            throw new TestFailedException(d.c(this, str));
        }
        if (obj2 == null) {
            throw new TestFailedException(d.c(this, str));
        }
        if (!obj.equals(obj2)) {
            throw new TestFailedException(d.c(this, str));
        }
    }

    public void l(String str, boolean z10, boolean z11) {
        if (z10 != z11) {
            throw new TestFailedException(d.c(this, str));
        }
    }

    public void m(boolean z10, boolean z11) {
        if (z10 != z11) {
            throw new TestFailedException(d.c(this, "no message"));
        }
    }

    public void n(String str, boolean z10) {
        if (!z10) {
            throw new TestFailedException(d.c(this, str));
        }
    }

    public void o(boolean z10) {
        if (!z10) {
            throw new TestFailedException(d.c(this, "no message"));
        }
    }

    public abstract void p() throws Exception;

    @Override
    public i perform() {
        try {
            p();
            return u();
        } catch (TestFailedException e10) {
            return e10.getResult();
        } catch (Exception e11) {
            return d.e(this, "Exception: " + ((Object) e11), e11);
        }
    }

    public final i u() {
        return d.g(this, "Okay");
    }

    public Exception v(String str, String str2, a aVar) {
        try {
            aVar.a();
            d(str);
            return null;
        } catch (Exception e10) {
            if (str != null) {
                n(e10.getMessage(), e10.getMessage().indexOf(str) >= 0);
            }
            o(e10.getClass().getName().indexOf(str2) >= 0);
            return e10;
        }
    }
}
