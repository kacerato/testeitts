package B0;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public final class C2316a {

    public static class C0022a {

        @Nullable
        public Account f1170a;

        public boolean f1171b;

        @Nullable
        public ArrayList f1172c;

        @Nullable
        public ArrayList f1173d;

        public boolean f1174e;

        @Nullable
        public String f1175f;

        @Nullable
        public Bundle f1176g;

        public boolean f1177h;

        public int f1178i;

        @Nullable
        public String f1179j;

        public boolean f1180k;

        @Nullable
        public C2340z f1181l;

        @Nullable
        public String f1182m;

        public boolean f1183n;

        public boolean f1184o;

        public static class C0023a {

            @Nullable
            public Account f1185a;

            @Nullable
            public ArrayList f1186b;

            @Nullable
            public ArrayList f1187c;

            public boolean f1188d = false;

            @Nullable
            public String f1189e;

            @Nullable
            public Bundle f1190f;

            @NonNull
            public C0022a a() {
                G0.A.b(true, "We only support hostedDomain filter for account chip styled account picker");
                G0.A.b(true, "Consent is only valid for account chip styled account picker");
                C0022a c0022a = new C0022a();
                c0022a.f1173d = this.f1187c;
                c0022a.f1172c = this.f1186b;
                c0022a.f1174e = this.f1188d;
                c0022a.f1181l = null;
                c0022a.f1179j = null;
                c0022a.f1176g = this.f1190f;
                c0022a.f1170a = this.f1185a;
                c0022a.f1171b = false;
                c0022a.f1177h = false;
                c0022a.f1182m = null;
                c0022a.f1178i = 0;
                c0022a.f1175f = this.f1189e;
                c0022a.f1180k = false;
                c0022a.f1183n = false;
                c0022a.f1184o = false;
                return c0022a;
            }

            @NonNull
            public C0023a b(@Nullable List<Account> list) {
                this.f1186b = list == null ? null : new ArrayList(list);
                return this;
            }

            @NonNull
            public C0023a c(@Nullable List<String> list) {
                this.f1187c = list == null ? null : new ArrayList(list);
                return this;
            }

            @NonNull
            public C0023a d(boolean z10) {
                this.f1188d = z10;
                return this;
            }

            @NonNull
            public C0023a e(@Nullable Bundle bundle) {
                this.f1190f = bundle;
                return this;
            }

            @NonNull
            public C0023a f(@Nullable Account account) {
                this.f1185a = account;
                return this;
            }

            @NonNull
            public C0023a g(@Nullable String str) {
                this.f1189e = str;
                return this;
            }
        }

        public static boolean D(C0022a c0022a) {
            boolean z10 = c0022a.f1183n;
            return false;
        }

        public static boolean a(C0022a c0022a) {
            boolean z10 = c0022a.f1184o;
            return false;
        }

        public static boolean b(C0022a c0022a) {
            boolean z10 = c0022a.f1171b;
            return false;
        }

        public static boolean c(C0022a c0022a) {
            boolean z10 = c0022a.f1177h;
            return false;
        }

        public static boolean d(C0022a c0022a) {
            boolean z10 = c0022a.f1180k;
            return false;
        }

        public static int e(C0022a c0022a) {
            int i10 = c0022a.f1178i;
            return 0;
        }

        public static C2340z h(C0022a c0022a) {
            C2340z c2340z = c0022a.f1181l;
            return null;
        }

        public static String i(C0022a c0022a) {
            String str = c0022a.f1179j;
            return null;
        }

        public static String j(C0022a c0022a) {
            String str = c0022a.f1182m;
            return null;
        }
    }

    @NonNull
    public static Intent a(@NonNull C0022a c0022a) {
        Intent intent = new Intent();
        C0022a.d(c0022a);
        C0022a.i(c0022a);
        G0.A.b(true, "We only support hostedDomain filter for account chip styled account picker");
        C0022a.h(c0022a);
        G0.A.b(true, "Consent is only valid for account chip styled account picker");
        C0022a.b(c0022a);
        G0.A.b(true, "Making the selected account non-clickable is only supported for the THEME_DAY_NIGHT_GOOGLE_MATERIAL2, THEME_LIGHT_GOOGLE_MATERIAL3, THEME_DARK_GOOGLE_MATERIAL3 or THEME_DAY_NIGHT_GOOGLE_MATERIAL3 themes");
        C0022a.d(c0022a);
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", c0022a.f1172c);
        if (c0022a.f1173d != null) {
            intent.putExtra("allowableAccountTypes", (String[]) c0022a.f1173d.toArray(new String[0]));
        }
        intent.putExtra("addAccountOptions", c0022a.f1176g);
        intent.putExtra("selectedAccount", c0022a.f1170a);
        C0022a.b(c0022a);
        intent.putExtra("selectedAccountIsNotClickable", false);
        intent.putExtra("alwaysPromptForAccount", c0022a.f1174e);
        intent.putExtra("descriptionTextOverride", c0022a.f1175f);
        C0022a.c(c0022a);
        intent.putExtra("setGmsCoreAccount", false);
        C0022a.j(c0022a);
        intent.putExtra("realClientPackage", (String) null);
        C0022a.e(c0022a);
        intent.putExtra("overrideTheme", 0);
        C0022a.d(c0022a);
        intent.putExtra("overrideCustomTheme", 0);
        C0022a.i(c0022a);
        intent.putExtra("hostedDomainFilter", (String) null);
        Bundle bundle = new Bundle();
        C0022a.d(c0022a);
        C0022a.h(c0022a);
        C0022a.D(c0022a);
        C0022a.a(c0022a);
        if (!bundle.isEmpty()) {
            intent.putExtra("first_party_options_bundle", bundle);
        }
        return intent;
    }

    @NonNull
    @Deprecated
    public static Intent b(@Nullable Account account, @Nullable ArrayList<Account> arrayList, @Nullable String[] strArr, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String[] strArr2, @Nullable Bundle bundle) {
        Intent intent = new Intent();
        G0.A.b(true, "We only support hostedDomain filter for account chip styled account picker");
        intent.setAction("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
        intent.setPackage("com.google.android.gms");
        intent.putExtra("allowableAccounts", arrayList);
        intent.putExtra("allowableAccountTypes", strArr);
        intent.putExtra("addAccountOptions", bundle);
        intent.putExtra("selectedAccount", account);
        intent.putExtra("alwaysPromptForAccount", z10);
        intent.putExtra("descriptionTextOverride", str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra("addAccountRequiredFeatures", strArr2);
        intent.putExtra("setGmsCoreAccount", false);
        intent.putExtra("overrideTheme", 0);
        intent.putExtra("overrideCustomTheme", 0);
        intent.putExtra("hostedDomainFilter", (String) null);
        return intent;
    }
}
