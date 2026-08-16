package J;

import D.d;
import J.n;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class q<Model, Data> implements n<Model, Data> {

    public final List<n<Model, Data>> f10134a;

    public final Pools.Pool<List<Throwable>> f10135b;

    public static class a<Data> implements D.d<Data>, d.a<Data> {

        public final List<D.d<Data>> f10136b;

        public final Pools.Pool<List<Throwable>> f10137c;

        public int f10138d;

        public com.bumptech.glide.h f10139e;

        public d.a<? super Data> f10140f;

        @Nullable
        public List<Throwable> f10141g;

        public boolean f10142h;

        public a(@NonNull List<D.d<Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            this.f10137c = pool;
            Y.k.c(list);
            this.f10136b = list;
            this.f10138d = 0;
        }

        @Override
        @NonNull
        public Class<Data> a() {
            return this.f10136b.get(0).a();
        }

        @Override
        @NonNull
        public C.a b() {
            return this.f10136b.get(0).b();
        }

        @Override
        public void c(@Nullable Data data) {
            if (data != null) {
                this.f10140f.c(data);
            } else {
                f();
            }
        }

        @Override
        public void cancel() {
            this.f10142h = true;
            Iterator<D.d<Data>> it = this.f10136b.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }

        @Override
        public void cleanup() {
            List<Throwable> list = this.f10141g;
            if (list != null) {
                this.f10137c.release(list);
            }
            this.f10141g = null;
            Iterator<D.d<Data>> it = this.f10136b.iterator();
            while (it.hasNext()) {
                it.next().cleanup();
            }
        }

        @Override
        public void d(@NonNull Exception exc) {
            ((List) Y.k.d(this.f10141g)).add(exc);
            f();
        }

        @Override
        public void e(@NonNull com.bumptech.glide.h hVar, @NonNull d.a<? super Data> aVar) {
            this.f10139e = hVar;
            this.f10140f = aVar;
            this.f10141g = this.f10137c.acquire();
            this.f10136b.get(this.f10138d).e(hVar, this);
            if (this.f10142h) {
                cancel();
            }
        }

        public final void f() {
            if (this.f10142h) {
                return;
            }
            if (this.f10138d < this.f10136b.size() - 1) {
                this.f10138d++;
                e(this.f10139e, this.f10140f);
            } else {
                Y.k.d(this.f10141g);
                this.f10140f.d(new GlideException("Fetch failed", new ArrayList(this.f10141g)));
            }
        }
    }

    public q(@NonNull List<n<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
        this.f10134a = list;
        this.f10135b = pool;
    }

    @Override
    public boolean a(@NonNull Model model) {
        Iterator<n<Model, Data>> it = this.f10134a.iterator();
        while (it.hasNext()) {
            if (it.next().a(model)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public n.a<Data> b(@NonNull Model model, int i10, int i11, @NonNull C.h hVar) {
        n.a<Data> b10;
        int size = this.f10134a.size();
        ArrayList arrayList = new ArrayList(size);
        C.e eVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            n<Model, Data> nVar = this.f10134a.get(i12);
            if (nVar.a(model) && (b10 = nVar.b(model, i10, i11, hVar)) != null) {
                eVar = b10.f10127a;
                arrayList.add(b10.f10129c);
            }
        }
        if (arrayList.isEmpty() || eVar == null) {
            return null;
        }
        return new n.a<>(eVar, new a(arrayList, this.f10135b));
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f10134a.toArray()) + JavaElement.JEM_ANNOTATION;
    }
}
