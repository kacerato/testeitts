package t5;

import Z6.e;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import r4.C15147a;

@Deprecated
public class i {

    public static final ThreadLocal<Rect> f117038a = new a();

    public static final ThreadLocal<Rect> f117039b = new b();

    public class a extends ThreadLocal<Rect> {
        @Override
        public Rect initialValue() {
            return new Rect();
        }
    }

    public class b extends ThreadLocal<Rect> {
        @Override
        public Rect initialValue() {
            return new Rect();
        }
    }

    public class c implements e.i {

        public final e f117040a;

        public c(final e val$listener) {
            this.f117040a = val$listener;
        }

        @Override
        public void a(float value, boolean canceled) {
            this.f117040a.a(value);
        }
    }

    @Deprecated
    public static class d implements e {
        @Override
        public void a(float value) {
        }

        @Override
        public float get() {
            return 0.0f;
        }

        @Override
        public float getMax() {
            return 1.0f;
        }

        @Override
        public float getMin() {
            return 0.0f;
        }
    }

    @Deprecated
    public interface e {
        void a(float value);

        float get();

        float getMax();

        float getMin();
    }

    @Deprecated
    public static void a(View anchor, String tittle, Context context, C15147a.e anchorSide, e listener) {
        Z6.e.B1(tittle, listener.get(), listener.getMin(), listener.getMax(), new c(listener));
    }
}
