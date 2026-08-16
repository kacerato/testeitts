package v1;

import com.google.android.gms.tasks.RuntimeExecutionException;

public final class w implements Runnable {

    public final AbstractC15790k f121160b;

    public final x f121161c;

    public w(x xVar, AbstractC15790k abstractC15790k) {
        this.f121161c = xVar;
        this.f121160b = abstractC15790k;
    }

    @Override
    public final void run() {
        C15779Q c15779q;
        C15779Q c15779q2;
        C15779Q c15779q3;
        InterfaceC15782c interfaceC15782c;
        C15779Q c15779q4;
        C15779Q c15779q5;
        if (this.f121160b.t()) {
            c15779q5 = this.f121161c.f121164c;
            c15779q5.A();
            return;
        }
        try {
            interfaceC15782c = this.f121161c.f121163b;
            Object a10 = interfaceC15782c.a(this.f121160b);
            c15779q4 = this.f121161c.f121164c;
            c15779q4.z(a10);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                c15779q3 = this.f121161c.f121164c;
                c15779q3.y((Exception) e10.getCause());
            } else {
                c15779q2 = this.f121161c.f121164c;
                c15779q2.y(e10);
            }
        } catch (Exception e11) {
            c15779q = this.f121161c.f121164c;
            c15779q.y(e11);
        }
    }
}
