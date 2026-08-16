package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceClassResult;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetraceFrameResult;
import com.android.tools.r8.retrace.RetraceMethodResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceThrownExceptionResult;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.OptionalInt;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C5624Nj0 implements RetraceClassResult {

    public final ClassReference f42676a;

    public final C10957k f42677b;

    public final C10137wk0 f42678c;

    public C5624Nj0(ClassReference classReference, C10957k c10957k, C10137wk0 c10137wk0) {
        this.f42676a = classReference;
        this.f42677b = c10957k;
        this.f42678c = c10137wk0;
    }

    public static void b(InterfaceC5450Kj interfaceC5450Kj, List list, BiFunction biFunction, C5566Mj0 c5566Mj0) {
        Object apply;
        C10957k c10957k = c5566Mj0.f42357c;
        if (c10957k == null || (apply = biFunction.apply(c10957k, interfaceC5450Kj)) == null) {
            list.add(new C8699o50(c5566Mj0, null));
        } else {
            list.add(new C8699o50(c5566Mj0, apply));
        }
    }

    public final C5740Pj0 a(AbstractC6836cw abstractC6836cw) {
        return (C5740Pj0) a(abstractC6836cw, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5624Nj0.a((C10957k) obj, (AbstractC6836cw) obj2);
            }
        }, new QM0());
    }

    @Override
    public final boolean isEmpty() {
        return this.f42677b != null;
    }

    @Override
    public final RetraceFieldResult lookupField(String str) {
        return a(new C6503aw(this.f42676a, str));
    }

    @Override
    public final RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str) {
        return a(new HW(this.f42676a, str)).narrowByPosition(retraceStackTraceContext, optionalInt);
    }

    @Override
    public final RetraceMethodResult lookupMethod(String str) {
        return a(new HW(this.f42676a, str));
    }

    @Override
    public final RetraceThrownExceptionResult lookupThrownException(RetraceStackTraceContext retraceStackTraceContext) {
        return new C7301fk0(this.f42676a, this.f42677b);
    }

    @Override
    public final Stream<RetraceClassElement> stream() {
        C10957k c10957k = this.f42677b;
        return Stream.of(new C5566Mj0(this, new C8301lk0(this.f42677b != null, c10957k == null ? this.f42676a : Reference.classFromTypeName(c10957k.f55951a)), this.f42677b));
    }

    public static List a(C10957k c10957k, AbstractC6836cw abstractC6836cw) {
        List list = (List) c10957k.f55956f.get(abstractC6836cw.getName());
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (abstractC6836cw instanceof C6670bw) {
            FieldReference fieldReference = abstractC6836cw.a().f46892a;
            final V.a aVar = new V.a(fieldReference.getFieldName(), fieldReference.getFieldType().getTypeName());
            list = AT.a((Collection) list, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = ((com.android.tools.r8.naming.V) obj).b().equals(V.a.this);
                    return equals;
                }
            });
        }
        if (list.isEmpty()) {
            return null;
        }
        return list;
    }

    @Override
    public final RetraceFieldResult lookupField(String str, TypeReference typeReference) {
        return a(new C6670bw(Reference.field(this.f42676a, str, typeReference)));
    }

    @Override
    public final RetraceFrameResult lookupFrame(RetraceStackTraceContext retraceStackTraceContext, OptionalInt optionalInt, String str, List list, TypeReference typeReference) {
        return a(new IW(Reference.method(this.f42676a, str, list, typeReference))).narrowByPosition(retraceStackTraceContext, optionalInt);
    }

    @Override
    public final RetraceMethodResult lookupMethod(String str, List list, TypeReference typeReference) {
        return a(new IW(Reference.method(this.f42676a, str, list, typeReference)));
    }

    public final C6087Vj0 a(JW jw) {
        return (C6087Vj0) a(jw, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5624Nj0.a((C10957k) obj, (JW) obj2);
            }
        }, new SM0());
    }

    public static List a(final C10957k c10957k, JW jw) {
        C10957k.c cVar = c10957k.f55955e.get(jw.getName());
        if (cVar == null || cVar.a().isEmpty()) {
            return null;
        }
        List b10 = cVar.b();
        if (jw instanceof IW) {
            final V.b a10 = V.b.a(jw.a().f41114a);
            b10 = AT.a((Collection) b10, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean equals;
                    equals = ((C10957k.b) AT.b(((C10957k.c) obj).a())).b().equals(V.b.this);
                    return equals;
                }
            });
        }
        return AT.a((Collection) b10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5624Nj0.a(C10957k.this, (C10957k.c) obj);
            }
        });
    }

    public static JV a(C10957k c10957k, C10957k.c cVar) {
        com.android.tools.r8.naming.V v10 = (com.android.tools.r8.naming.V) c10957k.f55953c.get(((C10957k.b) AT.b(cVar.f55979a)).b());
        if (C10957k.c.f55978c || v10 != null) {
            return new JV(v10, cVar);
        }
        throw new AssertionError();
    }

    public final Object a(final InterfaceC5450Kj interfaceC5450Kj, final BiFunction biFunction, InterfaceC5509Lj0 interfaceC5509Lj0) {
        final ArrayList arrayList = new ArrayList();
        C10957k c10957k = this.f42677b;
        Stream.of(new C5566Mj0(this, new C8301lk0(this.f42677b != null, c10957k == null ? this.f42676a : Reference.classFromTypeName(c10957k.f55951a)), this.f42677b)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5624Nj0.b(InterfaceC5450Kj.this, arrayList, biFunction, (C5566Mj0) obj);
            }
        });
        return interfaceC5509Lj0.a(this, arrayList, interfaceC5450Kj, this.f42678c);
    }
}
