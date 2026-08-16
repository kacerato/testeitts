package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.IOException;
import java.io.InputStream;
import java.util.function.BiPredicate;

public abstract class AbstractC10358y2 {

    public static final boolean f53922b = true;

    public int f53923a = -1;

    public static int a() {
        return 4;
    }

    public static int b() {
        return 18;
    }

    public static int c() {
        return 17;
    }

    public abstract int a(int i10, int i11, byte[] bArr, BiPredicate biPredicate);

    public abstract boolean a(byte[] bArr, int i10, int i11);

    public abstract byte b(byte[] bArr, int i10, int i11);

    public abstract C10191x2 c(int i10);

    public abstract int d();

    public static AbstractC10358y2 a(C8570nJ c8570nJ, DiagnosticsHandler diagnosticsHandler) {
        if (AbstractC10358y2.class.getClassLoader().getResource("resources/new_api_database.ser") == null) {
            diagnosticsHandler.warning(new StringDiagnostic("Could not find the api database at resources/new_api_database.ser"));
            return new C10024w2();
        }
        c8570nJ.a().getClass();
        try {
            InputStream resourceAsStream = AbstractC10358y2.class.getClassLoader().getResourceAsStream("resources/new_api_database.ser");
            try {
                if (resourceAsStream == null) {
                    diagnosticsHandler.warning(new StringDiagnostic("Could not open the api database at resources/new_api_database.ser"));
                    C10024w2 c10024w2 = new C10024w2();
                    if (resourceAsStream == null) {
                        return c10024w2;
                    }
                    resourceAsStream.close();
                    return c10024w2;
                }
                C9857v2 c9857v2 = new C9857v2(AbstractC6706c8.a(resourceAsStream));
                resourceAsStream.close();
                return c9857v2;
            } finally {
            }
        } catch (IOException e10) {
            diagnosticsHandler.warning(new ExceptionDiagnostic(e10));
            return new C10024w2();
        }
    }

    public static int b(int i10) {
        return a() + (i10 * 6);
    }

    public final int b(com.android.tools.r8.graph.L2 l22) {
        int a10 = a(l22);
        if (this.f53923a == -1) {
            this.f53923a = d();
        }
        C10191x2 c10 = c((a10 * 6) + b(this.f53923a));
        c10.getClass();
        if (c10 == C10191x2.f53671c) {
            return -1;
        }
        int i10 = c10.f53673a;
        int i11 = c10.f53674b;
        if (i10 < 0) {
            if (!f53922b && i10 >= 0) {
                throw new AssertionError();
            }
            boolean z10 = C8707o8.f51173a;
            int i12 = Integer.MAX_VALUE & i10;
            if (a(i12, l22.f36562f)) {
                return i12;
            }
            return -1;
        }
        if (!f53922b && i11 <= 0) {
            throw new AssertionError();
        }
        if (this.f53923a == -1) {
            this.f53923a = d();
        }
        int i13 = this.f53923a;
        return a(a(i13) + ((1 << b()) * 6) + i10, i11, l22.f36562f, new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return AbstractC10358y2.this.a(((Integer) obj).intValue(), (byte[]) obj2);
            }
        });
    }

    public static int a(com.android.tools.r8.graph.J2 j22) {
        int b10 = 1 << (b() - 1);
        return (j22.hashCode() % b10) + b10;
    }

    public static int a(com.android.tools.r8.graph.L2 l22) {
        int c10 = 1 << (c() - 1);
        return (l22.hashCode() % c10) + c10;
    }

    public static int a(int i10) {
        return b(i10) + ((1 << c()) * 6);
    }

    public final boolean a(int i10, byte[] bArr) {
        C10191x2 c10 = c((i10 * 6) + a());
        c10.getClass();
        if (c10 == C10191x2.f53671c || bArr.length != c10.f53674b) {
            return false;
        }
        if (this.f53923a == -1) {
            this.f53923a = d();
        }
        int i11 = this.f53923a;
        return a(bArr, a(i11) + ((1 << b()) * 6) + c10.f53673a, c10.f53674b);
    }
}
