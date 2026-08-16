package G7;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Utils.SeekBar.SeekBar;

public class b extends G7.a {

    public final InterfaceC0147b f7675a;

    public int f7676b = 48;

    public class a implements SeekBar.a {
        public a() {
        }

        @Override
        public void a(float value, boolean fromUser) {
            if (!fromUser || b.this.f7675a == null) {
                return;
            }
            b.this.f7675a.a(Nc.b.E(0.0f, value, 1.0f));
        }
    }

    public interface InterfaceC0147b {
        void a(float value);

        float getValue();
    }

    public b(InterfaceC0147b listener) {
        this.f7675a = listener;
    }

    @Override
    public void a(LayoutInflater layoutInflater, Context context, LinearLayout parent, int height) {
        FrameLayout frameLayout = new FrameLayout(context);
        SeekBar seekBar = new SeekBar(context);
        frameLayout.addView(seekBar);
        parent.addView(frameLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.width = Nc.b.l0(this.f7676b, context);
        layoutParams.height = height;
        frameLayout.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) seekBar.getLayoutParams();
        int l02 = Nc.b.l0(4.0f, context);
        int l03 = Nc.b.l0(6.0f, context);
        layoutParams2.width = -1;
        layoutParams2.height = height - (l03 * 2);
        layoutParams2.leftMargin = l02;
        layoutParams2.rightMargin = l02;
        layoutParams2.topMargin = l03;
        seekBar.setLayoutParams(layoutParams2);
        InterfaceC0147b interfaceC0147b = this.f7675a;
        float E10 = Nc.b.E(0.0f, interfaceC0147b != null ? interfaceC0147b.getValue() : 1.0f, 1.0f);
        float l04 = Nc.b.l0(4.0f, context);
        seekBar.p(0.0f, 1.0f);
        seekBar.setValue(E10);
        seekBar.setFormatStr("%.2f");
        seekBar.setRadiusTopLeft(l04);
        seekBar.setRadiusTopRight(l04);
        seekBar.setRadiusBottomLeft(l04);
        seekBar.setRadiusBottomRight(l04);
        seekBar.setOnValueChangeListener(new a());
    }

    public void c(int widthDp) {
        this.f7676b = widthDp;
    }
}
