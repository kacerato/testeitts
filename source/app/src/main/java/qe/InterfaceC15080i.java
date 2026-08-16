package qe;

import Vm.d;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import qe.C15078g;
import qe.InterfaceC15082k;
import qe.InterfaceC15084m;
import re.C15173c;

public interface InterfaceC15080i {

    public interface a<P extends InterfaceC15080i> {
        void a(@NonNull P p10);
    }

    public interface b {
        @NonNull
        <P extends InterfaceC15080i> P b(@NonNull Class<P> cls);

        <P extends InterfaceC15080i> void c(@NonNull Class<P> cls, @NonNull a<? super P> aVar);
    }

    void a(@NonNull b bVar);

    void b(@NonNull TextView textView);

    void c(@NonNull d.b bVar);

    void d(@NonNull Um.v vVar);

    void e(@NonNull C15173c.a aVar);

    void f(@NonNull C15078g.b bVar);

    @NonNull
    String g(@NonNull String str);

    void h(@NonNull InterfaceC15082k.a aVar);

    void i(@NonNull Um.v vVar, @NonNull InterfaceC15084m interfaceC15084m);

    void j(@NonNull InterfaceC15084m.b bVar);

    void k(@NonNull TextView textView, @NonNull Spanned spanned);
}
