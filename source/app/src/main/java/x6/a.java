package X6;

import F7.c;
import F7.e;
import F7.i;
import X6.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine2.R;
import g6.C13295c;
import gb.C13317e;
import java.lang.ref.WeakReference;

public class a extends i {

    public static final int f28007o = 1;

    public static final e f28008p = new e();

    public WeakReference<GameObject> f28009m;

    public b.f f28010n;

    public class C0779a implements c {

        public final b.f f28011a;

        public C0779a(final b.f val$listener) {
            this.f28011a = val$listener;
        }

        @Override
        public void a(i eElement, Context context, e textViewAppearance) {
            GameObject u10;
            if (!(eElement instanceof a) || (u10 = ((a) eElement).u()) == null) {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
                return;
            }
            boolean a10 = this.f28011a.a(u10);
            if (u10.isEnabled() && a10) {
                textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
            } else if (a10) {
                textViewAppearance.f6655a = Theme.i(Theme.T.BACKGROUND);
            } else {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.worldobjects_dtol_color);
            }
        }
    }

    public a(GameObject gameObject, b.f listener) {
        super(gameObject.getName(), new C13295c());
        this.f28010n = listener;
        this.f6688j = new C0779a(listener);
        this.f28009m = new WeakReference<>(gameObject);
    }

    @Override
    public String g() {
        if (this.f28009m.get() == null) {
            return null;
        }
        GameObject gameObject = this.f28009m.get();
        if (C13317e.J(gameObject)) {
            return this.f28010n.c(gameObject);
        }
        return null;
    }

    public GameObject u() {
        if (this.f28009m.get() == null) {
            return null;
        }
        GameObject gameObject = this.f28009m.get();
        if (C13317e.J(gameObject)) {
            return gameObject;
        }
        return null;
    }
}
