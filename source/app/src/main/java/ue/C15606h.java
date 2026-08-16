package ue;

import android.content.Context;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Px;

public class C15606h {

    public static final int f120523g = 75;

    public static final int f120524h = 22;

    public final int f120525a;

    public final int f120526b;

    public final int f120527c;

    public final int f120528d;

    public final int f120529e;

    public final int f120530f;

    public static class a {

        public int f120531a;

        public int f120532b;

        public int f120533c = -1;

        public int f120534d;

        public int f120535e;

        public int f120536f;

        @NonNull
        public C15606h g() {
            return new C15606h(this);
        }

        @NonNull
        public a h(@ColorInt int i10) {
            this.f120532b = i10;
            return this;
        }

        @NonNull
        public a i(@Px int i10) {
            this.f120533c = i10;
            return this;
        }

        @NonNull
        public a j(@Px int i10) {
            this.f120531a = i10;
            return this;
        }

        @NonNull
        public a k(@ColorInt int i10) {
            this.f120535e = i10;
            return this;
        }

        @NonNull
        public a l(@ColorInt int i10) {
            this.f120536f = i10;
            return this;
        }

        @NonNull
        public a m(@ColorInt int i10) {
            this.f120534d = i10;
            return this;
        }
    }

    public C15606h(@NonNull a aVar) {
        this.f120525a = aVar.f120531a;
        this.f120526b = aVar.f120532b;
        this.f120527c = aVar.f120533c;
        this.f120528d = aVar.f120534d;
        this.f120529e = aVar.f120535e;
        this.f120530f = aVar.f120536f;
    }

    @NonNull
    public static a f(@NonNull Context context) {
        Ae.b b10 = Ae.b.b(context);
        return h().j(b10.c(4)).i(b10.c(1));
    }

    @NonNull
    public static C15606h g(@NonNull Context context) {
        return f(context).g();
    }

    @NonNull
    public static a h() {
        return new a();
    }

    public void a(@NonNull Paint paint) {
        int i10 = this.f120526b;
        if (i10 == 0) {
            i10 = Ae.a.a(paint.getColor(), 75);
        }
        paint.setColor(i10);
        paint.setStyle(Paint.Style.FILL);
    }

    public void b(@NonNull Paint paint) {
        paint.setColor(this.f120529e);
        paint.setStyle(Paint.Style.FILL);
    }

    public void c(@NonNull Paint paint) {
        paint.setColor(this.f120530f);
        paint.setStyle(Paint.Style.FILL);
    }

    public void d(@NonNull Paint paint) {
        int i10 = this.f120528d;
        if (i10 == 0) {
            i10 = Ae.a.a(paint.getColor(), 22);
        }
        paint.setColor(i10);
        paint.setStyle(Paint.Style.FILL);
    }

    @NonNull
    public a e() {
        return new a().j(this.f120525a).h(this.f120526b).i(this.f120527c).m(this.f120528d).k(this.f120529e).l(this.f120530f);
    }

    public int i(@NonNull Paint paint) {
        int i10 = this.f120527c;
        return i10 == -1 ? (int) (paint.getStrokeWidth() + 0.5f) : i10;
    }

    public int j() {
        return this.f120525a;
    }
}
