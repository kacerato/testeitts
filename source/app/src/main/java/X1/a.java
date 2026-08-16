package X1;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class a extends f {

    public final Typeface f27885a;

    public final InterfaceC0776a f27886b;

    public boolean f27887c;

    public interface InterfaceC0776a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0776a interfaceC0776a, Typeface typeface) {
        this.f27885a = typeface;
        this.f27886b = interfaceC0776a;
    }

    @Override
    public void a(int i10) {
        d(this.f27885a);
    }

    @Override
    public void b(Typeface typeface, boolean z10) {
        d(typeface);
    }

    public void c() {
        this.f27887c = true;
    }

    public final void d(Typeface typeface) {
        if (this.f27887c) {
            return;
        }
        this.f27886b.a(typeface);
    }
}
