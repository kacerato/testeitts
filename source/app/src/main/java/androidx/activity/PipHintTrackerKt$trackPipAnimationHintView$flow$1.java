package androidx.activity;

import Bf.q;
import Mf.p;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import gg.InterfaceC13358B;
import gg.z;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import nf.C14418j0;
import nf.P0;

@Bf.f(c = "androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1", f = "PipHintTracker.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
public final class PipHintTrackerKt$trackPipAnimationHintView$flow$1 extends q implements p<InterfaceC13358B<? super Rect>, yf.f<? super P0>, Object> {
    final View $view;
    private Object L$0;
    int label;

    public static final class AnonymousClass1 extends O implements Mf.a<P0> {
        final PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 $attachStateChangeListener;
        final View.OnLayoutChangeListener $layoutChangeListener;
        final ViewTreeObserver.OnScrollChangedListener $scrollChangeListener;
        final View $view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener, View.OnLayoutChangeListener onLayoutChangeListener, PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1) {
            super(0);
            this.$view = view;
            this.$scrollChangeListener = onScrollChangedListener;
            this.$layoutChangeListener = onLayoutChangeListener;
            this.$attachStateChangeListener = pipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1;
        }

        @Override
        public P0 invoke() {
            invoke2();
            return P0.f98194a;
        }

        public final void invoke2() {
            this.$view.getViewTreeObserver().removeOnScrollChangedListener(this.$scrollChangeListener);
            this.$view.removeOnLayoutChangeListener(this.$layoutChangeListener);
            this.$view.removeOnAttachStateChangeListener(this.$attachStateChangeListener);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1(View view, yf.f<? super PipHintTrackerKt$trackPipAnimationHintView$flow$1> fVar) {
        super(2, fVar);
        this.$view = view;
    }

    public static final void m669invokeSuspend$lambda0(InterfaceC13358B interfaceC13358B, View v10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Rect trackPipAnimationHintView$positionInWindow;
        if (i10 == i14 && i12 == i16 && i11 == i15 && i13 == i17) {
            return;
        }
        M.o(v10, "v");
        trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(v10);
        interfaceC13358B.p(trackPipAnimationHintView$positionInWindow);
    }

    public static final void m670invokeSuspend$lambda1(InterfaceC13358B interfaceC13358B, View view) {
        Rect trackPipAnimationHintView$positionInWindow;
        trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(view);
        interfaceC13358B.p(trackPipAnimationHintView$positionInWindow);
    }

    @Override
    public final yf.f<P0> create(Object obj, yf.f<?> fVar) {
        PipHintTrackerKt$trackPipAnimationHintView$flow$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1 = new PipHintTrackerKt$trackPipAnimationHintView$flow$1(this.$view, fVar);
        pipHintTrackerKt$trackPipAnimationHintView$flow$1.L$0 = obj;
        return pipHintTrackerKt$trackPipAnimationHintView$flow$1;
    }

    @Override
    public final Object invoke(InterfaceC13358B<? super Rect> interfaceC13358B, yf.f<? super P0> fVar) {
        return ((PipHintTrackerKt$trackPipAnimationHintView$flow$1) create(interfaceC13358B, fVar)).invokeSuspend(P0.f98194a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1, android.view.View$OnAttachStateChangeListener] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Rect trackPipAnimationHintView$positionInWindow;
        Object l10 = Af.d.l();
        int i10 = this.label;
        if (i10 == 0) {
            C14418j0.n(obj);
            final InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.L$0;
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() {
                @Override
                public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.m669invokeSuspend$lambda0(InterfaceC13358B.this, view, i11, i12, i13, i14, i15, i16, i17, i18);
                }
            };
            final View view = this.$view;
            final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() {
                @Override
                public final void onScrollChanged() {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.m670invokeSuspend$lambda1(InterfaceC13358B.this, view);
                }
            };
            final View view2 = this.$view;
            ?? r32 = new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View v10) {
                    Rect trackPipAnimationHintView$positionInWindow2;
                    M.p(v10, "v");
                    InterfaceC13358B<Rect> interfaceC13358B2 = interfaceC13358B;
                    trackPipAnimationHintView$positionInWindow2 = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(view2);
                    interfaceC13358B2.p(trackPipAnimationHintView$positionInWindow2);
                    view2.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                    view2.addOnLayoutChangeListener(onLayoutChangeListener);
                }

                @Override
                public void onViewDetachedFromWindow(View v10) {
                    M.p(v10, "v");
                    v10.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    v10.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
            };
            if (Api19Impl.INSTANCE.isAttachedToWindow(this.$view)) {
                trackPipAnimationHintView$positionInWindow = PipHintTrackerKt.trackPipAnimationHintView$positionInWindow(this.$view);
                interfaceC13358B.p(trackPipAnimationHintView$positionInWindow);
                this.$view.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                this.$view.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.$view.addOnAttachStateChangeListener(r32);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$view, onScrollChangedListener, onLayoutChangeListener, r32);
            this.label = 1;
            if (z.a(interfaceC13358B, anonymousClass1, this) == l10) {
                return l10;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C14418j0.n(obj);
        }
        return P0.f98194a;
    }
}
