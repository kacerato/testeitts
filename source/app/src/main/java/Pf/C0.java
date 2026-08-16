package pf;

import Xf.AbstractC3314o;
import Xf.C3316q;
import Xf.InterfaceC3312m;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public final class C0 {

    @Bf.f(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4}, l = {34, 40, 49, 55, 58}, m = "invokeSuspend", n = {"$this$iterator", "buffer", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "bufferInitialCapacity", "gap", com.google.android.material.timepicker.d.f65283e, "$this$iterator", "buffer", "bufferInitialCapacity", "gap", com.google.android.material.timepicker.d.f65283e, "$this$iterator", "buffer", com.itsmagic.engine.Engines.Engine.Animation.a.f72598f, "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap", "$this$iterator", "buffer", "bufferInitialCapacity", "gap"}, nl = {35, 43, 50, 56, 61}, s = {"L$0", "L$1", "L$3", "I$0", "I$1", "I$2", "L$0", "L$1", "I$0", "I$1", "I$2", "L$0", "L$1", "L$3", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1", "L$0", "L$1", "I$0", "I$1"}, v = 2)
    public static final class a<T> extends Bf.l implements Mf.p<AbstractC3314o<? super List<? extends T>>, yf.f<? super P0>, Object> {

        public Object f103799b;

        public Object f103800c;

        public Object f103801d;

        public int f103802e;

        public int f103803f;

        public int f103804g;

        public int f103805h;

        public Object f103806i;

        public final int f103807j;

        public final int f103808k;

        public final Iterator<T> f103809l;

        public final boolean f103810m;

        public final boolean f103811n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(int i10, int i11, Iterator<? extends T> it, boolean z10, boolean z11, yf.f<? super a> fVar) {
            super(2, fVar);
            this.f103807j = i10;
            this.f103808k = i11;
            this.f103809l = it;
            this.f103810m = z10;
            this.f103811n = z11;
        }

        @Override
        public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
            a aVar = new a(this.f103807j, this.f103808k, this.f103809l, this.f103810m, this.f103811n, fVar);
            aVar.f103806i = obj;
            return aVar;
        }

        @Override
        public final Object invoke(AbstractC3314o<? super List<? extends T>> abstractC3314o, yf.f<? super P0> fVar) {
            return ((a) create(abstractC3314o, fVar)).invokeSuspend(P0.f98194a);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x017e  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x00f6 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x00bc  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0175 -> B:16:0x0178). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0141 -> B:32:0x0144). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x00b1 -> B:52:0x005f). Please report as a decompilation issue!!! */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            int i10;
            Iterator<T> it;
            w0 w0Var;
            int i11;
            Iterator<T> it2;
            int i12;
            int i13;
            ArrayList arrayList;
            int i14;
            w0 w0Var2;
            AbstractC3314o abstractC3314o = (AbstractC3314o) this.f103806i;
            Object l10 = Af.d.l();
            int i15 = this.f103805h;
            if (i15 == 0) {
                C14418j0.n(obj);
                int D10 = Vf.u.D(this.f103807j, 1024);
                i10 = this.f103808k - this.f103807j;
                if (i10 < 0) {
                    w0 w0Var3 = new w0(D10);
                    it = this.f103809l;
                    w0Var = w0Var3;
                    i11 = D10;
                    while (it.hasNext()) {
                    }
                    if (this.f103811n) {
                    }
                    return P0.f98194a;
                }
                ArrayList arrayList2 = new ArrayList(D10);
                it2 = this.f103809l;
                i12 = D10;
                i13 = 0;
                arrayList = arrayList2;
                while (it2.hasNext()) {
                }
                if (!arrayList.isEmpty()) {
                    this.f103806i = Bf.o.a(abstractC3314o);
                    this.f103799b = Bf.o.a(arrayList);
                    this.f103800c = null;
                    this.f103801d = null;
                    this.f103802e = i12;
                    this.f103803f = i10;
                    this.f103804g = i13;
                    this.f103805h = 2;
                    if (abstractC3314o.a(arrayList, this) == l10) {
                    }
                }
                return P0.f98194a;
            }
            if (i15 == 1) {
                i10 = this.f103803f;
                i12 = this.f103802e;
                it2 = (Iterator) this.f103800c;
                arrayList = (ArrayList) this.f103799b;
                C14418j0.n(obj);
                i13 = i10;
                if (this.f103810m) {
                    arrayList = new ArrayList(this.f103807j);
                } else {
                    arrayList.clear();
                }
                i10 = i13;
                while (it2.hasNext()) {
                    T next = it2.next();
                    if (i13 > 0) {
                        i13--;
                    } else {
                        arrayList.add(next);
                        if (arrayList.size() == this.f103807j) {
                            this.f103806i = abstractC3314o;
                            this.f103799b = arrayList;
                            this.f103800c = it2;
                            this.f103801d = Bf.o.a(next);
                            this.f103802e = i12;
                            this.f103803f = i10;
                            this.f103804g = i13;
                            this.f103805h = 1;
                            if (abstractC3314o.a(arrayList, this) == l10) {
                                return l10;
                            }
                            i13 = i10;
                            if (this.f103810m) {
                            }
                            i10 = i13;
                            while (it2.hasNext()) {
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty() && (this.f103811n || arrayList.size() == this.f103807j)) {
                    this.f103806i = Bf.o.a(abstractC3314o);
                    this.f103799b = Bf.o.a(arrayList);
                    this.f103800c = null;
                    this.f103801d = null;
                    this.f103802e = i12;
                    this.f103803f = i10;
                    this.f103804g = i13;
                    this.f103805h = 2;
                    if (abstractC3314o.a(arrayList, this) == l10) {
                        return l10;
                    }
                }
                return P0.f98194a;
            }
            if (i15 == 2) {
            } else {
                if (i15 == 3) {
                    i10 = this.f103803f;
                    i11 = this.f103802e;
                    it = (Iterator) this.f103800c;
                    w0Var = (w0) this.f103799b;
                    C14418j0.n(obj);
                    w0Var.m(this.f103808k);
                    while (it.hasNext()) {
                        T next2 = it.next();
                        w0Var.g(next2);
                        if (w0Var.l()) {
                            int size = w0Var.size();
                            int i16 = this.f103807j;
                            if (size >= i16) {
                                RandomAccess arrayList3 = this.f103810m ? w0Var : new ArrayList(w0Var);
                                this.f103806i = abstractC3314o;
                                this.f103799b = w0Var;
                                this.f103800c = it;
                                this.f103801d = Bf.o.a(next2);
                                this.f103802e = i11;
                                this.f103803f = i10;
                                this.f103805h = 3;
                                if (abstractC3314o.a(arrayList3, this) == l10) {
                                    return l10;
                                }
                                w0Var.m(this.f103808k);
                                while (it.hasNext()) {
                                }
                            } else {
                                w0Var = w0Var.j(i16);
                            }
                        }
                    }
                    if (this.f103811n) {
                        i14 = i11;
                        w0Var2 = w0Var;
                        if (w0Var2.size() <= this.f103808k) {
                        }
                    }
                    return P0.f98194a;
                }
                if (i15 == 4) {
                    i10 = this.f103803f;
                    i14 = this.f103802e;
                    w0Var2 = (w0) this.f103799b;
                    C14418j0.n(obj);
                    w0Var2.m(this.f103808k);
                    if (w0Var2.size() <= this.f103808k) {
                        RandomAccess arrayList4 = this.f103810m ? w0Var2 : new ArrayList(w0Var2);
                        this.f103806i = abstractC3314o;
                        this.f103799b = w0Var2;
                        this.f103800c = null;
                        this.f103801d = null;
                        this.f103802e = i14;
                        this.f103803f = i10;
                        this.f103805h = 4;
                        if (abstractC3314o.a(arrayList4, this) == l10) {
                            return l10;
                        }
                        w0Var2.m(this.f103808k);
                        if (w0Var2.size() <= this.f103808k) {
                            if (!w0Var2.isEmpty()) {
                                this.f103806i = Bf.o.a(abstractC3314o);
                                this.f103799b = Bf.o.a(w0Var2);
                                this.f103800c = null;
                                this.f103801d = null;
                                this.f103802e = i14;
                                this.f103803f = i10;
                                this.f103805h = 5;
                                if (abstractC3314o.a(w0Var2, this) == l10) {
                                    return l10;
                                }
                            }
                            return P0.f98194a;
                        }
                    }
                } else {
                    if (i15 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }
            C14418j0.n(obj);
            return P0.f98194a;
        }
    }

    @kotlin.jvm.internal.t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt\n*L\n1#1,730:1\n19#2:731\n*E\n"})
    public static final class b<T> implements InterfaceC3312m<List<? extends T>> {

        public final InterfaceC3312m f103812a;

        public final int f103813b;

        public final int f103814c;

        public final boolean f103815d;

        public final boolean f103816e;

        public b(InterfaceC3312m interfaceC3312m, int i10, int i11, boolean z10, boolean z11) {
            this.f103812a = interfaceC3312m;
            this.f103813b = i10;
            this.f103814c = i11;
            this.f103815d = z10;
            this.f103816e = z11;
        }

        @Override
        public Iterator<List<? extends T>> iterator() {
            return C0.b(this.f103812a.iterator(), this.f103813b, this.f103814c, this.f103815d, this.f103816e);
        }
    }

    public static final void a(int i10, int i11) {
        String str;
        if (i10 <= 0 || i11 <= 0) {
            if (i10 != i11) {
                str = "Both size " + i10 + " and step " + i11 + " must be greater than zero.";
            } else {
                str = "size " + i10 + " must be greater than zero.";
            }
            throw new IllegalArgumentException(str.toString());
        }
    }

    @NotNull
    public static final <T> Iterator<List<T>> b(@NotNull Iterator<? extends T> iterator, int i10, int i11, boolean z10, boolean z11) {
        kotlin.jvm.internal.M.p(iterator, "iterator");
        return !iterator.hasNext() ? U.f103831b : C3316q.a(new a(i10, i11, iterator, z11, z10, null));
    }

    @NotNull
    public static final <T> InterfaceC3312m<List<T>> c(@NotNull InterfaceC3312m<? extends T> interfaceC3312m, int i10, int i11, boolean z10, boolean z11) {
        kotlin.jvm.internal.M.p(interfaceC3312m, "<this>");
        a(i10, i11);
        return new b(interfaceC3312m, i10, i11, z10, z11);
    }
}
