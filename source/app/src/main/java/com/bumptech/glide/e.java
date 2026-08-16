package com.bumptech.glide;

import V.o;
import V.p;
import Y.m;
import android.graphics.drawable.Drawable;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Queue;

public class e<T> implements AbsListView.OnScrollListener {

    public final int f58864a;

    public final d f58865b;

    public final k f58866c;

    public final a<T> f58867d;

    public final b<T> f58868e;

    public int f58869f;

    public int f58870g;

    public int f58872i;

    public int f58871h = -1;

    public boolean f58873j = true;

    public interface a<U> {
        @NonNull
        List<U> a(int i10);

        @Nullable
        j<?> b(@NonNull U u10);
    }

    public interface b<T> {
        @Nullable
        int[] a(@NonNull T t10, int i10, int i11);
    }

    public static final class c implements p<Object> {

        public int f58874b;

        public int f58875c;

        @Nullable
        public U.d f58876d;

        @Override
        public void a(@NonNull o oVar) {
        }

        @Override
        public void b() {
        }

        @Override
        public void c() {
        }

        @Override
        public void f(@Nullable Drawable drawable) {
        }

        @Override
        public void g(@Nullable U.d dVar) {
            this.f58876d = dVar;
        }

        @Override
        @Nullable
        public U.d getRequest() {
            return this.f58876d;
        }

        @Override
        public void h(@NonNull Object obj, @Nullable W.f<? super Object> fVar) {
        }

        @Override
        public void i(@NonNull o oVar) {
            oVar.d(this.f58875c, this.f58874b);
        }

        @Override
        public void k(@Nullable Drawable drawable) {
        }

        @Override
        public void m(@Nullable Drawable drawable) {
        }

        @Override
        public void onStart() {
        }
    }

    public static final class d {

        public final Queue<c> f58877a;

        public d(int i10) {
            this.f58877a = m.f(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                this.f58877a.offer(new c());
            }
        }

        public c a(int i10, int i11) {
            c poll = this.f58877a.poll();
            this.f58877a.offer(poll);
            poll.f58875c = i10;
            poll.f58874b = i11;
            return poll;
        }
    }

    public e(@NonNull k kVar, @NonNull a<T> aVar, @NonNull b<T> bVar, int i10) {
        this.f58866c = kVar;
        this.f58867d = aVar;
        this.f58868e = bVar;
        this.f58864a = i10;
        this.f58865b = new d(i10 + 1);
    }

    public final void a() {
        for (int i10 = 0; i10 < this.f58865b.f58877a.size(); i10++) {
            this.f58866c.w(this.f58865b.a(0, 0));
        }
    }

    public final void b(int i10, int i11) {
        int min;
        int i12;
        if (i10 < i11) {
            i12 = Math.max(this.f58869f, i10);
            min = i11;
        } else {
            min = Math.min(this.f58870g, i10);
            i12 = i11;
        }
        int min2 = Math.min(this.f58872i, min);
        int min3 = Math.min(this.f58872i, Math.max(0, i12));
        if (i10 < i11) {
            for (int i13 = min3; i13 < min2; i13++) {
                d(this.f58867d.a(i13), i13, true);
            }
        } else {
            for (int i14 = min2 - 1; i14 >= min3; i14--) {
                d(this.f58867d.a(i14), i14, false);
            }
        }
        this.f58870g = min3;
        this.f58869f = min2;
    }

    public final void c(int i10, boolean z10) {
        if (this.f58873j != z10) {
            this.f58873j = z10;
            a();
        }
        b(i10, (z10 ? this.f58864a : -this.f58864a) + i10);
    }

    public final void d(List<T> list, int i10, boolean z10) {
        int size = list.size();
        if (z10) {
            for (int i11 = 0; i11 < size; i11++) {
                e(list.get(i11), i10, i11);
            }
            return;
        }
        for (int i12 = size - 1; i12 >= 0; i12--) {
            e(list.get(i12), i10, i12);
        }
    }

    public final void e(@Nullable T t10, int i10, int i11) {
        int[] a10;
        j<?> b10;
        if (t10 == null || (a10 = this.f58868e.a(t10, i10, i11)) == null || (b10 = this.f58867d.b(t10)) == null) {
            return;
        }
        b10.e1(this.f58865b.a(a10[0], a10[1]));
    }

    @Override
    public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
        this.f58872i = i12;
        int i13 = this.f58871h;
        if (i10 > i13) {
            c(i11 + i10, true);
        } else if (i10 < i13) {
            c(i10, false);
        }
        this.f58871h = i10;
    }

    @Override
    public void onScrollStateChanged(AbsListView absListView, int i10) {
    }
}
