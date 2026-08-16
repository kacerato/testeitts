package com.itsmagic.engine.Core.Components.Settings.Server.UserSystem;

import Z6.i;
import android.content.Context;
import android.provider.Telephony;
import android.util.Log;
import bd.C3867a;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import ed.C13056c;
import f3.C13183b;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
import t3.C15377a;
import v1.AbstractC15790k;
import v1.InterfaceC15784e;
import y0.C16131b;

public class UserController implements Serializable {

    public static final List<I8.a> f72570d = new LinkedList();

    @Expose
    private String adm;

    public I8.d f72572c;

    @Expose
    private String cloudSyncPlan;

    @Expose
    private String coins;

    @Expose
    private String createdAt;

    @Expose
    private String firebaseUID;

    @Expose
    private String funds;

    @Expose
    private boolean isGoogle;

    @Expose
    private String level;

    @Expose
    private boolean logged;

    @Expose
    private String partner;

    @Expose
    private boolean removeAds;

    @Expose
    private boolean requireUserActionToLoginNext;

    @Expose
    private String upXp;

    @Expose
    private String usedSeconds;

    @Expose
    private String userID;

    @Expose
    private String username;

    @Expose
    private String xp;

    @Expose
    private String token = "";

    public long f72571b = 0;

    public class a implements hd.d {

        public final Context f72573a;

        public a(final Context val$context) {
            this.f72573a = val$context;
        }

        @Override
        public void a(String result) {
            System.out.println("ERROR:" + result);
            if (ed.f.a(result, this.f72573a, null) != 1) {
                JSONObject h10 = hd.c.h(result);
                i.y1("Ops!", hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE) + ": " + hd.c.g(h10, "error_message"));
            }
        }

