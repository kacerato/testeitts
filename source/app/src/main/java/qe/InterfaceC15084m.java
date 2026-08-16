package qe;

import Um.C;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface InterfaceC15084m extends C {

    public interface a {
        void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.v vVar);

        void b(@NonNull InterfaceC15084m interfaceC15084m, @NonNull Um.v vVar);
    }

    public interface b {
        @NonNull
        b a(@NonNull a aVar);

        @NonNull
        <N extends Um.v> b b(@NonNull Class<N> cls, @Nullable c<? super N> cVar);

        @NonNull
        InterfaceC15084m c(@NonNull C15078g c15078g, @NonNull InterfaceC15093v interfaceC15093v);
    }

    public interface c<N extends Um.v> {
        void a(@NonNull InterfaceC15084m interfaceC15084m, @NonNull N n10);
    }

    void C(@NonNull Um.v vVar);

    void F();

    <N extends Um.v> void G(@NonNull N n10, int i10);

    void b(int i10, @Nullable Object obj);

    void clear();

    <N extends Um.v> void d(@NonNull Class<N> cls, int i10);

    @NonNull
    InterfaceC15093v h();

    void i(@NonNull Um.v vVar);

    int length();

    <N extends Um.v> void m(@NonNull Class<N> cls, int i10);

    <N extends Um.v> void n(@NonNull N n10, int i10);

    @NonNull
    C15078g o();

    void p();

    void q(@NonNull Um.v vVar);

    @NonNull
    C15097z w();

    boolean x(@NonNull Um.v vVar);
}
