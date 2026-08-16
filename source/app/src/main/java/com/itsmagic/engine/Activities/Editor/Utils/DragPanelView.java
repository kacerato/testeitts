package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import i4.C13580a;
import m4.C14182a;
import rc.C15169a;
import tc.C15393b;

public class DragPanelView extends AppCompatImageView {

    public static final long f71988f = 250;

    public float f71989b;

    public float f71990c;

    public C14182a f71991d;

    public FloatingPanelArea f71992e;

    public class a implements View.OnTouchListener {

        public final FloatingPanelArea f71993b;

        public a(final FloatingPanelArea val$floatingPanelArea) {
            this.f71993b = val$floatingPanelArea;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            C15393b c15393b;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                motionEvent.getEventTime();
                DragPanelView.this.f71989b = rawX;
                DragPanelView.this.f71990c = rawY;
                if (DragPanelView.this.f71991d == null && (c15393b = C15169a.f108803l.get(0)) != null) {
                    DragPanelView.this.f71991d = new C14182a();
                    int i10 = (int) c15393b.a().f79838x;
                    int i11 = (int) c15393b.a().f79839y;
                    DragPanelView.this.f71991d.f96683a = i10;
                    DragPanelView.this.f71991d.f96684b = i11;
                    DragPanelView.this.f71991d.f96685c = this.f71993b.n1();
                    DragPanelView.this.f71991d.f96686d = this.f71993b.o1();
                }
            } else if (actionMasked == 1 || actionMasked == 3) {
                DragPanelView.this.f71991d = null;
            }
            return false;
        }
    }

    public DragPanelView(Context context) {
        super(context);
        this.f71989b = 0.0f;
        this.f71990c = 0.0f;
    }

    public void e() {
        if (this.f71991d != null) {
            if (this.f71992e == null) {
                throw new RuntimeException("Use setPanel()");
            }
            C15393b c15393b = C15169a.f108803l.get(0);
            if (c15393b == null || !c15393b.c()) {
                this.f71991d = null;
                return;
            }
            int i10 = (int) c15393b.a().f79838x;
            int i11 = (int) c15393b.a().f79839y;
            C14182a c14182a = this.f71991d;
            int i12 = i10 - c14182a.f96683a;
            int i13 = i11 - c14182a.f96684b;
            C13580a N10 = N7.c.D().N();
            this.f71992e.L1(Nc.b.I(this.f71991d.f96685c + (i12 / N10.f91407a)));
            this.f71992e.M1(Nc.b.I(this.f71991d.f96686d + (i13 / N10.f91408b)));
        }
    }

    public void setPanel(FloatingPanelArea floatingPanelArea) {
        this.f71992e = floatingPanelArea;
        setOnTouchListener(new a(floatingPanelArea));
    }

    public DragPanelView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f71989b = 0.0f;
        this.f71990c = 0.0f;
    }

    public DragPanelView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f71989b = 0.0f;
        this.f71990c = 0.0f;
    }
}
