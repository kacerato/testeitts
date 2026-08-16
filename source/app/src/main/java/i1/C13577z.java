package i1;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.ClipDescription;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import androidx.annotation.UiThread;
import com.google.android.gms.internal.consent_sdk.zzj;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import u2.C15571f;
import u2.InterfaceC15567b;

@UiThread
public final class C13577z implements InterfaceC15567b {

    public final Application f91366a;

    public final C13544d f91367b;

    public final K f91368c;

    public final C13564n f91369d;

    public final E f91370e;

    public final p0<I> f91371f;

    public Dialog f91372g;

    public I f91373h;

    public final AtomicBoolean f91374i = new AtomicBoolean();

    public final AtomicReference<C13576y> f91375j = new AtomicReference<>();

    public final AtomicReference<InterfaceC15567b.a> f91376k = new AtomicReference<>();

    public final AtomicReference<C13575x> f91377l = new AtomicReference<>();

    public C13577z(Application application, C13544d c13544d, K k10, C13564n c13564n, E e10, p0<I> p0Var) {
        this.f91366a = application;
        this.f91367b = c13544d;
        this.f91368c = k10;
        this.f91369d = c13564n;
        this.f91370e = e10;
        this.f91371f = p0Var;
    }

    @Override
    public final void a(Activity activity, InterfaceC15567b.a aVar) {
        C13553h0.a();
        if (!this.f91374i.compareAndSet(false, true)) {
            aVar.a(new zzj(3, "ConsentForm#show can only be invoked once.").zza());
            return;
        }
        C13575x c13575x = new C13575x(this, activity);
        this.f91366a.registerActivityLifecycleCallbacks(c13575x);
        this.f91377l.set(c13575x);
        this.f91368c.a(activity);
        Dialog dialog = new Dialog(activity, R.style.Theme_Translucent_NoTitleBar);
        dialog.setContentView(this.f91373h);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            aVar.a(new zzj(3, "Activity with null windows is passed in.").zza());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.f91376k.set(aVar);
        dialog.show();
        this.f91372g = dialog;
        this.f91373h.b("UMP_messagePresented", "");
    }

    public final I b() {
        return this.f91373h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(C15571f.b bVar, C15571f.a aVar) {
        I O12 = ((J) this.f91371f).O1();
        this.f91373h = O12;
        O12.setBackgroundColor(0);
        O12.getSettings().setJavaScriptEnabled(true);
        O12.setWebViewClient(new H(O12, null));
        this.f91375j.set(new C13576y(bVar, aVar, 0 == true ? 1 : 0));
        this.f91373h.loadDataWithBaseURL(this.f91370e.a(), this.f91370e.b(), ClipDescription.MIMETYPE_TEXT_HTML, "UTF-8", null);
        C13553h0.f91303a.postDelayed(new Runnable() {
            @Override
            public final void run() {
                C13577z.this.g(new zzj(4, "Web view timed out."));
            }
        }, FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
    }

    public final void d(int i10) {
        h();
        InterfaceC15567b.a andSet = this.f91376k.getAndSet(null);
        if (andSet == null) {
            return;
        }
        this.f91369d.f(3);
        andSet.a(null);
    }

    public final void e(zzj zzjVar) {
        h();
        InterfaceC15567b.a andSet = this.f91376k.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.a(zzjVar.zza());
    }

    public final void f() {
        C13576y andSet = this.f91375j.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.a(this);
    }

    public final void g(zzj zzjVar) {
        C13576y andSet = this.f91375j.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.b(zzjVar.zza());
    }

    public final void h() {
        Dialog dialog = this.f91372g;
        if (dialog != null) {
            dialog.dismiss();
            this.f91372g = null;
        }
        this.f91368c.a(null);
        C13575x andSet = this.f91377l.getAndSet(null);
        if (andSet != null) {
            andSet.f91360c.f91366a.unregisterActivityLifecycleCallbacks(andSet);
        }
    }
}
