package N2;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.C12267c4;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12564r1;
import com.google.firebase.analytics.FirebaseAnalytics;

public final class c {

    public static final AbstractC12564r1 f15470a = AbstractC12564r1.F("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", FirebaseAnalytics.c.f67641g, "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    public static final AbstractC12521g1 f15471b = AbstractC12521g1.E("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    public static final AbstractC12521g1 f15472c = AbstractC12521g1.A("auto", "app", "am");

    public static final AbstractC12521g1 f15473d = AbstractC12521g1.z("_r", "_dbg");

    public static final AbstractC12521g1 f15474e = new AbstractC12521g1.a().b(C12267c4.f63070a).b(C12267c4.f63071b).e();

    public static final AbstractC12521g1 f15475f = AbstractC12521g1.z("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static final int f15476g = 0;

    public static boolean a(String str) {
        return !f15472c.contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean b(String str, Bundle bundle) {
        if (f15471b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        AbstractC12521g1 abstractC12521g1 = f15473d;
        int size = abstractC12521g1.size();
        int i10 = 0;
        while (i10 < size) {
            boolean containsKey = bundle.containsKey((String) abstractC12521g1.get(i10));
            i10++;
            if (containsKey) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(String str) {
        return !f15470a.contains(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean d(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals(AppMeasurement.f62514c) || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals(AppMeasurement.f62514c) || str.equals(AppMeasurement.f62515d);
        }
        if (f15474e.contains(str2)) {
            return false;
        }
        AbstractC12521g1 abstractC12521g1 = f15475f;
        int size = abstractC12521g1.size();
        int i10 = 0;
        while (i10 < size) {
            boolean matches = str2.matches((String) abstractC12521g1.get(i10));
            i10++;
            if (matches) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean e(String str, String str2, Bundle bundle) {
        char c10;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!a(str) || bundle == null) {
            return false;
        }
        AbstractC12521g1 abstractC12521g1 = f15473d;
        int size = abstractC12521g1.size();
        int i10 = 0;
        while (i10 < size) {
            boolean containsKey = bundle.containsKey((String) abstractC12521g1.get(i10));
            i10++;
            if (containsKey) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode == 101200) {
            if (str.equals(AppMeasurement.f62514c)) {
                c10 = 0;
            }
            c10 = '\uffff';
        } else if (hashCode != 101230) {
            if (hashCode == 3142703 && str.equals(AppMeasurement.f62515d)) {
                c10 = 2;
            }
            c10 = '\uffff';
        } else {
            if (str.equals("fdl")) {
                c10 = 1;
            }
            c10 = '\uffff';
        }
        if (c10 == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        }
        if (c10 == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        if (c10 != 2) {
            return false;
        }
        bundle.putString("_cis", "fiam_integration");
        return true;
    }
}
