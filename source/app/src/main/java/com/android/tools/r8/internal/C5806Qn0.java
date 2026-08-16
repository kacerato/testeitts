package com.android.tools.r8.internal;

import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceClassResult;
import com.android.tools.r8.retrace.RetraceFieldElement;
import com.android.tools.r8.retrace.RetraceFieldResult;
import com.android.tools.r8.retrace.RetraceFrameElement;
import com.android.tools.r8.retrace.RetraceFrameResult;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetraceStackTraceElementProxyResult;
import com.android.tools.r8.retrace.RetraceThrownExceptionElement;
import com.android.tools.r8.retrace.RetraceTypeElement;
import com.android.tools.r8.retrace.RetraceTypeResult;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSingleFrame;
import com.android.tools.r8.retrace.RetracedSourceFile;
import com.android.tools.r8.retrace.RetracedTypeReference;
import com.android.tools.r8.retrace.Retracer;
import com.android.tools.r8.retrace.StackTraceElementProxy;
import com.android.tools.r8.retrace.StackTraceElementProxyRetracer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.OptionalInt;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public final class C5806Qn0 implements StackTraceElementProxyRetracer {

    public final Retracer f43728a;

    public C5806Qn0(Retracer retracer) {
        this.f43728a = retracer;
    }

    public final C5748Pn0 a(C5748Pn0 c5748Pn0) {
        C9803uk0 c9803uk0 = new C9803uk0(null);
        boolean z10 = c5748Pn0.f43378j;
        C5690On0 a10 = c5748Pn0.a();
        a10.f43035e = c9803uk0;
        return a10.a(z10).a();
    }

    public final C5748Pn0 b(RetraceClassResult retraceClassResult, C5748Pn0 c5748Pn0, RetraceThrownExceptionElement retraceThrownExceptionElement) {
        return a(retraceClassResult, c5748Pn0, retraceThrownExceptionElement);
    }

    @Override
    public final RetraceStackTraceElementProxyResult retrace(StackTraceElementProxy stackTraceElementProxy, RetraceStackTraceContext retraceStackTraceContext) {
        C6801ck0 c6801ck0 = new C6801ck0(Stream.of(new C5748Pn0(stackTraceElementProxy, null, null, null, null, null, null, -1, false, false, retraceStackTraceContext)), new Supplier() {
            @Override
            public final Object get() {
                return RetraceStackTraceContext.empty();
            }
        });
        if (!stackTraceElementProxy.hasClassName() && !stackTraceElementProxy.hasFieldOrReturnType() && !stackTraceElementProxy.hasMethodArguments()) {
            return c6801ck0;
        }
        C6801ck0 b10 = b(a(c6801ck0, stackTraceElementProxy), stackTraceElementProxy);
        if (!stackTraceElementProxy.hasClassName()) {
            return b10;
        }
        RetraceClassResult retraceClass = this.f43728a.retraceClass(stackTraceElementProxy.getClassReference());
        return stackTraceElementProxy.hasMethodName() ? a(b10, stackTraceElementProxy, retraceClass, retraceStackTraceContext) : stackTraceElementProxy.hasFieldName() ? a(b10, stackTraceElementProxy, retraceClass) : a(b10, retraceClass);
    }

    public final C5748Pn0 b(StackTraceElementProxy stackTraceElementProxy, C5748Pn0 c5748Pn0, RetraceFrameResult retraceFrameResult, RetraceFrameElement retraceFrameElement, RetracedSingleFrame retracedSingleFrame) {
        return a(stackTraceElementProxy, c5748Pn0, retraceFrameResult, retraceFrameElement, retracedSingleFrame);
    }

    public final C5748Pn0 b(C5748Pn0 c5748Pn0, RetraceFieldResult retraceFieldResult, RetraceFieldElement retraceFieldElement) {
        return a(c5748Pn0, retraceFieldResult, retraceFieldElement);
    }

    public final C6801ck0 b(C6801ck0 c6801ck0, StackTraceElementProxy stackTraceElementProxy) {
        if (!stackTraceElementProxy.hasMethodArguments()) {
            return c6801ck0;
        }
        Stream<TypeReference> stream = stackTraceElementProxy.getMethodArgumentTypeReferences().stream();
        final Retracer retracer = this.f43728a;
        Objects.requireNonNull(retracer);
        List list = (List) stream.map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Retracer.this.retraceType((TypeReference) obj);
            }
        }).collect(Collectors.toList());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList());
        final List list2 = (List) AT.a(arrayList, list, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C5806Qn0.a((List) obj, (RetraceTypeResult) obj2);
            }
        });
        final boolean z10 = list2.size() > 1;
        return new C6801ck0(c6801ck0.f47150a.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream map;
                map = List.this.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj2) {
                        return C5806Qn0.a(C5748Pn0.this, r2, (List) obj2);
                    }
                });
                return map;
            }
        }), c6801ck0.a().f46851a);
    }

    public final C6801ck0 a(C6801ck0 c6801ck0, final RetraceClassResult retraceClassResult) {
        return new C6801ck0(c6801ck0.f47150a.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(retraceClassResult, (C5748Pn0) obj);
            }
        }), c6801ck0.a().f46851a);
    }

    public static C5748Pn0 a(RetraceClassResult retraceClassResult, C5748Pn0 c5748Pn0, final RetraceThrownExceptionElement retraceThrownExceptionElement) {
        C5690On0 a10 = c5748Pn0.a();
        a10.f43032b = retraceThrownExceptionElement.getRetracedClass();
        C5690On0 a11 = a10.a(retraceClassResult.isAmbiguous());
        a11.f43040j = true;
        a11.f43041k = retraceThrownExceptionElement.getContext();
        return a11.a(a(new Supplier() {
            @Override
            public final Object get() {
                return RetraceThrownExceptionElement.this.getSourceFile();
            }
        })).a();
    }

    public final C6801ck0 a(C6801ck0 c6801ck0, final StackTraceElementProxy stackTraceElementProxy, final RetraceClassResult retraceClassResult, final RetraceStackTraceContext retraceStackTraceContext) {
        final C7 c72 = new C7(RetraceStackTraceContext.empty());
        C6635bk0 a10 = c6801ck0.a();
        a10.f46851a = new Supplier() {
            @Override
            public final Object get() {
                return (RetraceStackTraceContext) C7.this.a();
            }
        };
        return new C6801ck0(c6801ck0.f47150a.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(retraceClassResult, retraceStackTraceContext, stackTraceElementProxy, c72, (C5748Pn0) obj);
            }
        }), a10.f46851a);
    }

    public final Stream a(final RetraceClassResult retraceClassResult, final RetraceStackTraceContext retraceStackTraceContext, final StackTraceElementProxy stackTraceElementProxy, final C7 c72, final C5748Pn0 c5748Pn0) {
        OptionalInt empty;
        if (stackTraceElementProxy.hasLineNumber()) {
            empty = OptionalInt.of(stackTraceElementProxy.getLineNumber());
        } else {
            empty = OptionalInt.empty();
        }
        final RetraceFrameResult lookupFrame = retraceClassResult.lookupFrame(retraceStackTraceContext, empty, stackTraceElementProxy.getMethodName());
        if (lookupFrame.isEmpty()) {
            return retraceClassResult.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C5806Qn0.this.a(c5748Pn0, retraceClassResult, stackTraceElementProxy, (RetraceClassElement) obj);
                }
            });
        }
        return lookupFrame.stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(c72, retraceStackTraceContext, stackTraceElementProxy, c5748Pn0, lookupFrame, (RetraceFrameElement) obj);
            }
        });
    }

    public final C5748Pn0 a(C5748Pn0 c5748Pn0, RetraceClassResult retraceClassResult, final StackTraceElementProxy stackTraceElementProxy, final RetraceClassElement retraceClassElement) {
        C5690On0 a10 = c5748Pn0.a();
        a10.f43040j = true;
        C5690On0 a11 = a10.a(retraceClassResult.isAmbiguous());
        a11.f43032b = retraceClassElement.getRetracedClass();
        return a11.a(stackTraceElementProxy.hasLineNumber(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5806Qn0.a(StackTraceElementProxy.this, (C5690On0) obj);
            }
        }).a(a(new Supplier() {
            @Override
            public final Object get() {
                return RetraceClassElement.this.getSourceFile();
            }
        })).a();
    }

    public static void a(StackTraceElementProxy stackTraceElementProxy, C5690On0 c5690On0) {
        c5690On0.f43038h = stackTraceElementProxy.getLineNumber();
    }

    public final Stream a(C7 c72, RetraceStackTraceContext retraceStackTraceContext, final StackTraceElementProxy stackTraceElementProxy, final C5748Pn0 c5748Pn0, final RetraceFrameResult retraceFrameResult, final RetraceFrameElement retraceFrameElement) {
        c72.a((C7) retraceFrameElement.getRetraceStackTraceContext());
        return retraceFrameElement.streamRewritten(retraceStackTraceContext).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.b(stackTraceElementProxy, c5748Pn0, retraceFrameResult, retraceFrameElement, (RetracedSingleFrame) obj);
            }
        });
    }

    public static C5748Pn0 a(final StackTraceElementProxy stackTraceElementProxy, C5748Pn0 c5748Pn0, RetraceFrameResult retraceFrameResult, final RetraceFrameElement retraceFrameElement, RetracedSingleFrame retracedSingleFrame) {
        boolean z10 = retracedSingleFrame.getIndex() == 0;
        final RetracedMethodReference methodReference = retracedSingleFrame.getMethodReference();
        C5690On0 a10 = c5748Pn0.a();
        a10.f43032b = methodReference.getHolderClass();
        a10.f43033c = methodReference;
        C5690On0 a11 = a10.a(retraceFrameResult.isAmbiguous());
        a11.f43040j = z10;
        a11.f43041k = retraceFrameElement.getRetraceStackTraceContext();
        return a11.a(stackTraceElementProxy.hasLineNumber(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5806Qn0.a(RetracedMethodReference.this, stackTraceElementProxy, (C5690On0) obj);
            }
        }).a(a(new Supplier() {
            @Override
            public final Object get() {
                RetracedSourceFile sourceFile;
                sourceFile = RetraceFrameElement.this.getSourceFile(methodReference);
                return sourceFile;
            }
        })).a();
    }

    public static void a(RetracedMethodReference retracedMethodReference, StackTraceElementProxy stackTraceElementProxy, C5690On0 c5690On0) {
        c5690On0.f43038h = retracedMethodReference.getOriginalPositionOrDefault(stackTraceElementProxy.getLineNumber());
    }

    public final C6801ck0 a(C6801ck0 c6801ck0, final StackTraceElementProxy stackTraceElementProxy, final RetraceClassResult retraceClassResult) {
        return new C6801ck0(c6801ck0.f47150a.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(retraceClassResult, stackTraceElementProxy, (C5748Pn0) obj);
            }
        }), c6801ck0.a().f46851a);
    }

    public final Stream a(RetraceClassResult retraceClassResult, StackTraceElementProxy stackTraceElementProxy, final C5748Pn0 c5748Pn0) {
        final RetraceFieldResult lookupField = retraceClassResult.lookupField(stackTraceElementProxy.getFieldName());
        return lookupField.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.b(c5748Pn0, lookupField, (RetraceFieldElement) obj);
            }
        });
    }

    public static C5748Pn0 a(C5748Pn0 c5748Pn0, RetraceFieldResult retraceFieldResult, final RetraceFieldElement retraceFieldElement) {
        C5690On0 a10 = c5748Pn0.a();
        a10.f43032b = retraceFieldElement.getField().getHolderClass();
        a10.f43034d = retraceFieldElement.getField();
        C5690On0 a11 = a10.a(retraceFieldResult.isAmbiguous());
        a11.f43040j = true;
        return a11.a(a(new Supplier() {
            @Override
            public final Object get() {
                return RetraceFieldElement.this.getSourceFile();
            }
        })).a();
    }

    public static Consumer a(final Supplier supplier) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5806Qn0.a(Supplier.this, (C5690On0) obj);
            }
        };
    }

    public static void a(Supplier supplier, C5690On0 c5690On0) {
        if (c5690On0.f43031a.hasSourceFile()) {
            RetracedSourceFile retracedSourceFile = (RetracedSourceFile) supplier.get();
            if (!C5690On0.f43030l && retracedSourceFile == null) {
                throw new AssertionError();
            }
            c5690On0.f43037g = retracedSourceFile;
        }
    }

    public final C6801ck0 a(C6801ck0 c6801ck0, StackTraceElementProxy stackTraceElementProxy) {
        if (!stackTraceElementProxy.hasFieldOrReturnType()) {
            return c6801ck0;
        }
        C6635bk0 a10 = c6801ck0.a();
        String fieldOrReturnType = stackTraceElementProxy.getFieldOrReturnType();
        if (fieldOrReturnType.equals("void")) {
            return new C6801ck0(c6801ck0.f47150a.map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C5806Qn0.this.a((C5748Pn0) obj);
                }
            }), a10.f46851a);
        }
        final RetraceTypeResult retraceType = this.f43728a.retraceType(Reference.typeFromTypeName(fieldOrReturnType));
        final List list = (List) retraceType.stream().collect(Collectors.toList());
        return new C6801ck0(c6801ck0.f47150a.flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(list, retraceType, (C5748Pn0) obj);
            }
        }), a10.f46851a);
    }

    public final Stream a(List list, final RetraceTypeResult retraceTypeResult, final C5748Pn0 c5748Pn0) {
        return list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.a(c5748Pn0, retraceTypeResult, (RetraceTypeElement) obj);
            }
        });
    }

    public final C5748Pn0 a(C5748Pn0 c5748Pn0, RetraceTypeResult retraceTypeResult, RetraceTypeElement retraceTypeElement) {
        RetracedTypeReference type = retraceTypeElement.getType();
        boolean isAmbiguous = retraceTypeResult.isAmbiguous();
        C5690On0 a10 = c5748Pn0.a();
        a10.f43035e = type;
        return a10.a(isAmbiguous).a();
    }

    public static List a(final List list, RetraceTypeResult retraceTypeResult) {
        final ArrayList arrayList = new ArrayList();
        retraceTypeResult.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                List.this.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        C5806Qn0.a(RetraceTypeElement.this, r2, (List) obj2);
                    }
                });
            }
        });
        return arrayList;
    }

    public static void a(RetraceTypeElement retraceTypeElement, List list, List list2) {
        ArrayList arrayList = new ArrayList(list2);
        arrayList.add(retraceTypeElement.getType());
        list.add(arrayList);
    }

    public static C5748Pn0 a(C5748Pn0 c5748Pn0, boolean z10, List list) {
        C5690On0 a10 = c5748Pn0.a();
        a10.f43036f = list;
        return a10.a(z10).a();
    }

    public final Stream a(final RetraceClassResult retraceClassResult, final C5748Pn0 c5748Pn0) {
        return retraceClassResult.lookupThrownException(c5748Pn0.f43380l).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5806Qn0.this.b(retraceClassResult, c5748Pn0, (RetraceThrownExceptionElement) obj);
            }
        });
    }
}
