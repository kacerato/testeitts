package M4;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f14522b0 = "EditText";

    public final String f14523X;

    public final String f14524Y;

    public final boolean f14525Z;

    public c f14526a0;

    public class C0407a extends AbstractViewOnClickListenerC12733a {

        public final EditText f14527b;

        public C0407a(final EditText val$editText) {
            this.f14527b = val$editText;
        }

        @Override
        public void click(View view) {
            if (a.this.f14526a0 == null) {
                N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
                return;
            }
            String obj = this.f14527b.getText() != null ? this.f14527b.getText().toString() : "";
            if (!obj.isEmpty()) {
                a.this.f14526a0.onFinish(obj);
                a.this.f14526a0 = null;
                a.this.R0();
            } else {
                if (!a.this.f14525Z) {
                    N7.c.v0("Text can't be empty");
                    return;
                }
                a.this.f14526a0.onFinish(obj);
                a.this.f14526a0 = null;
                a.this.R0();
            }
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            a.this.f14526a0.onCancel();
            a.this.f14526a0 = null;
            a.this.R0();
        }
    }

    public interface c {
        void onCancel();

        void onFinish(String text);
    }

    public a(String tittle, String currentText, boolean allowEmpty, c listener) {
        super(null, Lang.l(Lang.T.STORE_EDIT_TEXT));
        this.f14523X = currentText;
        this.f14525Z = allowEmpty;
        this.f14526a0 = listener;
        this.f14524Y = tittle;
    }

    public static FloatingPanelArea s1(View anchor, C15147a.e anchorSide, String tittle, String currentText, boolean allowEmpty, c listener) {
        if (listener == null) {
            throw new NullPointerException("Listener can't be null");
        }
        a aVar = new a(tittle, currentText, allowEmpty, listener);
        aVar.W0(false);
        FloatingPanelArea g10 = C15147a.g(anchor, aVar, anchorSide, 0.4f, 0.8f);
        g10.D1(false);
        return g10;
    }

    public static FloatingPanelArea t1(View anchor, C15147a.e anchorSide, String currentText, boolean allowEmpty, c listener) {
        return s1(anchor, anchorSide, null, currentText, allowEmpty, listener);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.edit_text_panel, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.text);
        textView.setVisibility(8);
        String str = this.f14524Y;
        if (str != null && !str.isEmpty()) {
            textView.setText(this.f14524Y);
            textView.setVisibility(0);
        }
        EditText editText = (EditText) inflate.findViewById(R.id.edit_text);
        editText.setText(this.f14523X);
        ((Button) inflate.findViewById(R.id.confirm)).setOnClickListener(new C0407a(editText));
        ((Button) inflate.findViewById(R.id.cancel)).setOnClickListener(new b());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        c cVar = this.f14526a0;
        if (cVar != null) {
            cVar.onCancel();
        }
    }
}
