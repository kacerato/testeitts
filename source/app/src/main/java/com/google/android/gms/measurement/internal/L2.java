package com.google.android.gms.measurement.internal;

import B0.C2324i;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12227x7;
import java.util.Arrays;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class L2 {

    public final String f62772a;

    public final Bundle f62773b;

    public Bundle f62774c;

    public final P2 f62775d;

    public L2(P2 p22, String str, Bundle bundle) {
        Objects.requireNonNull(p22);
        this.f62775d = p22;
        G0.A.l(str);
        this.f62772a = str;
        this.f62773b = new Bundle();
    }

    @WorkerThread
    public final Bundle a() {
        char c10;
        if (this.f62774c == null) {
            P2 p22 = this.f62775d;
            String string = p22.p().getString(this.f62772a, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i10);
                            String string2 = jSONObject.getString(C2324i.f1246e);
                            String string3 = jSONObject.getString("t");
                            int hashCode = string3.hashCode();
                            if (hashCode == 100) {
                                if (string3.equals("d")) {
                                    c10 = 1;
                                }
                                c10 = '\uffff';
                            } else if (hashCode == 108) {
                                if (string3.equals("l")) {
                                    c10 = 2;
                                }
                                c10 = '\uffff';
                            } else if (hashCode == 115) {
                                if (string3.equals("s")) {
                                    c10 = 0;
                                }
                                c10 = '\uffff';
                            } else if (hashCode != 3352) {
                                if (hashCode == 3445 && string3.equals("la")) {
                                    c10 = 4;
                                }
                                c10 = '\uffff';
                            } else {
                                if (string3.equals("ia")) {
                                    c10 = 3;
                                }
                                c10 = '\uffff';
                            }
                            if (c10 == 0) {
                                bundle.putString(string2, jSONObject.getString("v"));
                            } else if (c10 == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else if (c10 == 2) {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                            } else if (c10 == 3) {
                                C12227x7.a();
                                if (p22.f62917a.w().H(null, C12281e2.f63171R0)) {
                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                    int length = jSONArray2.length();
                                    int[] iArr = new int[length];
                                    for (int i11 = 0; i11 < length; i11++) {
                                        iArr[i11] = jSONArray2.optInt(i11);
                                    }
                                    bundle.putIntArray(string2, iArr);
                                }
                            } else if (c10 != 4) {
                                p22.f62917a.a().o().b("Unrecognized persisted bundle type. Type", string3);
                            } else {
                                C12227x7.a();
                                if (p22.f62917a.w().H(null, C12281e2.f63171R0)) {
                                    JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                    int length2 = jSONArray3.length();
                                    long[] jArr = new long[length2];
                                    for (int i12 = 0; i12 < length2; i12++) {
                                        jArr[i12] = jSONArray3.optLong(i12);
                                    }
                                    bundle.putLongArray(string2, jArr);
                                }
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            this.f62775d.f62917a.a().o().a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f62774c = bundle;
                } catch (JSONException unused2) {
                    this.f62775d.f62917a.a().o().a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (this.f62774c == null) {
                this.f62774c = this.f62773b;
            }
        }
        return new Bundle((Bundle) G0.A.r(this.f62774c));
    }

    @WorkerThread
    public final void b(Bundle bundle) {
        P2 p22;
        JSONObject jSONObject;
        C12370p3 c12370p3;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        P2 p23 = this.f62775d;
        SharedPreferences.Editor edit = p23.p().edit();
        if (bundle2.size() == 0) {
            edit.remove(this.f62772a);
        } else {
            String str = this.f62772a;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        jSONObject = new JSONObject();
                        jSONObject.put(C2324i.f1246e, str2);
                        C12227x7.a();
                        c12370p3 = p23.f62917a;
                        p22 = p23;
                    } catch (JSONException e10) {
                        e = e10;
                        p22 = p23;
                    }
                    if (c12370p3.w().H(null, C12281e2.f63171R0)) {
                        try {
                        } catch (JSONException e11) {
                            e = e11;
                            this.f62775d.f62917a.a().o().b("Cannot serialize bundle value to SharedPreferences", e);
                            p23 = p22;
                        }
                        if (obj instanceof String) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "l");
                        } else if (obj instanceof int[]) {
                            jSONObject.put("v", Arrays.toString((int[]) obj));
                            jSONObject.put("t", "ia");
                        } else if (obj instanceof long[]) {
                            jSONObject.put("v", Arrays.toString((long[]) obj));
                            jSONObject.put("t", "la");
                        } else if (obj instanceof Double) {
                            jSONObject.put("v", obj.toString());
                            jSONObject.put("t", "d");
                        } else {
                            c12370p3.a().o().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            p23 = p22;
                        }
                        jSONArray.put(jSONObject);
                        p23 = p22;
                    } else {
                        jSONObject.put("v", obj.toString());
                        if (obj instanceof String) {
                            jSONObject.put("t", "s");
                        } else if (obj instanceof Long) {
                            jSONObject.put("t", "l");
                        } else if (obj instanceof Double) {
                            jSONObject.put("t", "d");
                        } else {
                            c12370p3.a().o().b("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                            p23 = p22;
                        }
                        jSONArray.put(jSONObject);
                        p23 = p22;
                    }
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f62774c = bundle2;
    }
}
