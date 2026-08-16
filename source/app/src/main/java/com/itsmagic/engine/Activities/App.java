package com.itsmagic.engine.Activities;

import K2.g;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatDelegate;
import com.itsmagic.engine.Activities.Editor.Utils.t;
import n.C14331a;
import u3.InterfaceC15574a;
import w3.k;

public class App extends Application implements Application.ActivityLifecycleCallbacks {

    public static InterfaceC15574a f69782c;

    public Activity f69783b;

    public class a implements InterfaceC15574a {
        public a() {
        }

        @Override
        public Application a() {
            return App.this;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            App.this.getCodeCacheDir().setReadOnly();
        }
    }

    public enum c {
        Engine,
        CityCreator
    }

    public static c a() {
        return C14331a.b();
    }

    @Override
    public void attachBaseContext(Context base) {
        super.attachBaseContext(k.a(base, base.getSharedPreferences("ui_config", 0).getFloat("scale_factor", 1.0f)));
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        this.f69783b = activity;
    }

    @Override
    public void onActivityStopped(Activity activity) {
    }

    @Override
    public void onCreate() {
        super.onCreate();
        t.b(this);
        AppCompatDelegate.setDefaultNightMode(1);
        f69782c = new a();
        registerActivityLifecycleCallbacks(this);
        new Thread(new b()).start();
        g.x(this);
    }
}
