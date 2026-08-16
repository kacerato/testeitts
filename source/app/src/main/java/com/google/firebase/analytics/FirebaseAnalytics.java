package com.google.firebase.analytics;

import G0.A;
import L2.f;
import L2.g;
import android.Manifest;
import android.app.Activity;
import android.app.job.JobInfo;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import com.google.android.gms.internal.measurement.I1;
import com.google.android.gms.internal.measurement.K0;
import com.google.android.gms.measurement.internal.InterfaceC12268c5;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import v1.AbstractC15790k;
import v1.C15793n;
import vm.InterfaceC15866d;

public final class FirebaseAnalytics {

    public static volatile FirebaseAnalytics f67623c;

    public final I1 f67624a;

    public ExecutorService f67625b;

    public enum a {
        GRANTED,
        DENIED
    }

    public enum b {
        AD_STORAGE,
        ANALYTICS_STORAGE,
        AD_USER_DATA,
        AD_PERSONALIZATION
    }

    public static class c {

        @NonNull
        public static final String f67626A = "screen_view";

        @NonNull
        public static final String f67627B = "remove_from_cart";

        @NonNull
        public static final String f67628C = "add_shipping_info";

        @NonNull
        public static final String f67629D = "purchase";

        @NonNull
        public static final String f67630E = "refund";

        @NonNull
        public static final String f67631F = "select_item";

        @NonNull
        public static final String f67632G = "select_promotion";

        @NonNull
        public static final String f67633H = "view_cart";

        @NonNull
        public static final String f67634I = "view_promotion";

        @NonNull
        public static final String f67635a = "ad_impression";

        @NonNull
        public static final String f67636b = "add_payment_info";

        @NonNull
        public static final String f67637c = "add_to_cart";

        @NonNull
        public static final String f67638d = "add_to_wishlist";

        @NonNull
        public static final String f67639e = "app_open";

        @NonNull
        public static final String f67640f = "begin_checkout";

        @NonNull
        public static final String f67641g = "campaign_details";

        @NonNull
        public static final String f67642h = "generate_lead";

        @NonNull
        public static final String f67643i = "join_group";

        @NonNull
        public static final String f67644j = "level_end";

        @NonNull
        public static final String f67645k = "level_start";

        @NonNull
        public static final String f67646l = "level_up";

        @NonNull
        public static final String f67647m = "login";

        @NonNull
        public static final String f67648n = "post_score";

        @NonNull
        public static final String f67649o = "search";

        @NonNull
        public static final String f67650p = "select_content";

        @NonNull
        public static final String f67651q = "share";

        @NonNull
        public static final String f67652r = "sign_up";

        @NonNull
        public static final String f67653s = "spend_virtual_currency";

        @NonNull
        public static final String f67654t = "tutorial_begin";

        @NonNull
        public static final String f67655u = "tutorial_complete";

        @NonNull
        public static final String f67656v = "unlock_achievement";

        @NonNull
        public static final String f67657w = "view_item";

        @NonNull
        public static final String f67658x = "view_item_list";

        @NonNull
        public static final String f67659y = "view_search_results";

        @NonNull
        public static final String f67660z = "earn_virtual_currency";
    }

    public static class d {

        @NonNull
        public static final String f67661A = "origin";

        @NonNull
        public static final String f67662B = "price";

        @NonNull
        public static final String f67663C = "quantity";

        @NonNull
        public static final String f67664D = "score";

        @NonNull
        public static final String f67665E = "shipping";

        @NonNull
        public static final String f67666F = "transaction_id";

        @NonNull
        public static final String f67667G = "search_term";

        @NonNull
        public static final String f67668H = "success";

        @NonNull
        public static final String f67669I = "tax";

        @NonNull
        public static final String f67670J = "value";

        @NonNull
        public static final String f67671K = "virtual_currency_name";

        @NonNull
        public static final String f67672L = "campaign";

        @NonNull
        public static final String f67673M = "source";

        @NonNull
        public static final String f67674N = "medium";

        @NonNull
        public static final String f67675O = "term";

        @NonNull
        public static final String f67676P = "content";

        @NonNull
        public static final String f67677Q = "aclid";

        @NonNull
        public static final String f67678R = "cp1";

        @NonNull
        public static final String f67679S = "campaign_id";

        @NonNull
        public static final String f67680T = "source_platform";

        @NonNull
        public static final String f67681U = "creative_format";

        @NonNull
        public static final String f67682V = "marketing_tactic";

        @NonNull
        public static final String f67683W = "item_brand";

        @NonNull
        public static final String f67684X = "item_variant";

        @NonNull
        public static final String f67685Y = "creative_name";

        @NonNull
        public static final String f67686Z = "creative_slot";

        @NonNull
        public static final String f67687a = "achievement_id";

        @NonNull
        public static final String f67688a0 = "affiliation";

        @NonNull
        public static final String f67689b = "ad_format";

        @NonNull
        public static final String f67690b0 = "index";

        @NonNull
        public static final String f67691c = "ad_platform";

        @NonNull
        public static final String f67692c0 = "discount";

        @NonNull
        public static final String f67693d = "ad_source";

        @NonNull
        public static final String f67694d0 = "item_category2";

        @NonNull
        public static final String f67695e = "ad_unit_name";

        @NonNull
        public static final String f67696e0 = "item_category3";

        @NonNull
        public static final String f67697f = "character";

        @NonNull
        public static final String f67698f0 = "item_category4";

        @NonNull
        public static final String f67699g = "travel_class";

        @NonNull
        public static final String f67700g0 = "item_category5";

        @NonNull
        public static final String f67701h = "content_type";

