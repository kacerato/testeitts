package s6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class g extends F7.i {

    public String f109259m;

    public f f109260n;

    public boolean f109261o;

    public class a implements F7.c {
        public a() {
        }

        @Override
        public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
            textViewAppearance.f6655a = Theme.i(Theme.T.ACCENT);
        }
    }

    public g(String text, f stack) {
        super(text, new C14191c());
        this.f109261o = false;
        this.f109259m = text;
        this.f109260n = stack;
    }

    @Override
    public String g() {
        return this.f109259m;
    }

    public f u() {
        return this.f109260n;
    }

    public g(String text, f stack, boolean isEditor) {
        super(text, new C14191c());
        this.f109259m = text;
        this.f109260n = stack;
        this.f109261o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
