package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceFrameElement;
import com.android.tools.r8.retrace.RetraceFrameResult;
import com.android.tools.r8.retrace.RetraceInvalidRewriteFrameDiagnostics;
import com.android.tools.r8.retrace.RetraceStackTraceContext;
import com.android.tools.r8.retrace.RetracedClassMemberReference;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import com.android.tools.r8.retrace.RetracedSourceFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;

public final class C5856Rj0 implements RetraceFrameElement {

    public final AbstractC9302rk0 f43974a;

    public final C5972Tj0 f43975b;

    public final C5566Mj0 f43976c;

    public final List f43977d;

    public final Optional f43978e;

    public final OptionalInt f43979f;

    public final C10137wk0 f43980g;

    public C5856Rj0(C5972Tj0 c5972Tj0, C5566Mj0 c5566Mj0, AbstractC9302rk0 abstractC9302rk0, List list, Optional optional, OptionalInt optionalInt, C10137wk0 c10137wk0) {
        this.f43974a = abstractC9302rk0;
        this.f43975b = c5972Tj0;
        this.f43976c = c5566Mj0;
        this.f43977d = list;
        this.f43978e = optional;
        this.f43979f = optionalInt;
        this.f43980g = c10137wk0;
    }

    public static C10957k.b a(Object obj) {
        return ((C5914Sj0) obj).f44290a;
    }

