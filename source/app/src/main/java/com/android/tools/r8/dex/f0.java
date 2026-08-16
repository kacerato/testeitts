package com.android.tools.r8.dex;

import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.shaking.C11148c4;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.function.Function;
import mg.C14254o;

public final class f0 {

    public static final boolean f35842f = true;

    public final C4798y f35843a;

    public final C4724u1 f35844b;

    public final AbstractC5308Hz f35845c;

    public final AbstractC10992r0 f35846d;

    public final C8570nJ f35847e;

    public f0(C4798y c4798y) {
        this.f35843a = c4798y;
        this.f35844b = c4798y.b();
        this.f35845c = c4798y.v();
        this.f35846d = c4798y.s();
        this.f35847e = c4798y.E();
    }

    public static boolean a(DataEntryResource dataEntryResource, C8570nJ c8570nJ, Function function) {
        C11350o3 B10 = c8570nJ.B();
        if (B10 == null) {
            if (f35842f || c8570nJ.f50599F1.f50839Q0) {
                return false;
            }
            throw new AssertionError();
        }
        C11148c4 c11148c4 = (C11148c4) function.apply(B10);
        return c11148c4.f57212a && !C10656zq0.f(dataEntryResource.getName()).endsWith(".class") && c11148c4.a(dataEntryResource.getName());
    }

    public final DataEntryResource b(DataEntryResource dataEntryResource) {
        String name;
        if (a(dataEntryResource, this.f35847e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C11350o3) obj).c();
            }
        })) {
            e0 d0Var = dataEntryResource.getName().startsWith(C14254o.f97090b) ? new d0(this, dataEntryResource.getName()) : new Z(this, dataEntryResource.getName());
            if (!d0Var.c()) {
                name = dataEntryResource.getName();
            } else {
                if (!e0.f35834h && !d0Var.f35837c) {
                    throw new AssertionError();
                }
                name = d0Var.f35836b.toString();
            }
        } else {
            name = dataEntryResource.getName();
        }
        if (!f35842f && name == null) {
            throw new AssertionError();
        }
        byte[] a10 = a(dataEntryResource, this.f35847e, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C11350o3) obj).b();
            }
        }) ? a(dataEntryResource) : null;
        return a10 != null ? DataEntryResource.fromBytes(a10, name, dataEntryResource.getOrigin()) : !name.equals(dataEntryResource.getName()) ? dataEntryResource.withName(name) : dataEntryResource;
    }

    public final byte[] a(DataEntryResource dataEntryResource) {
        try {
            InputStream byteStream = dataEntryResource.getByteStream();
            try {
                b0 b0Var = new b0(this, new String(AbstractC6706c8.a(byteStream), Charset.defaultCharset()));
                if (b0Var.c()) {
                    if (!e0.f35834h && !b0Var.f35837c) {
                        throw new AssertionError();
                    }
                    byte[] bytes = b0Var.f35836b.toString().getBytes(Charset.defaultCharset());
                    byteStream.close();
                    return bytes;
                }
                byteStream.close();
                return null;
            } catch (Throwable th2) {
                if (byteStream != null) {
                    try {
                        byteStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (ResourceException e10) {
            this.f35847e.f50691j.error(new StringDiagnostic("Failed to open input: " + e10.getMessage(), dataEntryResource.getOrigin()));
            return null;
        } catch (Exception e11) {
            this.f35847e.f50691j.error(new ExceptionDiagnostic(e11, dataEntryResource.getOrigin()));
            return null;
        }
    }
}
