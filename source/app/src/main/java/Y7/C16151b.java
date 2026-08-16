package y7;

import android.content.Context;
import android.content.DialogInterface;
import cn.pedant.SweetAlert.SweetAlertDialog;

@Deprecated
public class C16151b {

    public Context f130060a;

    public InterfaceC16150a f130061b;

    public SweetAlertDialog f130062c;

    public boolean f130063d;

    public class a implements SweetAlertDialog.OnSweetClickListener {
        public a() {
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            C16151b.this.n();
        }
    }

    public class DialogInterfaceOnCancelListenerC2220b implements DialogInterface.OnCancelListener {
        public DialogInterfaceOnCancelListenerC2220b() {
        }

        @Override
        public void onCancel(DialogInterface dialog) {
            C16151b.this.l();
            C16151b.this.n();
        }
    }

    public class c implements InterfaceC16150a {
        public c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void onCancel() {
        }
    }

    public class d implements SweetAlertDialog.OnSweetClickListener {
        public d() {
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            C16151b.this.n();
        }
    }

    public class e implements DialogInterface.OnCancelListener {
        public e() {
        }

        @Override
        public void onCancel(DialogInterface dialog) {
            C16151b.this.l();
            C16151b.this.n();
        }
    }

    public class f implements SweetAlertDialog.OnSweetClickListener {

        public final InterfaceC16150a f130069a;

        public f(final InterfaceC16150a val$listener) {
            this.f130069a = val$listener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130069a;
            if (interfaceC16150a != null) {
                interfaceC16150a.a();
            } else {
                C16151b.this.n();
            }
        }
    }

    public class g implements SweetAlertDialog.OnSweetClickListener {

        public final InterfaceC16150a f130071a;

        public g(final InterfaceC16150a val$listener) {
            this.f130071a = val$listener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130071a;
            if (interfaceC16150a != null) {
                interfaceC16150a.onCancel();
            } else {
                C16151b.this.m();
            }
        }
    }

    public class h implements DialogInterface.OnCancelListener {

        public final InterfaceC16150a f130073b;

        public h(final InterfaceC16150a val$listener) {
            this.f130073b = val$listener;
        }

        @Override
        public void onCancel(DialogInterface dialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130073b;
            if (interfaceC16150a != null) {
                interfaceC16150a.onCancel();
            } else {
                C16151b.this.m();
            }
        }
    }

    public class i implements SweetAlertDialog.OnSweetClickListener {

        public final InterfaceC16150a f130075a;

        public i(final InterfaceC16150a val$listener) {
            this.f130075a = val$listener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130075a;
            if (interfaceC16150a != null) {
                interfaceC16150a.a();
            } else {
                C16151b.this.n();
            }
        }
    }

    public class j implements SweetAlertDialog.OnSweetClickListener {

        public final InterfaceC16150a f130077a;

        public j(final InterfaceC16150a val$listener) {
            this.f130077a = val$listener;
        }

        @Override
        public void onClick(SweetAlertDialog sweetAlertDialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130077a;
            if (interfaceC16150a != null) {
                interfaceC16150a.onCancel();
            } else {
                C16151b.this.m();
            }
        }
    }

    public class k implements DialogInterface.OnCancelListener {

        public final InterfaceC16150a f130079b;

        public k(final InterfaceC16150a val$listener) {
            this.f130079b = val$listener;
        }

        @Override
        public void onCancel(DialogInterface dialog) {
            C16151b.this.l();
            InterfaceC16150a interfaceC16150a = this.f130079b;
            if (interfaceC16150a != null) {
                interfaceC16150a.onCancel();
            } else {
                C16151b.this.m();
            }
        }
    }

    public C16151b(Context context, InterfaceC16150a listener) {
        this.f130060a = context;
        this.f130061b = listener;
        if (listener == null) {
            this.f130061b = new c();
        }
    }

    public final void c(String tittle, String message, String confirmText, String cancelText) {
        d(tittle, message, confirmText, cancelText, null);
    }

