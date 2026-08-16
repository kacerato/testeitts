package t6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class m extends F7.i {

    public String f117175m;

    public l f117176n;

    public boolean f117177o;

    public class a implements F7.c {
        public a() {
        }

        @Override
        public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
            textViewAppearance.f6655a = Theme.i(Theme.T.ACCENT);
        }
    }

    public m(String text, l stack) {
        super(text, new C14191c());
        this.f117177o = false;
        this.f117175m = text;
        this.f117176n = stack;
    }

    @Override
    public String g() {
        return this.f117175m;
    }

    public l u() {
        return this.f117176n;
    }

    public m(String text, l stack, boolean isEditor) {
        super(text, new C14191c());
        this.f117175m = text;
        this.f117176n = stack;
        this.f117177o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
