package q6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class k extends F7.i {

    public String f106002m;

    public j f106003n;

    public boolean f106004o;

    public class a implements F7.c {
        public a() {
        }

        @Override
        public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
            textViewAppearance.f6655a = Theme.i(Theme.T.ACCENT);
        }
    }

    public k(String text, j stack) {
        super(text, new C14191c());
        this.f106004o = false;
        this.f106002m = text;
        this.f106003n = stack;
    }

    @Override
    public String g() {
        return this.f106002m;
    }

    public j u() {
        return this.f106003n;
    }

    public k(String text, j stack, boolean isEditor) {
        super(text, new C14191c());
        this.f106002m = text;
        this.f106003n = stack;
        this.f106004o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