    public final void d(String tittle, String message, String confirmText, String cancelText, InterfaceC16150a listener) {
        if (this.f130063d) {
            j();
            this.f130063d = false;
        }
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.changeAlertType(3);
                this.f130062c.setTitle(tittle);
                this.f130062c.setContentText(message);
                this.f130062c.setConfirmText(confirmText);
                this.f130062c.setCanceledOnTouchOutside(true);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f130062c.setConfirmClickListener(new i(listener));
            if (!cancelText.isEmpty()) {
                this.f130062c.setCancelText(cancelText);
                this.f130062c.setCancelClickListener(new j(listener));
            }
            this.f130062c.setOnCancelListener(new k(listener));
        }
    }

    public final void e(String tittle, String message, String confirmText) {
        try {
            if (this.f130063d) {
                j();
                this.f130063d = false;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.changeAlertType(1);
                this.f130062c.setTitle(tittle);
                this.f130062c.setContentText(message);
                this.f130062c.setConfirmText(confirmText);
                this.f130062c.setCanceledOnTouchOutside(true);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            this.f130062c.setConfirmClickListener(new d());
            this.f130062c.setOnCancelListener(new e());
        }
    }

    public final void f(String tittle, String message, String confirmText, String cancelText) {
        g(tittle, message, confirmText, cancelText, null);
    }

    public final void g(String tittle, String message, String confirmText, String cancelText, InterfaceC16150a listener) {
        if (this.f130063d) {
            j();
            this.f130063d = false;
        }
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.changeAlertType(0);
                this.f130062c.setTitle(tittle);
                this.f130062c.setContentText(message);
                this.f130062c.setConfirmText(confirmText);
                this.f130062c.setCancelText(cancelText);
                this.f130062c.setCanceledOnTouchOutside(true);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f130062c.setConfirmClickListener(new f(listener));
            this.f130062c.setCancelClickListener(new g(listener));
            this.f130062c.setOnCancelListener(new h(listener));
        }
    }

    public final void h(String tittle, String message) {
        if (this.f130063d) {
            j();
            this.f130063d = false;
        }
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.changeAlertType(5);
                this.f130062c.setTitle(tittle);
                this.f130062c.setContentText(message);
                this.f130062c.setConfirmText("");
                this.f130062c.setCanceledOnTouchOutside(false);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public final void i(String tittle, String message, String confirmText) {
        if (this.f130063d) {
            j();
            this.f130063d = false;
        }
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.changeAlertType(2);
                this.f130062c.setTitle(tittle);
                this.f130062c.setContentText(message);
                this.f130062c.setConfirmText(confirmText);
                this.f130062c.setCanceledOnTouchOutside(true);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f130062c.setConfirmClickListener(new a());
            this.f130062c.setOnCancelListener(new DialogInterfaceOnCancelListenerC2220b());
        }
    }

    public final void j() {
        try {
            this.f130062c = new SweetAlertDialog(this.f130060a, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void k() {
        this.f130060a = null;
        this.f130061b = null;
        this.f130062c = null;
    }

    public void l() {
        try {
            this.f130063d = true;
            SweetAlertDialog sweetAlertDialog = this.f130062c;
            if (sweetAlertDialog != null) {
                sweetAlertDialog.dismissWithAnimation();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void m() {
        InterfaceC16150a interfaceC16150a = this.f130061b;
        if (interfaceC16150a != null) {
            interfaceC16150a.onCancel();
        }
    }

    public final void n() {
        InterfaceC16150a interfaceC16150a = this.f130061b;
        if (interfaceC16150a != null) {
            interfaceC16150a.a();
        }
    }

    public void o(InterfaceC16150a listener) {
        this.f130061b = listener;
    }

    public final void p() {
        SweetAlertDialog sweetAlertDialog = this.f130062c;
        if (sweetAlertDialog != null) {
            try {
                sweetAlertDialog.show();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void q(String tittle, String message, String confirmText) {
        if (this.f130062c != null) {
            c(tittle, message, confirmText, "");
            p();
        } else {
            j();
            c(tittle, message, confirmText, "");
            p();
        }
    }

    public void r(String tittle, String message, String confirmText, String cancelText) {
        if (this.f130062c != null) {
            c(tittle, message, confirmText, cancelText);
            p();
        } else {
            j();
            c(tittle, message, confirmText, cancelText);
            p();
        }
    }

    public void s(String tittle, String message, String confirmText, String cancelText, InterfaceC16150a listener) {
        if (this.f130062c != null) {
            d(tittle, message, confirmText, cancelText, listener);
            p();
        } else {
            j();
            d(tittle, message, confirmText, cancelText, listener);
            p();
        }
    }

    public void t(String tittle, String message, String confirmText) {
        if (this.f130062c != null) {
            e(tittle, message, confirmText);
            p();
        } else {
            j();
            e(tittle, message, confirmText);
            p();
        }
    }

    public void u(String tittle, String message, String confirmText, String cancelText) {
        v(tittle, message, confirmText, cancelText, null);
    }

    public void v(String tittle, String message, String confirmText, String cancelText, InterfaceC16150a listener) {
        if (this.f130062c != null) {
            g(tittle, message, confirmText, cancelText, listener);
            p();
        } else {
            j();
            g(tittle, message, confirmText, cancelText, listener);
            p();
        }
    }

    public void w(String tittle, String message) {
        if (this.f130062c != null) {
            h(tittle, message);
            p();
        } else {
            j();
            h(tittle, message);
            p();
        }
    }

    public void x(String tittle, String message, String confirmText) {
        if (this.f130062c != null) {
            i(tittle, message, confirmText);
            p();
        } else {
            j();
            i(tittle, message, confirmText);
            p();
        }
    }
}
