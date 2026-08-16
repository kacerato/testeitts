package com.itsmagic.engine.Core.Components.GIAP;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.GIAP.b;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import t3.C15377a;

public class GIAP {

    public static boolean f72472a = false;

    public static final int f72473b = 5;

    public static final List<b> f72474c;

    public static final List<b> f72475d;

    public static SerializedData f72476e;

    public static final Object f72477f;

    public static boolean f72478g;

    public static int f72479h;

    public static final List<IPPurchase> f72480i;

    public static class SerializedData {

        @Expose
        final List<IPPurchase> pendingPurchasesForLogin = new SteppedArrayList();
    }

    public interface a {
        void a();

        void onSuccess();
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f72472a = false;
        }
        f72474c = new SteppedArrayList();
        f72475d = new SteppedArrayList();
        f72477f = new Object();
        f72478g = false;
        f72480i = new SteppedArrayList();
    }

    public static void a(Context context, a connectListener) {
    }

    public static void b(IPPurchase purchase) {
    }

    public static void c(Context context, com.itsmagic.engine.Core.Components.GIAP.a downloadListener) {
    }

    public static void d(Context context, com.itsmagic.engine.Core.Components.GIAP.a downloadListener) {
    }

    public static void e(String msg) {
    }

    public static int f() {
        return f72479h;
    }

    public static List<b> g() {
        return new SteppedArrayList(f72474c);
    }

    public static List<IPPurchase> h() {
        return new SteppedArrayList(f72480i);
    }

    public static List<b> i() {
        return new SteppedArrayList(f72475d);
    }

    public static void j(Context context) {
    }

    public static boolean k() {
        return f72478g;
    }

    public static void l() {
    }

    public static void m(String message) {
        Log.d("GIAP", message);
    }

    public static void n(Context context) {
        o(context);
    }

    public static void o(Context context) {
    }

    public static void p(Activity activity, b product) {
    }

    public static void q(Activity activity, b product, b.a subPlan) {
    }
}
