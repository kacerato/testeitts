package com.itsmagic.engine.Activities.Editor.Utils;

import ag.P;
import android.content.Context;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.TextView;
import java.util.List;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;

@InterfaceC14427o(message = "fuck")
public final class o {

    public static final class a extends ClickableSpan {

        public final n f72150b;

        public a(n nVar) {
            this.f72150b = nVar;
        }

        @Override
        public void onClick(View view) {
            M.p(view, "view");
            CharSequence text = ((TextView) view).getText();
            M.n(text, "null cannot be cast to non-null type android.text.Spannable");
            Selection.setSelection((Spannable) text, 0);
            view.invalidate();
            n nVar = this.f72150b;
            nVar.f72147c.a(nVar);
        }

        @Override
        public void updateDrawState(TextPaint textPaint) {
            M.p(textPaint, "textPaint");
            int i10 = this.f72150b.f72146b;
            if (i10 >= 0) {
                textPaint.setColor(i10);
            }
            textPaint.setUnderlineText(true);
        }
    }

    public final void a(@NotNull TextView textView, @NotNull List<? extends n> pairs, @NotNull Context context) {
        M.p(textView, "textView");
        M.p(pairs, "pairs");
        M.p(context, "context");
        SpannableString spannableString = new SpannableString(textView.getText());
        int i10 = -1;
        for (n nVar : pairs) {
            a aVar = new a(nVar);
            String obj = textView.getText().toString();
            String d10 = nVar.d();
            M.o(d10, "getText(...)");
            i10 = P.L3(obj, d10, i10 + 1, false, 4, null);
            if (i10 != -1) {
                spannableString.setSpan(aVar, i10, nVar.d().length() + i10, 33);
            }
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString, TextView.BufferType.SPANNABLE);
    }
}
