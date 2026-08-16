package u6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class i extends F7.i {

    public String f118555m;

    public h f118556n;

    public boolean f118557o;

    public class a implements F7.c {
        public a() {
        }

        @Override
        public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
            textViewAppearance.f6655a = Theme.i(Theme.T.ACCENT);
        }
    }

    public i(String text, h stack) {
        super(text, new C14191c());
        this.f118557o = false;
        this.f118555m = text;
        this.f118556n = stack;
    }

    @Override
    public String g() {
        return this.f118555m;
    }

    public h u() {
        return this.f118556n;
    }

    public i(String text, h stack, boolean isEditor) {
        super(text, new C14191c());
        this.f118555m = text;
        this.f118556n = stack;
        this.f118557o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
