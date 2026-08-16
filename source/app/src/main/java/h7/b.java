package H7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine2.R;

public class b {

    public RecyclerView f8272a;

    public d f8273b;

    public GridLayoutManager f8274c;

    public View f8275d;

    public View f8276e;

    public int f8277f;

    public int f8278g;

    public int f8279h;

    public int f8280i;

    public int f8281j;

    public float f8282k;

    public LayoutInflater f8283l = LayoutInflater.from(N7.c.t());

    public Context f8284m;

    public View f8285n;

    public boolean f8286o;

    public b(Context context) {
        this.f8284m = context;
    }

    public d a() {
        return this.f8273b;
    }

    public View b() {
        if (this.f8275d == null) {
            this.f8275d = this.f8283l.inflate(R.layout.resizable_grid_layout, (ViewGroup) null);
        }
        if (this.f8272a == null) {
            this.f8272a = (RecyclerView) this.f8275d.findViewById(R.id.recycler);
        }
        this.f8272a.setAdapter(this.f8273b);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f8284m, 1);
        this.f8274c = gridLayoutManager;
        this.f8272a.setLayoutManager(gridLayoutManager);
        f();
        return this.f8275d;
    }

    public void c(d adapter) {
        RecyclerView recyclerView;
        this.f8273b = adapter;
        if (adapter == null || (recyclerView = this.f8272a) == null) {
            return;
        }
        recyclerView.setAdapter(adapter);
    }

    public void d(View panel) {
        this.f8285n = panel;
    }

    public void e(View v10) {
        this.f8275d = v10;
    }

    public void f() {
        if (this.f8276e == null) {
            this.f8276e = this.f8272a.getChildAt(0);
            return;
        }
        int width = this.f8285n.getWidth();
        if (!this.f8286o) {
            this.f8286o = true;
            this.f8279h = this.f8276e.getHeight() + (this.f8276e.getPaddingLeft() * 2) + this.f8276e.getLeft();
        }
        if (this.f8281j == width) {
            float f10 = this.f8282k;
            if (f10 < 0.0f) {
                this.f8282k = f10 + K8.d.e();
            } else if (width != this.f8278g) {
                this.f8278g = width;
                int N10 = Nc.b.N(1, width / this.f8279h);
                this.f8280i = N10;
                if (N10 != this.f8277f) {
                    this.f8277f = N10;
                    this.f8274c.setSpanCount(N10);
                }
                this.f8273b.l();
            }
        } else {
            this.f8282k = 0.0f;
        }
        this.f8281j = width;
    }

    public b(Context context, View v10) {
        this.f8284m = context;
        this.f8275d = v10;
    }
}
