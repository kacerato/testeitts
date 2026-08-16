package y1;

import android.view.View;
import androidx.core.view.ViewCompat;

public class d {

    public final View f129914a;

    public int f129915b;

    public int f129916c;

    public int f129917d;

    public int f129918e;

    public boolean f129919f = true;

    public boolean f129920g = true;

    public d(View view) {
        this.f129914a = view;
    }

    public void a() {
        View view = this.f129914a;
        ViewCompat.offsetTopAndBottom(view, this.f129917d - (view.getTop() - this.f129915b));
        View view2 = this.f129914a;
        ViewCompat.offsetLeftAndRight(view2, this.f129918e - (view2.getLeft() - this.f129916c));
    }

    public int b() {
        return this.f129916c;
    }

    public int c() {
        return this.f129915b;
    }

    public int d() {
        return this.f129918e;
    }

    public int e() {
        return this.f129917d;
    }

    public boolean f() {
        return this.f129920g;
    }

    public boolean g() {
        return this.f129919f;
    }

    public void h() {
        this.f129915b = this.f129914a.getTop();
        this.f129916c = this.f129914a.getLeft();
    }

    public void i(boolean z10) {
        this.f129920g = z10;
    }

    public boolean j(int i10) {
        if (!this.f129920g || this.f129918e == i10) {
            return false;
        }
        this.f129918e = i10;
        a();
        return true;
    }

    public boolean k(int i10) {
        if (!this.f129919f || this.f129917d == i10) {
            return false;
        }
        this.f129917d = i10;
        a();
        return true;
    }

    public void l(boolean z10) {
        this.f129919f = z10;
    }
}
