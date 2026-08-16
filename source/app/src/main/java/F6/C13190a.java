package f6;

import JAVARuntime.Time;
import N7.c;
import Vc.e;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C13190a extends EditorPanel {

    public static final String f86112d0 = "NotificationBalloon";

    public final View f86113X;

    public final int f86114Y;

    public final String f86115Z;

    public final boolean f86116a0;

    public float f86117b0;

    public boolean f86118c0;

    public class ViewOnTouchListenerC1600a implements View.OnTouchListener {
        public ViewOnTouchListenerC1600a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            C13190a.this.R0();
        }
    }

    public C13190a(View attachmentView, int iconResource, String title, boolean autoClose) {
        super(null, title);
        this.f86117b0 = 0.0f;
        this.f86118c0 = false;
        this.f86113X = attachmentView;
        this.f86114Y = iconResource;
        this.f86115Z = title;
        this.f86116a0 = autoClose;
    }

    public static FloatingPanelArea p1(View attachmentView, int iconResource, String title, boolean autoClose) {
        C13190a c13190a = new C13190a(attachmentView, iconResource, title, autoClose);
        float g10 = c.g(c.v(R.dimen.notification_width));
        FloatingPanelArea n10 = C15147a.n(c13190a, 1.0f - g10, 0.0f, g10, c.f(c.v(R.dimen.notification_total_height)));
        n10.T();
        n10.N1(false);
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.notification_balloon_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC1600a());
        inflate.findViewById(R.id.close).setOnClickListener(new b());
        ((TextView) inflate.findViewById(R.id.title)).setText(this.f86115Z);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon);
        int i10 = this.f86114Y;
        if (i10 <= 0) {
            imageView.setVisibility(8);
        } else {
            e.V(imageView, i10, M());
        }
        ((LinearLayout) inflate.findViewById(R.id.content)).addView(this.f86113X);
        ViewGroup.LayoutParams layoutParams = this.f86113X.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = c.w(R.dimen.notification_height);
        this.f86113X.setLayoutParams(layoutParams);
        return inflate;
    }

    @Override
    public void m1() {
        if (!this.f86116a0 || this.f86118c0) {
            return;
        }
        float unscaledDeltaTime = this.f86117b0 + Time.unscaledDeltaTime();
        this.f86117b0 = unscaledDeltaTime;
        if (unscaledDeltaTime >= 10.0f) {
            R0();
            this.f86118c0 = true;
        }
    }
}
