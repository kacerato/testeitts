package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceFieldElement;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetraceMethodElement;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetracedFieldReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import java.util.function.Function;

public final class C9970vk0 {

    public static final C9970vk0 f53318b = new C9970vk0(null);

    public final C10137wk0 f53319a;

    public C9970vk0(C10137wk0 c10137wk0) {
        this.f53319a = c10137wk0;
    }

    public final String a(com.android.tools.r8.graph.M2 m22) {
        VI0 vi0 = new VI0();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                String descriptor;
                descriptor = ((RetraceClassElement) obj).getRetracedClass().getDescriptor();
                return descriptor;
            }
        };
        C10137wk0 c10137wk0 = this.f53319a;
        if (c10137wk0 == null) {
            return (String) vi0.apply(m22);
        }
        return C10656zq0.a(c10137wk0.retraceClass(m22.s0()).stream(), function);
    }

    public final String b(com.android.tools.r8.graph.M2 m22) {
        C9743uL0 c9743uL0 = new C9743uL0();
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                String typeName;
                typeName = ((RetraceClassElement) obj).getRetracedClass().getTypeName();
                return typeName;
            }
        };
        C10137wk0 c10137wk0 = this.f53319a;
        if (c10137wk0 == null) {
            return (String) c9743uL0.apply(m22);
        }
        return C10656zq0.a(c10137wk0.retraceClass(m22.s0()).stream(), function);
    }

    public final String c(com.android.tools.r8.graph.A2 a22) {
        return a(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.A2) obj).j0();
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                String sourceString;
                sourceString = ((RetracedMethodReference.KnownRetracedMethodReference) obj).getMethodReference().toSourceString();
                return sourceString;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.b((RetracedMethodReference) obj);
            }
        });
    }

    public final String d(C4554l1 c4554l1) {
        return a(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                String sourceString;
                sourceString = ((C4554l1) obj).v0().toSourceString();
                return sourceString;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                String sourceString;
                sourceString = ((RetracedFieldReference.KnownRetracedFieldReference) obj).getFieldReference().toSourceString();
                return sourceString;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.b((RetracedFieldReference) obj);
            }
        });
    }

    public final String c(C4554l1 c4554l1) {
        return a(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                String fieldReference;
                fieldReference = ((C4554l1) obj).v0().toString();
                return fieldReference;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                String fieldReference;
                fieldReference = ((RetracedFieldReference.KnownRetracedFieldReference) obj).getFieldReference().toString();
                return fieldReference;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.a((RetracedFieldReference) obj);
            }
        });
    }

    public final String a(com.android.tools.r8.graph.A2 a22, Function function, final Function function2, final Function function3) {
        C10137wk0 c10137wk0 = this.f53319a;
        if (c10137wk0 == null) {
            return (String) function.apply(a22);
        }
        RetraceMethodResult retraceMethod = c10137wk0.retraceMethod(a22.v0());
        return C10656zq0.a(retraceMethod.stream(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.a(Function.this, function2, (RetraceMethodElement) obj);
            }
        });
    }

    public static String b(RetracedMethodReference retracedMethodReference) {
        return retracedMethodReference.getHolderClass().getTypeName() + " " + retracedMethodReference.getMethodName();
    }

    public final String b(com.android.tools.r8.graph.A2 a22) {
        return a(a22, new Function() {
            @Override
            public final Object apply(Object obj) {
                String methodReference;
                methodReference = ((com.android.tools.r8.graph.A2) obj).v0().toString();
                return methodReference;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                String methodReference;
                methodReference = ((RetracedMethodReference.KnownRetracedMethodReference) obj).getMethodReference().toString();
                return methodReference;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.a((RetracedMethodReference) obj);
            }
        });
    }

    public static String a(Function function, Function function2, RetraceMethodElement retraceMethodElement) {
        if (retraceMethodElement.isUnknown()) {
            return (String) function.apply(retraceMethodElement.getRetracedMethod());
        }
        return (String) function2.apply(retraceMethodElement.getRetracedMethod().asKnown());
    }

    public static String b(RetracedFieldReference retracedFieldReference) {
        return retracedFieldReference.getHolderClass().getDescriptor() + " " + retracedFieldReference.getFieldName();
    }

    public final String b(AbstractC4406d4 abstractC4406d4) {
        if (!(abstractC4406d4 instanceof com.android.tools.r8.graph.J2)) {
            return abstractC4406d4.j0();
        }
        return (String) ((com.android.tools.r8.graph.J2) abstractC4406d4).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.b((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.d((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.c((com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public static String a(RetracedMethodReference retracedMethodReference) {
        return retracedMethodReference.getHolderClass().getDescriptor() + retracedMethodReference.getMethodName();
    }

    public final String a(C4554l1 c4554l1, Function function, final Function function2, final Function function3) {
        if (this.f53319a == null) {
            return (String) function.apply(c4554l1);
        }
        FieldReference v02 = c4554l1.v0();
        RetraceFieldResult retraceField = this.f53319a.retraceField(v02);
        if (retraceField.isEmpty()) {
            retraceField = this.f53319a.retraceClass(v02.getHolderClass()).lookupField(v02.getFieldName());
        }
        return C10656zq0.a(retraceField.stream(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.a(Function.this, function2, (RetraceFieldElement) obj);
            }
        });
    }

    public static String a(Function function, Function function2, RetraceFieldElement retraceFieldElement) {
        if (retraceFieldElement.isUnknown()) {
            return (String) function.apply(retraceFieldElement.getField());
        }
        return (String) function2.apply(retraceFieldElement.getField().asKnown());
    }

    public static String a(RetracedFieldReference retracedFieldReference) {
        return retracedFieldReference.getHolderClass().getDescriptor() + retracedFieldReference.getFieldName();
    }

    public final String a(AbstractC4406d4 abstractC4406d4) {
        if (!(abstractC4406d4 instanceof com.android.tools.r8.graph.J2)) {
            return abstractC4406d4.toString();
        }
        return (String) ((com.android.tools.r8.graph.J2) abstractC4406d4).a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.c((C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9970vk0.this.b((com.android.tools.r8.graph.A2) obj);
            }
        });
    }
}
