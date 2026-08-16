package f2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import w1.C15879a;

public class C13181b extends View {

    public final CharSequence f85974b;

    public final Drawable f85975c;

    public final int f85976d;

    public C13181b(Context context) {
        this(context, null);
    }

    public C13181b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C15879a.o.gs);
        this.f85974b = obtainStyledAttributes.getText(C15879a.o.js);
        this.f85975c = obtainStyledAttributes.getDrawable(C15879a.o.hs);
        this.f85976d = obtainStyledAttributes.getResourceId(C15879a.o.is, 0);
        obtainStyledAttributes.recycle();
    }
}
