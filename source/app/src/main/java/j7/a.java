package J7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Iterator;
import java.util.List;

public class a {

    public final Context f10292b;

    public final LayoutInflater f10293c;

    public c f10294d;

    public int f10296f;

    public d f10298h;

    public boolean f10295e = true;

    public final List<e> f10297g = new SteppedArrayList();

    public final int f10291a = 10;

    public class C0255a implements e {

        public final ImageView f10299a;

        public final int f10300b;

        public C0255a(final ImageView val$imageView, final int val$finalI) {
            this.f10299a = val$imageView;
            this.f10300b = val$finalI;
        }

        @Override
        public void update() {
            a.this.h(this.f10299a, this.f10300b);
        }
    }

    public class b implements View.OnClickListener {

        public final int f10302b;

        public b(final int val$finalI) {
            this.f10302b = val$finalI;
        }

        @Override
        public void onClick(View v10) {
            a.this.f10296f = this.f10302b;
            a.this.l();
            if (a.this.f10294d != null) {
                a.this.f10294d.a(this.f10302b);
            }
        }
    }

    public interface c {
        void a(int index);
    }

    public static class d {

        public c f10304a = new c();

        public b f10305b = new b();

        public class C0256a {

            public int f10306a;

            public int f10307b;

            public C0256a() {
            }

            public int a() {
                return this.f10307b;
            }

            public int b() {
                return this.f10306a;
            }

            public void c(int height) {
                this.f10307b = height;
            }

            public void d(int width, int height) {
                this.f10306a = width;
                this.f10307b = height;
            }

            public void e(int width) {
                this.f10306a = width;
            }
        }

        public class b extends C0256a {
            public b() {
                super();
            }
        }

        public class c extends C0256a {
            public c() {
                super();
            }
        }
    }

    public interface e {
        void update();
    }

    public a(Context context, c listener, d sizeStars) {
        this.f10292b = context;
        this.f10293c = LayoutInflater.from(context);
        this.f10294d = listener;
        this.f10298h = sizeStars;
    }

    public void e(int currentSelectedStar, LinearLayout content) {
        this.f10296f = currentSelectedStar;
        content.removeAllViews();
        this.f10297g.clear();
        for (int i10 = 1; i10 <= this.f10291a; i10++) {
            ImageView imageView = new ImageView(this.f10292b);
            content.addView(imageView, Nc.b.k0(this.f10298h.f10304a.b()), Nc.b.k0(this.f10298h.f10304a.a()));
            if (i10 % 2 == 1) {
                imageView.setImageResource(R.drawable.star_left);
            } else {
                imageView.setImageResource(R.drawable.star_right);
                if (i10 != this.f10291a - 1) {
                    content.addView(new Space(this.f10292b), Nc.b.k0(this.f10298h.f10305b.b()), Nc.b.k0(this.f10298h.f10305b.a()));
                }
            }
            h(imageView, i10);
            this.f10297g.add(new C0255a(imageView, i10));
            if (this.f10295e) {
                imageView.setOnClickListener(new b(i10));
            }
        }
    }

    public int f() {
        return this.f10296f;
    }

    public boolean g() {
        return this.f10295e;
    }

    public final void h(ImageView imageView, int starIndex) {
        if (starIndex <= this.f10296f) {
            Vc.e.y(imageView, this.f10292b, new ColorINT(Theme.i(Theme.T.PRIMARY)));
        } else {
            Vc.e.y(imageView, this.f10292b, new ColorINT(Theme.i(Theme.T.PANEL)));
        }
    }

    public void i(boolean allowClick) {
        this.f10295e = allowClick;
    }

    public void j(int index) {
        this.f10296f = index;
        l();
    }

    public void k(c listener) {
        this.f10294d = listener;
    }

    public final void l() {
        Iterator<e> it = this.f10297g.iterator();
        while (it.hasNext()) {
            it.next().update();
        }
    }
}
