package r6;

import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import m7.C14191c;

public class g extends F7.i {

    public String f108708m;

    public f f108709n;

    public boolean f108710o;

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
        this.f108710o = false;
        this.f108708m = text;
        this.f108709n = stack;
    }

    @Override
    public String g() {
        return this.f108708m;
    }

    public f u() {
        return this.f108709n;
    }

    public g(String text, f stack, boolean isEditor) {
        super(text, new C14191c());
        this.f108708m = text;
        this.f108709n = stack;
        this.f108710o = isEditor;
        if (isEditor) {
            this.f6688j = new a();
        }
    }
}