        @NonNull
        public static final String f67702h0 = "item_list_id";

        @NonNull
        public static final String f67703i = "currency";

        @NonNull
        public static final String f67704i0 = "item_list_name";

        @NonNull
        public static final String f67705j = "coupon";

        @NonNull
        public static final String f67706j0 = "items";

        @NonNull
        public static final String f67707k = "start_date";

        @NonNull
        public static final String f67708k0 = "location_id";

        @NonNull
        public static final String f67709l = "end_date";

        @NonNull
        public static final String f67710l0 = "payment_type";

        @NonNull
        public static final String f67711m = "extend_session";

        @NonNull
        public static final String f67712m0 = "promotion_id";

        @NonNull
        public static final String f67713n = "flight_number";

        @NonNull
        public static final String f67714n0 = "promotion_name";

        @NonNull
        public static final String f67715o = "group_id";

        @NonNull
        public static final String f67716o0 = "screen_class";

        @NonNull
        public static final String f67717p = "item_category";

        @NonNull
        public static final String f67718p0 = "screen_name";

        @NonNull
        public static final String f67719q = "item_id";

        @NonNull
        public static final String f67720q0 = "shipping_tier";

        @NonNull
        public static final String f67721r = "item_name";

        @NonNull
        public static final String f67722s = "location";

        @NonNull
        public static final String f67723t = "level";

        @NonNull
        public static final String f67724u = "level_name";

        @NonNull
        public static final String f67725v = "method";

        @NonNull
        public static final String f67726w = "number_of_nights";

        @NonNull
        public static final String f67727x = "number_of_passengers";

        @NonNull
        public static final String f67728y = "number_of_rooms";

        @NonNull
        public static final String f67729z = "destination";
    }

    public static class e {

        @NonNull
        public static final String f67730a = "sign_up_method";

        @NonNull
        public static final String f67731b = "allow_personalized_ads";
    }

    public FirebaseAnalytics(I1 i12) {
        A.r(i12);
        this.f67624a = i12;
    }

    @NonNull
    @RequiresPermission(allOf = {Manifest.permission.INTERNET, "android.permission.ACCESS_NETWORK_STATE", Manifest.permission.WAKE_LOCK})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f67623c == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f67623c == null) {
                        f67623c = new FirebaseAnalytics(I1.v(context, null));
                    }
                } finally {
                }
            }
        }
        return f67623c;
    }

    @Nullable
    @Keep
    public static InterfaceC12268c5 getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        I1 v10 = I1.v(context, bundle);
        if (v10 == null) {
            return null;
        }
        return new g(v10);
    }

    @NonNull
    public AbstractC15790k<String> a() {
        try {
            return C15793n.d(l(), new L2.e(this));
        } catch (RuntimeException e10) {
            this.f67624a.d(5, "Failed to schedule task for getAppInstanceId", null, null, null);
            return C15793n.f(e10);
        }
    }

    @NonNull
    public AbstractC15790k<Long> b() {
        try {
            return C15793n.d(l(), new f(this));
        } catch (RuntimeException e10) {
            this.f67624a.d(5, "Failed to schedule task for getSessionId", null, null, null);
            return C15793n.f(e10);
        }
    }

    public void c(@NonNull @Size(max = 40, min = 1) String str, @Nullable Bundle bundle) {
        this.f67624a.C(str, bundle);
    }

    public void d() {
        this.f67624a.N();
    }

    public void e(boolean z10) {
        this.f67624a.L(Boolean.valueOf(z10));
    }

    public void f(@NonNull Map<b, a> map) {
        Bundle bundle = new Bundle();
        a aVar = map.get(b.AD_STORAGE);
        if (aVar != null) {
            int ordinal = aVar.ordinal();
            if (ordinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (ordinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        a aVar2 = map.get(b.ANALYTICS_STORAGE);
        if (aVar2 != null) {
            int ordinal2 = aVar2.ordinal();
            if (ordinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (ordinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        a aVar3 = map.get(b.AD_USER_DATA);
        if (aVar3 != null) {
            int ordinal3 = aVar3.ordinal();
            if (ordinal3 == 0) {
                bundle.putString("ad_user_data", "granted");
            } else if (ordinal3 == 1) {
                bundle.putString("ad_user_data", "denied");
            }
        }
        a aVar4 = map.get(b.AD_PERSONALIZATION);
        if (aVar4 != null) {
            int ordinal4 = aVar4.ordinal();
            if (ordinal4 == 0) {
                bundle.putString("ad_personalization", "granted");
            } else if (ordinal4 == 1) {
                bundle.putString("ad_personalization", "denied");
            }
        }
        this.f67624a.M(bundle);
    }

    public void g(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle = new Bundle(bundle);
        }
        this.f67624a.l(bundle);
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) C15793n.b(com.google.firebase.installations.a.t().getId(), JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public void h(long j10) {
        this.f67624a.O(j10);
    }

    public void i(@Nullable String str) {
        this.f67624a.J(str);
    }

    public void j(@NonNull @Size(max = 24, min = 1) String str, @Nullable @Size(max = 36) String str2) {
        this.f67624a.F(null, str, str2, false);
    }

    public final I1 k() {
        return this.f67624a;
    }

    @InterfaceC15866d({"this.executor"})
    public final ExecutorService l() {
        ExecutorService executorService;
        synchronized (FirebaseAnalytics.class) {
            try {
                if (this.f67625b == null) {
                    this.f67625b = new L2.d(this, 0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                }
                executorService = this.f67625b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return executorService;
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f67624a.K(K0.b(activity), str, str2);
    }
}
