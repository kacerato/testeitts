package V5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f26603X = "NoEthernetConnection";

    public class C0730a extends AbstractViewOnClickListenerC12733a {
        public C0730a() {
        }

        @Override
        public void click(View view) {
            a.this.R0();
        }
    }

    public a() {
        super(null, "Ethernet connection");
    }

    public static FloatingPanelArea p1() {
        FloatingPanelArea n10 = C15147a.n(new a(), 0.3f, 0.16f, 0.4f, 0.68f);
        n10.T();
        n10.N1(false);
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.marketplace_no_ethernet_connection, (ViewGroup) null);
        inflate.findViewById(R.id.exit).setOnClickListener(new C0730a());
        TextView textView = (TextView) inflate.findViewById(R.id.not_connected_tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.not_connected_text);
        textView.setText(Lang.l(Lang.T.NO_INTERNET_CONNECTION_TITTLE));
        textView2.setText(Lang.l(Lang.T.NO_INTERNET_CONNECTION_TEXT));
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }
}
