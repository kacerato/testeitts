package f7;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.itsmagic.engine2.R;
import f7.C13195e;
import java.util.List;

@Deprecated
public class C13191a {

    public View f86121a;

    public Activity f86122b;

    public boolean f86123c = true;

    public TextView f86124d;

    public TextView f86125e;

    public ImageView f86126f;

    public InterfaceC13192b f86127g;

    public class C1601a implements InterfaceC13192b {

        public final Activity f86128a;

        public class RunnableC1602a implements Runnable {
            public RunnableC1602a() {
            }

            @Override
            public void run() {
                C13191a.this.b();
            }
        }

        public C1601a(final Activity val$context) {
            this.f86128a = val$context;
        }

        @Override
        public void a() {
            this.f86128a.runOnUiThread(new RunnableC1602a());
        }

        @Override
        public void show() {
        }
    }

    public class b implements Runnable {

        public final C13195e f86131b;

        public b(final C13195e val$message) {
            this.f86131b = val$message;
        }

        @Override
        public void run() {
            try {
                C13195e c13195e = this.f86131b;
                if (c13195e.f86148f.a(C13191a.this.f86122b, c13195e)) {
                    C13191a.this.f(this.f86131b);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        public final C13195e f86133b;

        public c(final C13195e val$message) {
            this.f86133b = val$message;
        }

        @Override
        public void run() {
            C13194d.e(this.f86133b);
        }
    }

    public class d implements Runnable {

        public final C13195e f86135b;

        public d(final C13195e val$message) {
            this.f86135b = val$message;
        }

        @Override
        public void run() {
            C13194d.e(this.f86135b);
        }
    }

    public class e implements Runnable {

        public final C13195e f86137b;

        public e(final C13195e val$message) {
            this.f86137b = val$message;
        }

        @Override
        public void run() {
            C13194d.e(this.f86137b);
        }
    }

    public class f implements Runnable {

        public final C13195e f86139b;

        public f(final C13195e val$message) {
            this.f86139b = val$message;
        }

        @Override
        public void run() {
            C13194d.e(this.f86139b);
        }
    }

    public C13191a(LinearLayout layout, Activity context) {
        this.f86121a = layout;
        this.f86122b = context;
        ViewGroup.LayoutParams layoutParams = layout.getLayoutParams();
        layoutParams.height = 0;
        layout.setLayoutParams(layoutParams);
        this.f86124d = (TextView) layout.findViewById(R.id.tittle);
        this.f86125e = (TextView) layout.findViewById(R.id.message);
        this.f86126f = (ImageView) layout.findViewById(R.id.icon);
        C1601a c1601a = new C1601a(context);
        this.f86127g = c1601a;
        C13194d.f86142b.add(c1601a);
        b();
    }

    public final void b() {
        List<C13195e> list = C13194d.f86141a;
        if (list.isEmpty()) {
            c();
        } else {
            f(list.get(0));
        }
    }

    public void c() {
        this.f86121a.setVisibility(8);
    }

    public void d() {
        C13194d.f86142b.remove(this.f86127g);
        this.f86121a = null;
        this.f86122b = null;
        this.f86124d = null;
        this.f86125e = null;
        this.f86126f = null;
        this.f86127g = null;
    }

    public void e() {
        this.f86121a.setVisibility(0);
    }

    public void f(C13195e message) {
        try {
            if (this.f86121a == null || this.f86122b == null) {
                return;
            }
            e();
            this.f86124d.setText(message.f86143a);
            this.f86125e.setText(message.f86144b);
            this.f86126f.setImageDrawable(ContextCompat.getDrawable(this.f86122b, message.f86145c));
            this.f86121a.setBackgroundColor(ContextCompat.getColor(this.f86122b, message.f86146d));
            if (message.f86148f != null) {
                new Handler().postDelayed(new b(message), 100L);
            }
            C13195e.a aVar = message.f86147e;
            if (aVar == C13195e.a.SHORT) {
                new Handler().postDelayed(new c(message), Ld.a.f11703k);
                return;
            }
            if (aVar == C13195e.a.MEDIUM) {
                new Handler().postDelayed(new d(message), 4500L);
            } else if (aVar == C13195e.a.LONG) {
                new Handler().postDelayed(new e(message), 6000L);
            } else if (aVar == C13195e.a.BIGLONG) {
                new Handler().postDelayed(new f(message), 9000L);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