    @Override
    public final void forEach(Consumer consumer) {
        List list = this.f43977d;
        if (list == null || list.isEmpty()) {
            consumer.accept(new C9469sk0(this, this.f43974a, 0));
            return;
        }
        consumer.accept(new C9469sk0(this, this.f43974a, 0));
        Iterator it = getOuterFrames().iterator();
        int i10 = 1;
        while (it.hasNext()) {
            consumer.accept(new C9469sk0(this, (AbstractC9302rk0) it.next(), i10));
            i10++;
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.AbstractCollection, java.util.List] */
    @Override
    public final void forEachRewritten(Consumer consumer) {
        C6468ak0 c6468ak0;
        C6315Zj0 c6315Zj0 = this.f43975b.f44560d;
        boolean z10 = false;
        if (c6315Zj0 == null) {
            c6468ak0 = C6468ak0.f46615b;
        } else {
            List a10 = AT.a((Collection) this.f43977d, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C5856Rj0.a((C5914Sj0) obj);
                }
            });
            if (a10 == null || a10.isEmpty()) {
                c6468ak0 = C6468ak0.f46615b;
            } else {
                Iterator it = a10.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    for (C5163Fk0 c5163Fk0 : ((C10957k.b) it.next()).g()) {
                        Iterator it2 = c5163Fk0.f40299a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                if (!((C5105Ek0) it2.next()).f40006a.equals(c6315Zj0.f46332a)) {
                                    break;
                                }
                            } else {
                                Iterator it3 = c5163Fk0.f40300b.iterator();
                                while (it3.hasNext()) {
                                    i10 += ((C5047Dk0) it3.next()).f39627a;
                                }
                            }
                        }
                    }
                }
                c6468ak0 = new C6468ak0(i10);
            }
        }
        int i11 = c6468ak0.f46616a;
        List list = this.f43977d;
        if (i11 > ((list == null || list.isEmpty()) ? 1 : this.f43977d.size())) {
            this.f43980g.f53595b.warning(RetraceInvalidRewriteFrameDiagnostics.create(i11, this.f43974a.a().toString()));
            i11 = 0;
        }
        AbstractC9302rk0 abstractC9302rk0 = this.f43974a;
        int i12 = 0;
        for (AbstractC9302rk0 abstractC9302rk02 : getOuterFrames()) {
            int i13 = i11 - 1;
            if (i11 <= 0) {
                consumer.accept(new C9469sk0(this, abstractC9302rk0, i12));
                i12++;
            }
            abstractC9302rk0 = abstractC9302rk02;
            i11 = i13;
        }
        if (i11 <= 0) {
            if (this.f43978e.isPresent()) {
                z10 = ((com.android.tools.r8.naming.V) this.f43978e.get()).f();
            } else {
                List list2 = this.f43977d;
                if (list2 != null && !list2.isEmpty()) {
                    for (com.android.tools.r8.naming.mappinginformation.e eVar : ((C5914Sj0) AT.b(this.f43977d)).f44290a.f55976i) {
                        if (eVar.l() || (eVar instanceof O40)) {
                            z10 = true;
                            break;
                        }
                    }
                }
            }
            if (z10) {
                return;
            }
            consumer.accept(new C9469sk0(this, abstractC9302rk0, i12));
        }
    }

    @Override
    public final RetraceClassElement getClassElement() {
        return this.f43976c;
    }

    @Override
    public final List getOuterFrames() {
        if (this.f43977d == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 1; i10 < this.f43977d.size(); i10++) {
            C5914Sj0 c5914Sj0 = (C5914Sj0) this.f43977d.get(i10);
            C10957k.b bVar = c5914Sj0.f44290a;
            ClassReference classReference = this.f43976c.f42356b.f50088a;
            HashSet hashSet = C8134kk0.f49747a;
            arrayList.add(this.f43975b.a(C8134kk0.a(bVar.f55970c, classReference), c5914Sj0, this.f43979f));
        }
        return arrayList;
    }

    @Override
    public final RetraceFrameResult getParentResult() {
        return this.f43975b;
    }

    @Override
    public final RetraceStackTraceContext getRetraceStackTraceContext() {
        List list = this.f43977d;
        if (list != null && !list.isEmpty() && this.f43979f.isPresent()) {
            if (this.f43978e.isPresent()) {
                for (com.android.tools.r8.naming.mappinginformation.e eVar : ((com.android.tools.r8.naming.V) this.f43978e.get()).f55770e) {
                    eVar.getClass();
                    if (eVar instanceof O40) {
                        OptionalInt.empty();
                        return new C6315Zj0(null, this.f43979f);
                    }
                }
            } else {
                List list2 = this.f43977d;
                if (list2 != null && !list2.isEmpty()) {
                    for (com.android.tools.r8.naming.mappinginformation.e eVar2 : ((C5914Sj0) AT.b(this.f43977d)).f44290a.f55976i) {
                        eVar2.getClass();
                        if (eVar2 instanceof O40) {
                            OptionalInt.empty();
                            return new C6315Zj0(null, this.f43979f);
                        }
                    }
                }
            }
        }
        return RetraceStackTraceContext.empty();
    }

    @Override
    public final RetracedSourceFile getSourceFile(RetracedClassMemberReference retracedClassMemberReference) {
        RetracedClassReference holderClass = retracedClassMemberReference.getHolderClass();
        C10137wk0 c10137wk0 = this.f43975b.f44559c;
        HashSet hashSet = C8134kk0.f49747a;
        return new C9636tk0(holderClass, c10137wk0.f53594a.b(holderClass.getClassReference().getTypeName()));
    }

    @Override
    public final RetracedMethodReference getTopFrame() {
        return this.f43974a;
    }

    @Override
    public final boolean isCompilerSynthesized() {
        boolean z10;
        if (getOuterFrames().isEmpty()) {
            if (this.f43978e.isPresent()) {
                z10 = ((com.android.tools.r8.naming.V) this.f43978e.get()).f();
            } else {
                List list = this.f43977d;
                if (list != null && !list.isEmpty()) {
                    for (com.android.tools.r8.naming.mappinginformation.e eVar : ((C5914Sj0) AT.b(this.f43977d)).f44290a.f55976i) {
                        if (eVar.l() || (eVar instanceof O40)) {
                            z10 = true;
                            break;
                        }
                    }
                }
                z10 = false;
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isUnknown() {
        this.f43974a.getClass();
        return !(r0 instanceof C8969pk0);
    }

    @Override
    public final Stream stream() {
        Stream.Builder builder = Stream.builder();
        Objects.requireNonNull(builder);
        forEach(new C10097wV0(builder));
        return builder.build();
    }

    @Override
    public final Stream streamRewritten(RetraceStackTraceContext retraceStackTraceContext) {
        Stream.Builder builder = Stream.builder();
        Objects.requireNonNull(builder);
        forEachRewritten(new C10097wV0(builder));
        return builder.build();
    }
}
