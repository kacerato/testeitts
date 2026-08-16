package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.inliner.WhyAreYouNotInliningDiagnostic;
import java.util.Set;

public final class C5073Dx0 extends AbstractC5015Cx0 {

    public static final boolean f39695e = true;

    public final com.android.tools.r8.graph.H5 f39696a;

    public final com.android.tools.r8.graph.H5 f39697b;

    public final C5094Ef0 f39698c;

    public boolean f39699d = false;

    public C5073Dx0(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f39696a = h52;
        this.f39697b = h53;
        this.f39698c = c4798y.E().f50691j;
    }

    public final void a(String str) {
        StringBuilder sb2 = new StringBuilder("Method `");
        sb2.append(this.f39696a.r());
        sb2.append("` was not inlined into `");
        sb2.append(this.f39697b.r());
        if (str != null) {
            sb2.append("`: ");
            sb2.append(str);
        } else {
            sb2.append("`.");
        }
        C5094Ef0 c5094Ef0 = this.f39698c;
        WhyAreYouNotInliningDiagnostic whyAreYouNotInliningDiagnostic = new WhyAreYouNotInliningDiagnostic(this.f39697b.f36317b.f36244d, sb2.toString());
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, whyAreYouNotInliningDiagnostic);
        }
        this.f39699d = true;
    }

    @Override
    public final void b() {
        a("inlinee can only be inlined into methods in the same class.");
    }

    @Override
    public final void c() {
        a("inlinee can only be inlined into methods in the same class (and its nest members).");
    }

    @Override
    public final void d() {
        a("inlinee can only be inlined into methods in the same package (declared package private or accesses package private type or member).");
    }

    @Override
    public final void e() {
        a("inlinee can only be inlined into methods in the same package and methods in subtypes of the inlinee's enclosing class(declared protected or accesses protected type or member).");
    }

    @Override
    public final void f() {
        a("inlinee is not accessible from the caller context.");
    }

    @Override
    public final void g() {
        a("inlinee does not have code.");
    }

    @Override
    public final void h() {
        a("unsupported instruction in inlinee.");
    }

    @Override
    public final void i() {
        a("inlinee not processed yet.");
    }

    @Override
    public final void j() {
        a("not inlining due to code size heuristic (inlinee may have multiple callers and is not considered trivial).");
    }

    @Override
    public final void k() {
        a("inlining could increase the main dex size (caller is in main dex and inlinee refers to classes not in main dex).");
    }

    @Override
    public final void l() {
        a("cannot inline across feature splits.");
    }

    @Override
    public final void m() {
        a("cannot inline across startup/non-startup boundary.");
    }

    @Override
    public final void n() {
        a("caller's instruction budget is exceeded.");
    }

    @Override
    public final void o() {
        a("cannot guarantee that the enclosing class of the inlinee is guaranteed to be class initialized before the first side-effecting instruction in the inlinee.");
    }

    @Override
    public final void p() {
        a("method is kept by a Proguard configuration rule.");
    }

    @Override
    public final void q() {
        a("could lead to nondeterministic output since the inlinee is being optimized concurrently.");
    }

    @Override
    public final void r() {
        a("the receiver is always null at the call site.");
    }

    @Override
    public final void s() {
        a("the receiver may be null at the call site.");
    }

    @Override
    public final void t() {
        a("recursive calls are not inlined.");
    }

    @Override
    public final void u() {
        a("could not find a single target.");
    }

    @Override
    public final void v() {
        a("would lead to unsupported resolution of array clone() from within an interface method.");
    }

    @Override
    public final void w() {
        if (!f39695e && !this.f39699d) {
            throw new AssertionError();
        }
        this.f39699d = false;
    }

    @Override
    public final void b(int i10, int i11) {
        a(i10, i11, "could lead to an explosion in the number of moves due to the exceptional control flow", "estimated number of control flow resolution blocks");
    }

    @Override
    public final void c(int i10, int i11) {
        a(i10, i11, "would exceed the caller's instruction budget", "number of instructions in inlinee");
    }

    @Override
    public final void d(int i10, int i11) {
        a(i10, i11, "could negatively impact register allocation due to the number of monitor instructions", "estimated number of locks after inlining");
    }

    @Override
    public final void b(C9225rE c9225rE) {
        a("assignment to missing field `" + ((Object) c9225rE.getField()) + "`.");
    }

    public final void a(int i10, int i11, String str, String str2) {
        a(str + " (" + str2 + ": " + i10 + ", threshold: " + i11 + ").");
    }

    @Override
    public final void a() {
        a("computed API level for caller is unknown");
    }

    @Override
    public final void a(int i10, int i11) {
        a("number of arguments (" + i10 + ") does not match arity of method (" + i11 + ").");
    }

    @Override
    public final void a(com.android.tools.r8.androidapi.f fVar, com.android.tools.r8.androidapi.f fVar2) {
        boolean z10 = f39695e;
        if (!z10 && !fVar.q()) {
            throw new AssertionError();
        }
        if (fVar2.U()) {
            a("computed API level for inlinee is unknown");
            return;
        }
        if (!z10 && !fVar2.q()) {
            throw new AssertionError();
        }
        a("computed API level for inlinee (" + ((Object) fVar2.F().a()) + ") is higher than caller's (" + ((Object) fVar.F().a()) + ")");
    }

    @Override
    public final void a(Set set) {
        com.android.tools.r8.ir.optimize.U u10 = com.android.tools.r8.ir.optimize.U.f54812f;
        a("not a valid inlining reason (was: " + ((Object) u10) + ", allowed: one of " + C10656zq0.a(", ", set) + ").");
    }

    @Override
    public final void a(C9225rE c9225rE) {
        C4554l1 field = c9225rE.getField();
        a("final field `" + ((Object) field) + "` must be initialized in a constructor of `" + this.f39696a.p().j0() + "`.");
    }

    @Override
    public final void a(QJ qj2) {
        a("must invoke a constructor from the class being instantiated (would invoke `" + qj2.B2().j0() + "`).");
    }

    @Override
    public final void a(AbstractC10561zE abstractC10561zE) {
        a("would lead to use of uninitialized object (user: `" + abstractC10561zE.toString() + "`).");
    }
}
