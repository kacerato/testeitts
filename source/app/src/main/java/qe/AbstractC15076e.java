package qe;

import android.content.Context;
import android.text.Spanned;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import re.C15171a;

public abstract class AbstractC15076e {

    public interface a {
        @NonNull
        a a(@NonNull InterfaceC15080i interfaceC15080i);

        @NonNull
        a b(@NonNull Iterable<? extends InterfaceC15080i> iterable);

        @NonNull
        AbstractC15076e build();

        @NonNull
        a c(@NonNull TextView.BufferType bufferType);

        @NonNull
        a d(@NonNull b bVar);

        @NonNull
        a e(boolean z10);
    }

    public interface b {
        void a(@NonNull TextView textView, @NonNull Spanned spanned, @NonNull TextView.BufferType bufferType, @NonNull Runnable runnable);
    }

    @NonNull
    public static a a(@NonNull Context context) {
        return new C15077f(context).a(C15171a.s());
    }

    @NonNull
    public static a b(@NonNull Context context) {
        return new C15077f(context);
    }

    @NonNull
    public static AbstractC15076e d(@NonNull Context context) {
        return a(context).a(C15171a.s()).build();
    }

    @NonNull
    public abstract C15078g c();

    @Nullable
    public abstract <P extends InterfaceC15080i> P e(@NonNull Class<P> cls);

    @NonNull
    public abstract List<? extends InterfaceC15080i> f();

    public abstract boolean g(@NonNull Class<? extends InterfaceC15080i> cls);

    @NonNull
    public abstract Um.v h(@NonNull String str);

    @NonNull
    public abstract Spanned i(@NonNull Um.v vVar);

    @NonNull
    public abstract <P extends InterfaceC15080i> P j(@NonNull Class<P> cls);

    public abstract void k(@NonNull TextView textView, @NonNull String str);

    public abstract void l(@NonNull TextView textView, @NonNull Spanned spanned);

    @NonNull
    public abstract Spanned m(@NonNull String str);
}
