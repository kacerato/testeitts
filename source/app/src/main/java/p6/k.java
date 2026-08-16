package p6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class k extends F7.i {

    public String f103615m;

    public j f103616n;

    public boolean f103617o;

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
        this.f103617o = false;
        this.f103615m = text;
        this.f103616n = stack;
    }

    @Override
    public String g() {
        return this.f103615m;
    }

    public j u() {
        return this.f103616n;
    }

    public k(String text, j stack, boolean isEditor) {
        super(text, new C14191c());
        this.f103615m = text;
        this.f103616n = stack;
        this.f103617o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
