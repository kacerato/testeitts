package ue;

import android.text.Layout;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.annotation.NonNull;

public class C15601c implements MovementMethod {

    public final MovementMethod f120484a;

    public C15601c(@NonNull MovementMethod movementMethod) {
        this.f120484a = movementMethod;
    }

    @NonNull
    public static C15601c a() {
        return new C15601c(LinkMovementMethod.getInstance());
    }

    public static boolean b(@NonNull TextView textView, @NonNull Spannable spannable, @NonNull MotionEvent motionEvent) {
        C15603e c15603e;
        Layout g10;
        if (motionEvent.getAction() != 1) {
            return false;
        }
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        int totalPaddingLeft = x10 - textView.getTotalPaddingLeft();
        int totalPaddingTop = y10 - textView.getTotalPaddingTop();
        int scrollX = totalPaddingLeft + textView.getScrollX();
        int scrollY = totalPaddingTop + textView.getScrollY();
        Layout layout = textView.getLayout();
        int lineForVertical = layout.getLineForVertical(scrollY);
        int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, scrollX);
        C15603e[] c15603eArr = (C15603e[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, C15603e.class);
        if (c15603eArr.length != 0 && (g10 = (c15603e = c15603eArr[0]).g(scrollX)) != null) {
            int offsetForHorizontal2 = g10.getOffsetForHorizontal(g10.getLineForVertical(scrollY - layout.getLineTop(lineForVertical)), scrollX % c15603e.e());
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) ((Spanned) g10.getText()).getSpans(offsetForHorizontal2, offsetForHorizontal2, ClickableSpan.class);
            if (clickableSpanArr.length > 0) {
                clickableSpanArr[0].onClick(textView);
                return true;
            }
        }
        return false;
    }

    @NonNull
    public static C15601c c(@NonNull MovementMethod movementMethod) {
        return new C15601c(movementMethod);
    }

    @Override
    public boolean canSelectArbitrarily() {
        return this.f120484a.canSelectArbitrarily();
    }

    @Override
    public void initialize(TextView textView, Spannable spannable) {
        this.f120484a.initialize(textView, spannable);
    }

    @Override
    public boolean onGenericMotionEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return this.f120484a.onGenericMotionEvent(textView, spannable, motionEvent);
    }

    @Override
    public boolean onKeyDown(TextView textView, Spannable spannable, int i10, KeyEvent keyEvent) {
        return this.f120484a.onKeyDown(textView, spannable, i10, keyEvent);
    }

    @Override
    public boolean onKeyOther(TextView textView, Spannable spannable, KeyEvent keyEvent) {
        return this.f120484a.onKeyOther(textView, spannable, keyEvent);
    }

    @Override
    public boolean onKeyUp(TextView textView, Spannable spannable, int i10, KeyEvent keyEvent) {
        return this.f120484a.onKeyUp(textView, spannable, i10, keyEvent);
    }

    @Override
    public void onTakeFocus(TextView textView, Spannable spannable, int i10) {
        this.f120484a.onTakeFocus(textView, spannable, i10);
    }

    @Override
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return this.f120484a.onTouchEvent(textView, spannable, motionEvent) || b(textView, spannable, motionEvent);
    }

    @Override
    public boolean onTrackballEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        return this.f120484a.onTrackballEvent(textView, spannable, motionEvent);
    }
}
