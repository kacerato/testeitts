package com.itsmagic.engine.Activities.InitScreen;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.InitScreen.Screens.UIScaleScreen;
import com.itsmagic.engine.Activities.InitScreen.a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kd.C13965a;
import kd.InterfaceC13966b;
import mc.k;
import v3.l;

public class InitActivity extends AppCompatActivity {

    public final List<com.itsmagic.engine.Activities.InitScreen.a> f72360b;

    public LinearLayout f72361c;

    public int f72362d;

    public com.itsmagic.engine.Activities.InitScreen.a f72363e;

    public LayoutInflater f72364f;

    public final AtomicBoolean f72365g;

    public final List<e> f72366h;

    public class a extends N7.a {

        public final InitActivity f72367a;

        public a(final InitActivity val$activity) {
            this.f72367a = val$activity;
        }

        @Override
        public Activity a() {
            return this.f72367a;
        }

        @Override
        public Context getContext() {
            return this.f72367a;
        }

        @Override
        public LayoutInflater w() {
            return InitActivity.this.f72364f;
        }

        @Override
        public void y(int code, Intent intent, l listener) {
            listener.getClass();
            intent.getClass();
            synchronized (InitActivity.this.f72366h) {
                InitActivity.this.f72366h.add(new e(code, listener));
            }
            this.f72367a.startActivityForResult(intent, code);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            k.d(InitActivity.this, new File(ec.b.d()));
            InitActivity.this.f72365g.set(true);
        }
    }

    public class c implements a.InterfaceC1165a {
        public c() {
        }

        @Override
        public Activity a() {
            return InitActivity.this;
        }

        @Override
        public void b() {
            InitActivity.this.k();
        }

        @Override
        public void c() {
            InitActivity.this.finish();
        }
    }

    public class d implements InterfaceC13966b {

        public final Activity f72371a;

        public d(final Activity val$act) {
            this.f72371a = val$act;
        }

        @Override
        public void run() {
            if (!InitActivity.this.f72365g.get()) {
                new C13965a().a(50, this);
            } else {
                InitActivity.this.startActivity(new Intent(this.f72371a, (Class<?>) EditorActivity.class));
                InitActivity.this.finish();
            }
        }
    }

    public static class e {

        public int f72373a;

        public l f72374b;

        public e(int code, l listener) {
            this.f72373a = code;
            this.f72374b = listener;
        }
    }

    public InitActivity() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f72360b = steppedArrayList;
        steppedArrayList.add(new com.itsmagic.engine.Activities.InitScreen.Screens.c());
        steppedArrayList.add(new UIScaleScreen());
        this.f72361c = null;
        this.f72365g = new AtomicBoolean();
        this.f72366h = new SteppedArrayList();
    }

    public final void k() {
        this.f72361c.removeAllViews();
        this.f72362d++;
        com.itsmagic.engine.Activities.InitScreen.a aVar = this.f72363e;
        if (aVar != null) {
            aVar.h();
            this.f72363e.j(null);
        }
        while (true) {
            int size = this.f72360b.size();
            int i10 = this.f72362d;
            if (size <= i10) {
                if (!this.f72365g.get()) {
                    new C13965a().a(50, new d(this));
                    return;
                } else {
                    startActivity(new Intent(this, (Class<?>) EditorActivity.class));
                    finish();
                    return;
                }
            }
            com.itsmagic.engine.Activities.InitScreen.a aVar2 = this.f72360b.get(i10);
            if (aVar2.i(this)) {
                aVar2.j(new c());
                View e10 = aVar2.e(this.f72361c, this, this.f72364f);
                this.f72361c.addView(e10);
                ViewGroup.LayoutParams layoutParams = e10.getLayoutParams();
                layoutParams.width = -1;
                layoutParams.height = -1;
                e10.setLayoutParams(layoutParams);
                aVar2.g();
                return;
            }
            this.f72362d++;
        }
    }

    public final void l() {
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);
        synchronized (this.f72366h) {
            try {
                for (e eVar : this.f72366h) {
                    if (eVar.f72373a == requestCode) {
                        eVar.f72374b.a(resultCode, intent);
                        this.f72366h.remove(eVar);
                        return;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        l();
        try {
            getWindow().getDecorView().setSystemUiVisibility(2050);
        } catch (Error | Exception e10) {
            e10.printStackTrace();
        }
        setContentView(R.layout.activity_init);
        if (getSupportActionBar() != null) {
            getSupportActionBar().hide();
        }
        try {
            getWindow().setSoftInputMode(3);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        this.f72361c = (LinearLayout) findViewById(R.id.content);
        this.f72364f = LayoutInflater.from(this);
        N7.c.l0(new a(this));
        for (int i10 = 0; i10 < this.f72360b.size(); i10++) {
            this.f72360b.get(i10).k(this);
        }
        this.f72362d = -1;
        k();
        O9.b.d(new b());
    }
}
