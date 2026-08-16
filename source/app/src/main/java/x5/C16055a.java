package x5;

import F7.i;
import F7.j;
import Vc.e;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.List;
import x5.d;

public class C16055a extends d {

    public int f127945p;

    public String f127946q;

    public boolean f127947r;

    public class C2199a implements j {
        public C2199a() {
        }

        @Override
        public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
            e.V(imageView, C16055a.this.f127945p, context);
        }
    }

    public class b implements y.j {

        public final d.a f127949a;

        public class RunnableC2200a implements Runnable {

            public class RunnableC2201a implements Runnable {
                public RunnableC2201a() {
                }

                @Override
                public void run() {
                    b.this.f127949a.onFinish();
                }
            }

            public RunnableC2200a() {
            }

            @Override
            public void run() {
                N7.c.c0(new RunnableC2201a());
            }
        }

        public b(final d.a val$listInterface) {
            this.f127949a = val$listInterface;
        }

        @Override
        public void a(File file) {
            this.f127949a.a(new j7.e(file.getName(), file.getAbsolutePath(), null), C16055a.this);
        }

        @Override
        public void onFinish() {
            N7.c.c0(new RunnableC2200a());
        }
    }

    public C16055a(String tittle, int icon, String fileType) {
        super(tittle);
        this.f127945p = R.drawable.empty_image;
        this.f127947r = false;
        this.f6680b = new C2199a();
        r(false);
        this.f127945p = icon;
        this.f127946q = fileType;
    }

    @Override
    public void D(List<j7.b> out, d.a listInterface) {
        y.i(this.f127947r, this.f127946q, new b(listInterface));
    }

    public C16055a(String tittle, int icon, String fileType, boolean allowInsideMeta) {
        super(tittle);
        this.f127945p = R.drawable.empty_image;
        this.f127947r = false;
        this.f6680b = new C2199a();
        r(false);
        this.f127945p = icon;
        this.f127946q = fileType;
        this.f127947r = allowInsideMeta;
    }
}
