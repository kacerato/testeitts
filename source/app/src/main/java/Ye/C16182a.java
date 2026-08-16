package ye;

import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import qe.AbstractC15072a;
import qe.InterfaceC15080i;
import re.C15171a;

public class C16182a extends AbstractC15072a {

    @Nullable
    public final MovementMethod f130237a;

    public C16182a(@Nullable MovementMethod movementMethod) {
        this.f130237a = movementMethod;
    }

    @NonNull
    @Deprecated
    public static C16182a l() {
        return m(LinkMovementMethod.getInstance());
    }

    @NonNull
    public static C16182a m(@NonNull MovementMethod movementMethod) {
        return new C16182a(movementMethod);
    }

    @NonNull
    public static C16182a n() {
        return m(LinkMovementMethod.getInstance());
    }

    @NonNull
    public static C16182a o() {
        return new C16182a(null);
    }

    @Override
    public void a(@NonNull InterfaceC15080i.b bVar) {
        ((C15171a) bVar.b(C15171a.class)).x(true);
    }

    @Override
    public void k(@NonNull TextView textView, @NonNull Spanned spanned) {
        MovementMethod movementMethod = textView.getMovementMethod();
        MovementMethod movementMethod2 = this.f130237a;
        if (movementMethod != movementMethod2) {
            textView.setMovementMethod(movementMethod2);
        }
    }
}