        @Override
        public void b(String result) {
            System.out.println(result);
            int w12 = Nc.b.w1(UserController.this.coins) + Nc.b.w1(hd.c.g(hd.c.h(result), "add"));
            UserController.this.coins = "" + w12;
            UserController.this.X();
        }
    }

    public class b extends HashMap<String, String> {
        public b() {
        }
    }

    public class c implements hd.d {

        public final g f72576a;

        public final Context f72577b;

        public class a implements q.i.L {

            public class RunnableC1174a implements Runnable {
                public RunnableC1174a() {
                }

                @Override
                public void run() {
                    i.y1("Ops!", new C3867a("You have been logged out of your account", "Voc\u00ea foi desconectado da sua conta").toString());
                }
            }

            public a() {
            }

            @Override
            public void a() {
                N7.c.j0(new RunnableC1174a());
                UserController.this.V();
            }

            @Override
            public void isActive() {
            }

            @Override
            public void onError(String result) {
                g gVar;
                if (ed.f.a(result, c.this.f72577b, null) >= 1 || (gVar = c.this.f72576a) == null) {
                    return;
                }
                gVar.a();
            }
        }

        public c(final g val$updateListener, final Context val$context) {
            this.f72576a = val$updateListener;
            this.f72577b = val$context;
        }

        @Override
        public void a(String result) {
            g gVar;
            Log.d("UserController", "ERROR: " + result);
            JSONObject h10 = hd.c.h(result);
            hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
            if (hd.c.g(h10, "error_message").equals("tokenProibited")) {
                q.i.l(new a());
            } else {
                if (ed.f.a(result, this.f72577b, null) >= 1 || (gVar = this.f72576a) == null) {
                    return;
                }
                gVar.a();
            }
        }

        @Override
        public void b(String result) {
            Log.d("UserController", result);
            if (UserController.this.Q()) {
                JSONObject h10 = hd.c.h(result);
                UserController.this.coins = hd.c.g(h10, "coins");
                UserController.this.partner = hd.c.g(h10, "premium");
                UserController.this.adm = hd.c.g(h10, "adm");
                UserController.this.firebaseUID = hd.c.g(h10, "firebaseUID");
                UserController.this.funds = hd.c.g(h10, "funds");
                UserController.this.createdAt = hd.c.g(h10, "createdAt");
                UserController.this.removeAds = "true".equalsIgnoreCase(hd.c.g(h10, "remove_ads"));
                UserController.this.level = hd.c.g(h10, "level");
                UserController.this.xp = hd.c.g(h10, "xp");
                UserController.this.upXp = hd.c.g(h10, "upXp");
                UserController.this.usedSeconds = hd.c.g(h10, "usedSeconds");
                UserController.this.cloudSyncPlan = hd.c.g(h10, "cloudSyncPlan");
                UserController.this.username = hd.c.g(h10, "name");
                UserController.this.isGoogle = "true".equals(hd.c.g(h10, "isGoogle"));
                if (!UserController.this.isGoogle) {
                    R6.a.q1();
                }
                UserController.this.a0(false);
                UserController.this.X();
                g gVar = this.f72576a;
                if (gVar != null) {
                    gVar.onSuccess();
                }
            }
        }
    }

    public class d extends HashMap<String, String> {
        public d() {
        }
    }

    public class e implements Runnable {
        public e() {
        }

        public static void c(AbstractC15790k abstractC15790k) {
            System.out.println("RevokeAccess success");
        }

        public static void d(C16131b c16131b, AbstractC15790k abstractC15790k) {
            if (abstractC15790k.v()) {
                c16131b.h0().f(new InterfaceC15784e() {
                    @Override
                    public final void a(AbstractC15790k abstractC15790k2) {
                        UserController.e.c(abstractC15790k2);
                    }
                });
                System.out.println("Log out success");
                return;
            }
            System.out.println("Log out failed: " + abstractC15790k.q().getMessage());
        }

        @Override
        public void run() {
            try {
                final C16131b z10 = N7.c.z();
                z10.C().f(new InterfaceC15784e() {
                    @Override
                    public final void a(AbstractC15790k abstractC15790k) {
                        UserController.e.d(C16131b.this, abstractC15790k);
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class f extends HashMap<String, String> {

        public final Context f72583b;

        public f(final Context val$context) {
            this.f72583b = val$context;
            put(C13183b.f85996h, UserController.this.token);
            put("appversion", W7.b.f27306f.b(val$context));
        }
    }

    public interface g {
        void a();

        void onSuccess();
    }

    public UserController() {
    }

    public static boolean N() {
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        return userController != null && userController.Q() && aVar.f2461d.L() != null && aVar.f2461d.L().equals("ITsMagic");
    }

    public static boolean P() {
        C8.a aVar;
        UserController userController;
        return !C15377a.f109719g.booleanValue() && (userController = (aVar = W7.b.f27306f).f2461d) != null && userController.Q() && aVar.f2461d.L().equalsIgnoreCase("javabuilder");
    }

    public static boolean U() {
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        return userController != null && userController.Q() && aVar.f2461d.T();
    }

    public static void W() {
        N5.a.E1();
    }

    public static void Y(I8.a listener) {
        listener.getClass();
        List<I8.a> list = f72570d;
        synchronized (list) {
            list.remove(listener);
        }
    }

    public static boolean Z(Context context) {
        UserController userController = W7.b.f27306f.f2461d;
        if (userController != null && userController.Q()) {
            return true;
        }
        W();
        return false;
    }

    public static void u(I8.a listener) {
        listener.getClass();
        List<I8.a> list = f72570d;
        synchronized (list) {
            list.add(listener);
        }
    }

    public static boolean w() {
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        return (userController != null && userController.Q() && aVar.f2461d.T()) ? false : true;
    }

    public String A() {
        String str = this.funds;
        int i10 = 0;
        if (str != null && !str.isEmpty() && !this.funds.equals("null")) {
            i10 = Nc.b.x1(this.funds, 0);
        }
        if (i10 > 0) {
            return Nc.b.t0(i10 / 100.0f);
        }
        return i10 + "";
    }

    public String B() {
        if (this.firebaseUID == null) {
            this.firebaseUID = "";
        }
        return this.firebaseUID;
    }

    public String C() {
        String str = this.funds;
        if (str == null || str.isEmpty()) {
            this.funds = "0";
        }
        return this.funds;
    }

    public String D(Context context) {
        if (this.f72571b <= 0) {
            this.f72571b = System.nanoTime();
        }
        if (((float) (System.nanoTime() - this.f72571b)) / 1.0E9f > 15.0f) {
            j0();
            this.f72571b = System.nanoTime();
        }
        return this.coins;
    }

    public int E() {
        return Nc.b.w1(this.level);
    }

    public String F() {
        return !Q() ? "" : this.partner;
    }

    @Deprecated
    public HashMap<String, String> G(Context context) {
        return new f(context);
    }

    public String H() {
        return this.token;
    }

    public int I() {
        return Nc.b.w1(this.upXp);
    }

    public String J() {
        return this.usedSeconds;
    }

    public String K() {
        return this.userID;
    }

    public String L() {
        return this.username;
    }

    public int M() {
        return Nc.b.w1(this.xp);
    }

    public boolean O() {
        return this.isGoogle;
    }

    public boolean Q() {
        return this.logged;
    }

    public boolean R() {
        return this.removeAds;
    }

    public boolean S() {
        return this.requireUserActionToLoginNext;
    }

    public boolean T() {
        String str;
        return (!Q() || (str = this.partner) == null || str.isEmpty()) ? false : true;
    }

    public void V() {
        N7.c.j0(new e());
        this.logged = false;
        this.userID = "";
        this.token = "";
        this.coins = "0";
        this.partner = "";
        this.firebaseUID = "";
        this.isGoogle = false;
        this.username = null;
        this.adm = "";
        a0(false);
        List<I8.a> list = f72570d;
        synchronized (list) {
            if (list != null) {
                if (!list.isEmpty()) {
                    Iterator<I8.a> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().update();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    public final void X() {
        try {
            a0(false);
            List<I8.a> list = f72570d;
            synchronized (list) {
                if (list != null) {
                    if (!list.isEmpty()) {
                        Iterator<I8.a> it = list.iterator();
                        while (it.hasNext()) {
                            try {
                                it.next().update();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a0(boolean saveAsync) {
        I8.d dVar = this.f72572c;
        if (dVar != null) {
            dVar.a(saveAsync);
        }
    }

    public void b0(I8.d controlListener) {
        this.f72572c = controlListener;
    }

    public void c0(String firebaseUID) {
        this.firebaseUID = firebaseUID;
    }

    public void d0(boolean google) {
        this.isGoogle = google;
    }

    public void e0(boolean logged, Context context, boolean saveAsync) {
        this.logged = logged;
        D(context);
        a0(saveAsync);
    }

    public void f0(boolean requireUserActionToLoginNext) {
        this.requireUserActionToLoginNext = requireUserActionToLoginNext;
    }

    public void g0(String token) {
        this.token = token;
    }

    public void h0(String userID) {
        this.userID = userID;
    }

    public void i0(String username) {
        this.username = username;
    }

    public void j0() {
        String str;
        if (!Q() || (str = this.username) == null || str.isEmpty()) {
            return;
        }
        k0(null);
    }

    public void k0(g updateListener) {
        if (!Q()) {
            if (updateListener != null) {
                updateListener.a();
            }
        } else {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new c(updateListener, t10));
            d dVar = new d();
            dVar.putAll(W7.b.f27306f.f2461d.G(t10));
            c13056c.d(new hd.e(H8.a.a(H8.a.f8299b, "updateUserInfo.php"), dVar, t10));
        }
    }

    public void s(int value) {
        this.coins = "" + (Nc.b.w1(this.coins) + value);
        X();
    }

    public void v(Context context) {
        s(5);
        C13056c c13056c = new C13056c(new a(context));
        b bVar = new b();
        C8.a aVar = W7.b.f27306f;
        bVar.putAll(aVar.f2461d.G(context));
        H8.a aVar2 = aVar.f2460c;
        c13056c.d(new hd.e(H8.a.a(H8.a.f8299b, "addRewardedEarn.php"), bVar, context));
    }

    public String x() {
        if (this.adm == null) {
            this.adm = "";
        }
        return this.adm;
    }

    public String y() {
        return this.cloudSyncPlan;
    }

    public String z() {
        String str = this.coins;
        if (str == null || str.isEmpty()) {
            this.coins = "0";
        }
        return this.coins;
    }

    public UserController(I8.d controlListener) {
        this.f72572c = controlListener;
    }
}
