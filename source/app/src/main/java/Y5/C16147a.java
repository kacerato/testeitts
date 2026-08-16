package y5;

import Ic.C2630i;
import N7.c;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AdvancedTextView.AdvancedTextView;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C16147a extends EditorPanel {

    public static final String f130003Y = "GameJam";

    public View f130004X;

    public class ViewOnClickListenerC2217a implements View.OnClickListener {
        public ViewOnClickListenerC2217a() {
        }

        @Override
        public void onClick(View view) {
            if (Lang.p().b().equalsIgnoreCase("pt-br")) {
                C2630i.n("https://www.youtube.com/live/EV9hEOHZTLU?si=ir0lzsdxakRCD6dn");
            } else {
                C2630i.n("https://youtu.be/S-umsF3Dq3o?si=4cuGwnyzumusBMnM");
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            C2630i.n("https://forms.gle/dkxPHsazyyH9wMn1A");
        }
    }

    public C16147a() {
        super(null, f130003Y);
        super.e1(false);
    }

    public static FloatingPanelArea p1(View anchor, C15147a.e side) {
        return C15147a.g(anchor, new C16147a(), side, c.g(450), c.f(400));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.game_jam_panel, (ViewGroup) null);
        this.f130004X = inflate;
        ((TextView) inflate.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.GAME_JAM_TITTLE));
        ((AdvancedTextView) this.f130004X.findViewById(R.id.one_place)).setText(Lang.l(Lang.T.GAME_JAM_ONE_PLACE));
        ((AdvancedTextView) this.f130004X.findViewById(R.id.second_place)).setText(Lang.l(Lang.T.GAME_JAM_SECOND_PLACE));
        ((AdvancedTextView) this.f130004X.findViewById(R.id.third_place)).setText(Lang.l(Lang.T.GAME_JAM_THIRD_PLACE));
        ((AdvancedTextView) this.f130004X.findViewById(R.id.fourth_place)).setText(Lang.l(Lang.T.GAME_JAM_FOURTH_PLACE));
        ((AdvancedTextView) this.f130004X.findViewById(R.id.warning)).setText(Lang.l(Lang.T.GAME_JAM_WARNING));
        TextView textView = (TextView) this.f130004X.findViewById(R.id.rules_link);
        SpannableString spannableString = new SpannableString(Lang.l(Lang.T.GAME_JAM_RULES));
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView.setText(spannableString);
        textView.setOnClickListener(new ViewOnClickListenerC2217a());
        TextView textView2 = (TextView) this.f130004X.findViewById(R.id.register);
        textView2.setOnClickListener(new b());
        SpannableString spannableString2 = new SpannableString(Lang.l(Lang.T.GAME_JAM_REGISTER));
        spannableString2.setSpan(new UnderlineSpan(), 0, spannableString2.length(), 0);
        textView2.setText(spannableString2);
        return this.f130004X;
    }

    @Override
    public EditorPanel k() {
        return super.k();
    }
}
