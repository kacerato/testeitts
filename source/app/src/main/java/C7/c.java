package C7;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine2.R;

@Deprecated
public class c extends Activity {

    public static final int f2447c = 1;

    public static String f2448d = null;

    public static C7.b f2449e = null;

    public static C7.a f2450f = null;

    public static boolean f2451g = false;

    public Activity f2452b;

    public class a implements C7.a {

        public class RunnableC0081a implements Runnable {
            public RunnableC0081a() {
            }

            @Override
            public void run() {
                c.this.onBackPressed();
            }
        }

        public a() {
        }

        @Override
        public void close() {
            try {
                c.this.f2452b.runOnUiThread(new RunnableC0081a());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            c.this.onBackPressed();
        }
    }

    public static void a() {
        f2449e = null;
    }

    public static void b(C7.b listener) {
        f2449e = listener;
    }

    @Override
    public void finish() {
        super.finish();
        f2451g = false;
        f2450f = null;
        C7.b bVar = f2449e;
        if (bVar != null) {
            bVar.onClose();
        }
    }

    @Override
    public void onBackPressed() {
        try {
            super.onBackPressed();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.activity_prismabug);
        setFinishOnTouchOutside(true);
        this.f2452b = this;
        f2451g = true;
        f2450f = new a();
        ((TextView) findViewById(R.id.textView17)).setText(new C3867a("Attention", "Aten\u00e7\u00e3o").toString());
        ((TextView) findViewById(R.id.textView18)).setText(d.a());
        ((TextView) findViewById(R.id.textView3)).setText(d.b());
        ((Button) findViewById(R.id.close)).setOnClickListener(new b());
    }
}
