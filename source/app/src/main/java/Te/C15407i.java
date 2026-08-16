package te;

import android.text.TextPaint;
import android.text.style.URLSpan;
import android.view.View;
import androidx.annotation.NonNull;
import qe.InterfaceC15074c;
import re.C15173c;

public class C15407i extends URLSpan {

    public final C15173c f117352b;

    public final String f117353c;

    public final InterfaceC15074c f117354d;

    public C15407i(@NonNull C15173c c15173c, @NonNull String str, @NonNull InterfaceC15074c interfaceC15074c) {
        super(str);
        this.f117352b = c15173c;
        this.f117353c = str;
        this.f117354d = interfaceC15074c;
    }

    @NonNull
    public String b() {
        return this.f117353c;
    }

    @Override
    public void onClick(View view) {
        this.f117354d.a(view, this.f117353c);
    }

    @Override
    public void updateDrawState(@NonNull TextPaint textPaint) {
        this.f117352b.g(textPaint);
    }
}
