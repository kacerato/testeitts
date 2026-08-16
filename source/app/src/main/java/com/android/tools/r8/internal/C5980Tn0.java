package com.android.tools.r8.internal;

import com.android.tools.r8.C11699z2;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxy;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedTypeReference;
import java.util.ArrayList;
import java.util.HashSet;
import org.openjdk.tools.doclint.DocLint;

public final class C5980Tn0 {

    public static final boolean f44579k = true;

    public final String f44580a;

    public final ArrayList f44581b = new ArrayList();

    public C5922Sn0 f44582c;

    public C6038Un0 f44583d;

    public C6038Un0 f44584e;

    public C6038Un0 f44585f;

    public C6038Un0 f44586g;

    public C6038Un0 f44587h;

    public C6038Un0 f44588i;

    public int f44589j;

    public C5980Tn0(String str) {
        C5922Sn0 c5922Sn0 = C5922Sn0.f44310e;
        this.f44582c = c5922Sn0;
        this.f44583d = c5922Sn0;
        this.f44584e = c5922Sn0;
        this.f44585f = c5922Sn0;
        this.f44586g = c5922Sn0;
        this.f44587h = c5922Sn0;
        this.f44588i = c5922Sn0;
        this.f44589j = -1;
        this.f44580a = str;
    }

    public static String a(EnumC5864Rn0 enumC5864Rn0, RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (!f44579k && !retraceStackTraceElementProxy.hasRetracedClass()) {
            throw new AssertionError();
        }
        RetracedClassReference retracedClass = retraceStackTraceElementProxy.getRetracedClass();
        if (enumC5864Rn0 == EnumC5864Rn0.f43991b) {
            return retracedClass.getBinaryName();
        }
        return retracedClass.getTypeName();
    }

    public final void b(int i10, int i11) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.b((RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44587h = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public final void c(int i10, int i11) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.c((RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44588i = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public final void d(int i10, int i11) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.d((RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44583d = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public final void e(int i10, int i11) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.e((RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44584e = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public static String b(RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (retraceStackTraceElementProxy.hasRetracedFieldOrReturnType()) {
            return retraceStackTraceElementProxy.getRetracedFieldOrReturnType().isVoid() ? "void" : retraceStackTraceElementProxy.getRetracedFieldOrReturnType().getTypeName();
        }
        return c6095Vn0.getFieldOrReturnType();
    }

    public static String c(RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (!retraceStackTraceElementProxy.hasRetracedMethodArguments()) {
            return c6095Vn0.getMethodArguments();
        }
        if (retraceStackTraceElementProxy.getRetracedMethodArguments().isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        String methodArguments = c6095Vn0.getMethodArguments();
        boolean z10 = false;
        int i10 = 0;
        for (RetracedTypeReference retracedTypeReference : retraceStackTraceElementProxy.getRetracedMethodArguments()) {
            if (z10) {
                sb2.append(DocLint.SEPARATOR);
            }
            char[] cArr = C10656zq0.f54545a;
            int i11 = i10;
            while (true) {
                if (i11 < methodArguments.length()) {
                    if (!C10656zq0.a(methodArguments.charAt(i11))) {
                        break;
                    }
                    i11++;
                } else {
                    i11 = methodArguments.length();
                    break;
                }
            }
            int i12 = i11 - i10;
            sb2.append(C11699z2.a(" ", i12));
            sb2.append(retracedTypeReference.getTypeName());
            i10 = methodArguments.indexOf(44, i10 + i12) + 1;
            z10 = true;
        }
        return sb2.toString();
    }

    public static String d(RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (!retraceStackTraceElementProxy.hasRetracedMethod()) {
            return c6095Vn0.getMethodName();
        }
        RetracedMethodReference retracedMethod = retraceStackTraceElementProxy.getRetracedMethod();
        boolean booleanValue = bool.booleanValue();
        HashSet hashSet = C8134kk0.f49747a;
        StringBuilder sb2 = new StringBuilder();
        if (booleanValue && !retracedMethod.isUnknown()) {
            if (!C8134kk0.f49748b && !retracedMethod.isKnown()) {
                throw new AssertionError();
            }
            RetracedMethodReference.KnownRetracedMethodReference asKnown = retracedMethod.asKnown();
            sb2.append(asKnown.isVoid() ? "void" : asKnown.getReturnType().getTypeName());
            sb2.append(" ");
            sb2.append(retracedMethod.getMethodName());
            sb2.append("(");
            boolean z10 = false;
            for (TypeReference typeReference : asKnown.getFormalTypes()) {
                if (z10) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(typeReference.getTypeName());
                z10 = true;
            }
            sb2.append(")");
            return sb2.toString();
        }
        sb2.append(retracedMethod.getMethodName());
        return sb2.toString();
    }

    public static String e(RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        return retraceStackTraceElementProxy.hasSourceFile() ? retraceStackTraceElementProxy.getSourceFile() : c6095Vn0.getSourceFile();
    }

    public final void a(int i10, int i11, final boolean z10) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.a(z10, (RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44585f = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public static String a(boolean z10, RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (retraceStackTraceElementProxy.hasLineNumber() && ((c6095Vn0.f45172f.a() && c6095Vn0.getLineNumber() > -1) || !retraceStackTraceElementProxy.isAmbiguous() || bool.booleanValue())) {
            if (retraceStackTraceElementProxy.getLineNumber() <= 0) {
                return "";
            }
            return (z10 ? b3.s.f32937c : "") + retraceStackTraceElementProxy.getLineNumber();
        }
        return c6095Vn0.a(c6095Vn0.f45172f);
    }

    public final void a(int i10, int i11) {
        C6038Un0 c6038Un0 = new C6038Un0(i10, i11, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C5980Tn0.a((RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
            }
        });
        this.f44586g = c6038Un0;
        this.f44581b.add(c6038Un0);
    }

    public static String a(RetraceStackTraceElementProxy retraceStackTraceElementProxy, C6095Vn0 c6095Vn0, Boolean bool) {
        if (!retraceStackTraceElementProxy.hasRetracedField()) {
            return c6095Vn0.getFieldName();
        }
        RetracedFieldReference retracedField = retraceStackTraceElementProxy.getRetracedField();
        if (bool.booleanValue() && !retracedField.isUnknown()) {
            return retracedField.asKnown().getFieldType().getTypeName() + " " + retracedField.getFieldName();
        }
        return retracedField.getFieldName();
    }

    public final void a(int i10, int i11, final EnumC5864Rn0 enumC5864Rn0) {
        if (this.f44589j < i10) {
            this.f44589j = i10;
            C5922Sn0 c5922Sn0 = new C5922Sn0(i10, i11, new InterfaceC7495gt0() {
                @Override
                public final Object a(Object obj, Object obj2, Object obj3) {
                    return C5980Tn0.a(EnumC5864Rn0.this, (RetraceStackTraceElementProxy) obj, (C6095Vn0) obj2, (Boolean) obj3);
                }
            }, enumC5864Rn0);
            this.f44582c = c5922Sn0;
            this.f44581b.add(c5922Sn0);
            return;
        }
        throw new RuntimeException("Parsing has to be incremental in the order of characters.");
    }
}
