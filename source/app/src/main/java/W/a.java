package W;

import W.f;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public abstract class a<R> implements g<R> {

    public final g<Drawable> f27179a;

    public final class C0757a implements f<R> {

        public final f<Drawable> f27180a;

        public C0757a(f<Drawable> fVar) {
            this.f27180a = fVar;
        }

        @Override
        public boolean a(R r10, f.a aVar) {
            return this.f27180a.a(new BitmapDrawable(aVar.d().getResources(), a.this.b(r10)), aVar);
        }
    }

    public a(g<Drawable> gVar) {
        this.f27179a = gVar;
    }

    @Override
    public f<R> a(C.a aVar, boolean z10) {
        return new C0757a(this.f27179a.a(aVar, z10));
    }

    public abstract Bitmap b(R r10);
}
