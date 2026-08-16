package androidx.activity;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public class ComponentDialog extends Dialog implements LifecycleOwner, OnBackPressedDispatcherOwner {
    private LifecycleRegistry _lifecycleRegistry;
    private final OnBackPressedDispatcher onBackPressedDispatcher;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComponentDialog(Context context) {
        this(context, 0, 2, null);
        M.p(context, "context");
    }

    private final LifecycleRegistry getLifecycleRegistry() {
        LifecycleRegistry lifecycleRegistry = this._lifecycleRegistry;
        if (lifecycleRegistry != null) {
            return lifecycleRegistry;
        }
        LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this);
        this._lifecycleRegistry = lifecycleRegistry2;
        return lifecycleRegistry2;
    }

    private static void getOnBackPressedDispatcher$annotations() {
    }

    private final void initViewTreeOwners() {
        Window window = getWindow();
        M.m(window);
        ViewTreeLifecycleOwner.set(window.getDecorView(), this);
        Window window2 = getWindow();
        M.m(window2);
        View decorView = window2.getDecorView();
        M.o(decorView, "window!!.decorView");
        ViewTreeOnBackPressedDispatcherOwner.set(decorView, this);
    }

    public static final void m668onBackPressedDispatcher$lambda1(ComponentDialog this$0) {
        M.p(this$0, "this$0");
        super.onBackPressed();
    }

    @Override
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        M.p(view, "view");
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    @Override
    public final Lifecycle getLifecycle() {
        return getLifecycleRegistry();
    }

    @Override
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.onBackPressedDispatcher;
    }

    @Override
    public void onBackPressed() {
        this.onBackPressedDispatcher.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackPressedDispatcher.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        }
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
    }

    @Override
    public void onStart() {
        super.onStart();
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
    }

    @Override
    public void onStop() {
        getLifecycleRegistry().handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        this._lifecycleRegistry = null;
        super.onStop();
    }

    @Override
    public void setContentView(int i10) {
        initViewTreeOwners();
        super.setContentView(i10);
    }

    public ComponentDialog(Context context, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComponentDialog(Context context, int i10) {
        super(context, i10);
        M.p(context, "context");
        this.onBackPressedDispatcher = new OnBackPressedDispatcher(new Runnable() {
            @Override
            public final void run() {
                ComponentDialog.m668onBackPressedDispatcher$lambda1(ComponentDialog.this);
            }
        });
    }

    @Override
    public void setContentView(View view) {
        M.p(view, "view");
        initViewTreeOwners();
        super.setContentView(view);
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        M.p(view, "view");
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }
}
