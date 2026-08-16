package C8;

import N7.c;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;

public class a {

    public String f2462e;

    public int f2463f;

    public String f2464g;

    public final D8.a f2458a = new D8.a();

    public E8.a f2459b = new E8.a();

    public H8.a f2460c = new H8.a();

    public UserController f2461d = null;

    public String f2465h = "";

    public boolean f2466i = false;

    public boolean f2467j = false;

    public String a() {
        return b(c.t());
    }

    public String b(Context context) {
        String str = this.f2462e;
        if (str == null || str.isEmpty()) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                this.f2462e = "" + packageInfo.versionName;
                this.f2463f = packageInfo.versionCode;
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return this.f2462e;
    }

    public int c(Context context) {
        String str = this.f2462e;
        if (str == null || str.isEmpty() || this.f2463f == 0) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                this.f2462e = "" + packageInfo.versionName;
                this.f2463f = packageInfo.versionCode;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return this.f2463f;
    }

    public String d() {
        String str = this.f2465h;
        if (str == null || str.isEmpty()) {
            System.out.println("HASH IS NULL !!!!!!!!!!!!!!!!!!!!!!!!!!!1");
        }
        return this.f2465h;
    }

    public String e() {
        return this.f2464g;
    }

    public boolean f() {
        if (this.f2467j) {
            return this.f2466i;
        }
        throw new RuntimeException("Please wait start!");
    }

    public void g(Context context) {
        context.getPackageName();
        this.f2467j = true;
    }

    public void h(String currentHash) {
        if (currentHash == null) {
            currentHash = "";
        }
        this.f2465h = currentHash;
    }
}
