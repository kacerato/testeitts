package com.android.tools.r8.tracereferences;

import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7660hs1;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.PackageReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.apache.commons.math3.geometry.VectorFormat;

public abstract class AbstractC11624a {

    public static final boolean f58442b = true;

    public final StringBuilder f58443a = new StringBuilder();

    public final void a(MethodReference methodReference) {
        C10656zq0.a(this.f58443a, AT.a((Collection) methodReference.getFormalTypes(), (Function) new C7660hs1()), ", ", C10656zq0.a.f54549b);
    }

    public abstract void a(List list);

    public abstract void b(TraceReferencesConsumer.TracedClass tracedClass);

    public abstract void b(TraceReferencesConsumer.TracedField tracedField);

    public final void a(HashSet hashSet, HashSet hashSet2, HashMap hashMap, HashMap hashMap2) {
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                String descriptor;
                descriptor = ((TraceReferencesConsumer.TracedClass) obj).getReference().getDescriptor();
                return descriptor;
            }
        });
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(hashSet);
        arrayList.sort(comparing);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            TraceReferencesConsumer.TracedClass tracedClass = (TraceReferencesConsumer.TracedClass) obj;
            ClassReference reference = tracedClass.getReference();
            Object obj2 = Collections.EMPTY_SET;
            boolean z11 = TU.f44487a;
            Object remove = hashMap2.remove(reference);
            if (remove == null) {
                remove = obj2;
            }
            Set<TraceReferencesConsumer.TracedMethod> set = (Set) remove;
            Object remove2 = hashMap.remove(tracedClass.getReference());
            if (remove2 != null) {
                obj2 = remove2;
            }
            Set set2 = (Set) obj2;
            if (!tracedClass.isMissingDefinition()) {
                b(tracedClass);
                ArrayList arrayList2 = new ArrayList(set.size());
                for (TraceReferencesConsumer.TracedMethod tracedMethod : set) {
                    if (!tracedMethod.isMissingDefinition()) {
                        if (!f58442b && tracedMethod.getAccessFlags() == null) {
                            throw new AssertionError();
                        }
                        arrayList2.add(tracedMethod);
                    }
                }
                arrayList2.sort(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj3) {
                        String methodReference;
                        methodReference = ((TraceReferencesConsumer.TracedMethod) obj3).getReference().toString();
                        return methodReference;
                    }
                }));
                int size2 = arrayList2.size();
                int i11 = 0;
                while (i11 < size2) {
                    Object obj3 = arrayList2.get(i11);
                    i11++;
                    TraceReferencesConsumer.TracedMethod tracedMethod2 = (TraceReferencesConsumer.TracedMethod) obj3;
                    C11625b c11625b = (C11625b) this;
                    if (!tracedMethod2.getReference().getMethodName().equals(ConstantDescs.CLASS_INIT_NAME)) {
                        c11625b.f58443a.append(GlideException.a.f59088e);
                        if (((TraceReferencesConsumer.MethodAccessFlags) tracedMethod2.getAccessFlags()).isPublic()) {
                            c11625b.f58443a.append("public ");
                        } else if (((TraceReferencesConsumer.MethodAccessFlags) tracedMethod2.getAccessFlags()).isPrivate()) {
                            c11625b.f58443a.append("private ");
                        } else if (((TraceReferencesConsumer.MethodAccessFlags) tracedMethod2.getAccessFlags()).isProtected()) {
                            c11625b.f58443a.append("protected ");
                        }
                        if (((TraceReferencesConsumer.MethodAccessFlags) tracedMethod2.getAccessFlags()).isStatic()) {
                            c11625b.f58443a.append("static ");
                        }
                        MethodReference reference2 = tracedMethod2.getReference();
                        if (reference2.getMethodName().equals(ConstantDescs.INIT_NAME)) {
                            c11625b.f58443a.append(ConstantDescs.INIT_NAME);
                        } else {
                            c11625b.f58443a.append(reference2.getReturnType() != null ? reference2.getReturnType().getTypeName() : "void");
                            c11625b.f58443a.append(" ");
                            c11625b.f58443a.append(reference2.getMethodName());
                        }
                        c11625b.a(tracedMethod2.getReference());
                        c11625b.f58443a.append(C10656zq0.b(";"));
                    }
                }
                ArrayList arrayList3 = new ArrayList(set2);
                arrayList3.sort(Comparator.comparing(new Function() {
                    @Override
                    public final Object apply(Object obj4) {
                        String fieldReference;
                        fieldReference = ((TraceReferencesConsumer.TracedField) obj4).getReference().toString();
                        return fieldReference;
                    }
                }));
                int size3 = arrayList3.size();
                int i12 = 0;
                while (i12 < size3) {
                    Object obj4 = arrayList3.get(i12);
                    i12++;
                    TraceReferencesConsumer.TracedField tracedField = (TraceReferencesConsumer.TracedField) obj4;
                    if (!tracedField.isMissingDefinition()) {
                        b(tracedField);
                    }
                }
                ((C11625b) this).f58443a.append(C10656zq0.b(VectorFormat.DEFAULT_SUFFIX));
            }
        }
        boolean z12 = f58442b;
        if (!z12 && !AbstractC6483ap0.a(C9073qK.b((Iterable) hashMap.values())).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj5) {
                return ((TraceReferencesConsumer.TracedField) obj5).isMissingDefinition();
            }
        })) {
            throw new AssertionError();
        }
        if (!z12 && !AbstractC6483ap0.a(C9073qK.b((Iterable) hashMap2.values())).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj5) {
                return ((TraceReferencesConsumer.TracedMethod) obj5).isMissingDefinition();
            }
        })) {
            throw new AssertionError();
        }
        a((List) hashSet2.stream().map(new Function() {
            @Override
            public final Object apply(Object obj5) {
                return ((PackageReference) obj5).getPackageName();
            }
        }).sorted().collect(Collectors.toList()));
    }
}
