package W0;

import G0.A;
import W0.c;
import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
@SuppressLint({"NewApi"})
public final class b extends c.a {

    public final Fragment f27204e;

    public b(Fragment fragment) {
        this.f27204e = fragment;
    }

    @Nullable
    @C0.a
    public static b t(@Nullable Fragment fragment) {
        if (fragment != null) {
            return new b(fragment);
        }
        return null;
    }

    @Override
    public final void A(@NonNull d dVar) {
        View view = (View) f.t(dVar);
        A.r(view);
        this.f27204e.registerForContextMenu(view);
    }

    @Override
    public final int O1() {
        return this.f27204e.getId();
    }

    @Override
    public final int P1() {
        return this.f27204e.getTargetRequestCode();
    }

    @Override
    @Nullable
    public final Bundle Q1() {
        return this.f27204e.getArguments();
    }

    @Override
    public final void R(boolean z10) {
        this.f27204e.setHasOptionsMenu(z10);
    }

    @Override
    @Nullable
    public final c R1() {
        return t(this.f27204e.getParentFragment());
    }

    @Override
    @NonNull
    public final d T1() {
        return f.l0(this.f27204e.getActivity());
    }

    @Override
    public final void U(boolean z10) {
        this.f27204e.setMenuVisibility(z10);
    }

    @Override
    public final void Y(boolean z10) {
        this.f27204e.setRetainInstance(z10);
    }

    @Override
    @Nullable
    public final c a() {
        return t(this.f27204e.getTargetFragment());
    }

    @Override
    public final void a1(@NonNull d dVar) {
        View view = (View) f.t(dVar);
        A.r(view);
        this.f27204e.unregisterForContextMenu(view);
    }

    @Override
    @NonNull
    public final d b() {
        return f.l0(this.f27204e.getView());
    }

    @Override
    public final void b0(@NonNull Intent intent) {
        this.f27204e.startActivity(intent);
    }

    @Override
    @NonNull
    public final d c() {
        return f.l0(this.f27204e.getResources());
    }

    @Override
    @Nullable
    public final String d() {
        return this.f27204e.getTag();
    }

    @Override
    public final void e0(@NonNull Intent intent, int i10) {
        this.f27204e.startActivityForResult(intent, i10);
    }

    @Override
    public final boolean g() {
        return this.f27204e.getUserVisibleHint();
    }

    @Override
    public final boolean i() {
        return this.f27204e.isAdded();
    }

    @Override
    public final boolean m() {
        return this.f27204e.isDetached();
    }

    @Override
    public final boolean n() {
        return this.f27204e.getRetainInstance();
    }

    @Override
    public final boolean o() {
        return this.f27204e.isRemoving();
    }

    @Override
    public final boolean p() {
        return this.f27204e.isResumed();
    }

    @Override
    public final boolean q() {
        return this.f27204e.isHidden();
    }

    @Override
    public final boolean r() {
        return this.f27204e.isInLayout();
    }

    @Override
    public final void t0(boolean z10) {
        this.f27204e.setUserVisibleHint(z10);
    }

    @Override
    public final boolean u() {
        return this.f27204e.isVisible();
    }
}
