package b8;

import a8.C3589a;
import a8.C3590b;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import bd.C3867a;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import d8.j;
import da.C12894h;

public class f {

    @Deprecated
    public InterfaceC3852b f32997a;

    @Deprecated
    public InterfaceC3851a f32998b;

    public class a implements Runnable {

        public final g f32999b;

        public final Activity f33000c;

        public a(final g val$saveListener, final Activity val$activity) {
            this.f32999b = val$saveListener;
            this.f33000c = val$activity;
        }

        @Override
        public void run() {
            g gVar = this.f32999b;
            if (gVar != null) {
                gVar.b(this.f33000c);
            }
        }
    }

    public class b implements Runnable {

        public final g f33002b;

        public final Activity f33003c;

        public b(final g val$saveListener, final Activity val$activity) {
            this.f33002b = val$saveListener;
            this.f33003c = val$activity;
        }

        @Override
        public void run() {
            g gVar = this.f33002b;
            if (gVar != null) {
                gVar.b(this.f33003c);
            }
        }
    }

    public class c implements Lb.g {

        public final Activity f33005a;

        public final g f33006b;

        public class a implements Runnable {

            public class RunnableC0884a implements Runnable {
                public RunnableC0884a() {
                }

                @Override
                public void run() {
                    c cVar = c.this;
                    g gVar = cVar.f33006b;
                    if (gVar != null) {
                        gVar.a(cVar.f33005a);
                    }
                }
            }

            public a() {
            }

            @Override
            public void run() {
                C12894h.s();
                c.this.f33005a.runOnUiThread(new RunnableC0884a());
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override
            public void run() {
                c cVar = c.this;
                g gVar = cVar.f33006b;
                if (gVar != null) {
                    gVar.b(cVar.f33005a);
                }
            }
        }

        public c(final Activity val$activity, final g val$saveListener) {
            this.f33005a = val$activity;
            this.f33006b = val$saveListener;
        }

        @Override
        public void a() {
            N7.c.u0(new C3867a("Save failed!", "O salvamento falhou!"));
            this.f33005a.runOnUiThread(new b());
        }

        @Override
        public void onSuccess() {
            N7.c.D().j0();
            O9.b.d(new a());
        }
    }

    public class d implements Runnable {

        public final g f33011b;

        public final Activity f33012c;

        public d(final g val$saveListener, final Activity val$activity) {
            this.f33011b = val$saveListener;
            this.f33012c = val$activity;
        }

        @Override
        public void run() {
            g gVar = this.f33011b;
            if (gVar != null) {
                gVar.b(this.f33012c);
            }
        }
    }

    public static boolean a() {
        return true;
    }

    public void b(String fileName) {
        Activity o10 = N7.c.o();
        C7.c.f2448d = fileName;
        if (!c8.b.l() || o10 == null) {
            return;
        }
        try {
            C7.d.c(fileName, new C3867a("This file was downloaded from the marketplace in another project, to prevent copyright issues the terms and conditions of the marketplace do not allow re-licensing of the file, please re-download the package in this project. Don't copy files download from marketplace to another project.", "Esse arquivo foi baixado da marketplace em outro projeto, para previnir problemas de direitos autorais os termos e condi\u00e7\u00f5es da marketplace n\u00e3o permite re-licenciamento do arquivo, por favor baixe novamente o pacote nesse projeto, n\u00e3o copie arquivos baixados da marketplace de um projeto para outro.").toString());
            o10.startActivity(new Intent(o10, (Class<?>) C7.c.class));
        } catch (Error | Exception unused) {
        }
    }

    public void c(Context context, String tittle, String message) {
        if (context != null) {
            try {
                C7.d.c(tittle, message);
                context.startActivity(new Intent(context, (Class<?>) C7.c.class));
            } catch (Error | Exception unused) {
            }
        }
    }

    public void d(Context context, String tittle, String message, C7.b listener) {
        if (context != null) {
            try {
                C7.d.c(tittle, message);
                C7.c.b(listener);
                context.startActivity(new Intent(context, (Class<?>) C7.c.class));
            } catch (Error | Exception unused) {
            }
        }
    }

    public void e(String url, Activity activity) {
        if (activity == null) {
            J4.d.b2("Trying to open address, but there's not an activity");
            return;
        }
        if (!url.startsWith("http://") && !url.startsWith("https://")) {
            url = "http://" + url;
        }
        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
    }

    public void f(Activity activity, g saveListener) {
        g(activity, saveListener);
    }

    public void g(Activity activity, g saveListener) {
        if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
            N7.c.u0(new C3867a("Can't save project while world is loading.", "O mundo n\u00e3o pode ser salvo enquanto o mundo estiver carregando."));
            activity.runOnUiThread(new a(saveListener, activity));
            return;
        }
        if (j.W()) {
            N7.c.u0(new C3867a("Can't save project while scripts are compiling.", "O mundo n\u00e3o pode ser salvo enquanto os scripts estiverem compilando."));
            activity.runOnUiThread(new b(saveListener, activity));
            return;
        }
        if (!c8.b.l()) {
            N7.c.u0(new C3867a("Can't save project while playing.", "O mundo n\u00e3o pode ser salvo durante a execu\u00e7\u00e3o do jogo"));
            activity.runOnUiThread(new d(saveListener, activity));
            return;
        }
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world != null) {
            world.f80012c = true;
            world.f80013d = new c(activity, saveListener);
        } else if (saveListener != null) {
            saveListener.a(activity);
        }
    }

    public void h(GameObject gameObject) {
        GameObject gameObject2;
        GameObject gameObject3 = W7.b.f27309i.f31909a.f31910a;
        boolean z10 = gameObject != gameObject3;
        if (gameObject3 != null && z10) {
            gameObject3.deflateTopbarElements(N7.c.t());
        }
        if (gameObject != null && (gameObject2 = gameObject.f79295l) != null) {
            gameObject = gameObject2;
        }
        if (gameObject != null) {
            for (GameObject H02 = gameObject.H0(); H02 != null; H02 = H02.H0()) {
                H02.getEditor().i(true);
            }
        }
        C3589a c3589a = W7.b.f27309i;
        C3590b c3590b = c3589a.f31909a;
        c3590b.f31910a = gameObject;
        if (gameObject != null) {
            if (z10) {
                gameObject.inflateTopbarElements(N7.c.t());
            }
            c3589a.f31909a.d(C3590b.a.GameObject);
        } else {
            c3590b.d(C3590b.a.Empty);
        }
        if (c3589a.f31909a.b() == C3590b.a.Empty) {
            A5.a.B1();
        } else {
            A5.a.z1(gameObject);
        }
    }
}
