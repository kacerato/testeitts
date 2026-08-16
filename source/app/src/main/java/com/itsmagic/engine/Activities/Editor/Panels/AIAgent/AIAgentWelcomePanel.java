package com.itsmagic.engine.Activities.Editor.Panels.AIAgent;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine2.R;
import java.util.List;
import k0.i;
import org.json.JSONObject;
import t4.C15378a;
import t4.C15379b;

@i
public class AIAgentWelcomePanel extends EditorPanel {

    public static final String f71245a0 = "AIAgentWelcomePanel";

    public static final Class f71246b0 = AIAgentWelcomePanel.class;

    public LinearLayout f71247X;

    public LinearLayout f71248Y;

    public TextView f71249Z;

    @Expose
    private boolean floatingHubMode;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return AIAgentWelcomePanel.f71246b0;
        }

        @Override
        public String c() {
            return AIAgentWelcomePanel.f71245a0;
        }
    }

    public class b implements View.OnClickListener {

        public final com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g f71250b;

        public b(final com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g val$specialist) {
            this.f71250b = val$specialist;
        }

        @Override
        public void onClick(View v10) {
            AIAgentWelcomePanel.this.u1(this.f71250b);
        }
    }

    public class c implements View.OnClickListener {

        public final d.b f71252b;

        public c(final d.b val$runningChat) {
            this.f71252b = val$runningChat;
        }

        @Override
        public void onClick(View v10) {
            AIAgentWelcomePanel.this.t1(this.f71252b);
        }
    }

    public class d implements Runnable {

        public final AIAgentChatPanel f71254b;

        public d(final AIAgentChatPanel val$chatPanel) {
            this.f71254b = val$chatPanel;
        }

        @Override
        public void run() {
            this.f71254b.S0();
        }
    }

    public class e implements Runnable {

        public final AIAgentChatPanel f71256b;

        public e(final AIAgentChatPanel val$chatPanel) {
            this.f71256b = val$chatPanel;
        }

        @Override
        public void run() {
            this.f71256b.S0();
        }
    }

    public class f implements Runnable {

        public final AIAgentChatPanel f71258b;

        public f(final AIAgentChatPanel val$chatPanel) {
            this.f71258b = val$chatPanel;
        }

        @Override
        public void run() {
            this.f71258b.S0();
        }
    }

    public class g implements Runnable {

        public final AIAgentChatPanel f71260b;

        public g(final AIAgentChatPanel val$chatPanel) {
            this.f71260b = val$chatPanel;
        }

        @Override
        public void run() {
            this.f71260b.S0();
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public AIAgentWelcomePanel() {
        this(false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.ai_agent_welcome_panel, (ViewGroup) null);
        this.f71247X = (LinearLayout) inflate.findViewById(R.id.specialists_container);
        this.f71248Y = (LinearLayout) inflate.findViewById(R.id.running_chats_container);
        this.f71249Z = (TextView) inflate.findViewById(R.id.description_text);
        TextView textView = (TextView) inflate.findViewById(R.id.title_text);
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.AI_WELCOME));
        }
        TextView textView2 = this.f71249Z;
        if (textView2 != null) {
            textView2.setText(Lang.l(Lang.T.AI_WELCOME_DESCRIPTION));
        }
        TextView textView3 = (TextView) inflate.findViewById(R.id.specialists_header);
        if (textView3 != null) {
            textView3.setText(Lang.l(Lang.T.AI_AVAILABLE_SPECIALISTS));
        }
        TextView textView4 = (TextView) inflate.findViewById(R.id.running_header);
        if (textView4 != null) {
            textView4.setText(Lang.l(Lang.T.AI_RUNNING_CHATS));
        }
        v1();
        w1();
        return inflate;
    }

    @Override
    public void E0() {
        super.E0();
        v1();
        w1();
    }

    @Override
    public void F0(String json, JSONObject jsonObj) {
        super.F0(json, jsonObj);
        f1(Lang.l(Lang.T.AI_WELCOME));
    }

    @Override
    public void o1() {
        super.o1();
        w1();
    }

    public final C15379b r1() {
        Panel K10 = N7.c.D().K(C15379b.class);
        if (K10 instanceof C15379b) {
            return (C15379b) K10;
        }
        return null;
    }

    public boolean s1() {
        return this.floatingHubMode;
    }

    public final void t1(d.b runningChat) {
        AIAgentChatPanel I02;
        if (runningChat == null) {
            return;
        }
        if (this.floatingHubMode) {
            AIAgentChatPanel f10 = C15378a.f(runningChat.h());
            if (f10 != null) {
                N7.c.d0(5, new f(f10));
                return;
            }
            return;
        }
        C15379b r12 = r1();
        if (r12 == null) {
            r12 = C15379b.M0();
        }
        if (r12 == null || (I02 = r12.I0(runningChat.h())) == null) {
            return;
        }
        N7.c.d0(5, new g(I02));
    }

    public final void u1(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist) {
        AIAgentChatPanel K02;
        if (specialist == null) {
            return;
        }
        if (this.floatingHubMode) {
            AIAgentChatPanel h10 = C15378a.h(specialist);
            if (h10 != null) {
                N7.c.d0(5, new d(h10));
                return;
            }
            return;
        }
        C15379b r12 = r1();
        if (r12 == null) {
            r12 = C15379b.M0();
        }
        if (r12 == null || (K02 = r12.K0(specialist)) == null) {
            return;
        }
        N7.c.d0(5, new e(K02));
    }

    public final void v1() {
        View inflate;
        View findViewById;
        LinearLayout linearLayout = this.f71247X;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        for (com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g gVar : com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.values()) {
            if (gVar != null && gVar.b() && (findViewById = (inflate = this.f70908j.inflate(R.layout.ai_agent_specialist_button, (ViewGroup) this.f71247X, false)).findViewById(R.id.specialist_button)) != null) {
                if (findViewById instanceof Button) {
                    Button button = (Button) findViewById;
                    button.setText(gVar.c());
                    button.setCompoundDrawablesWithIntrinsicBounds(gVar.d(), 0, 0, 0);
                    button.setCompoundDrawablePadding(Nc.b.l0(12.0f, M()));
                }
                findViewById.setOnClickListener(new b(gVar));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.topMargin = Nc.b.l0(4.0f, M());
                this.f71247X.addView(inflate, layoutParams);
            }
        }
    }

    public final void w1() {
        LinearLayout linearLayout = this.f71248Y;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<d.b> m10 = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.m();
        if (m10 == null || m10.isEmpty()) {
            View inflate = this.f70908j.inflate(R.layout.ai_agent_running_chat_empty, (ViewGroup) this.f71248Y, false);
            TextView textView = (TextView) inflate.findViewById(R.id.running_chat_empty_text);
            if (textView != null) {
                textView.setText(Lang.l(Lang.T.AI_NO_RUNNING_CHATS));
            }
            this.f71248Y.addView(inflate);
            return;
        }
        for (d.b bVar : m10) {
            View inflate2 = this.f70908j.inflate(R.layout.ai_agent_running_chat_item, (ViewGroup) this.f71248Y, false);
            ImageView imageView = (ImageView) inflate2.findViewById(R.id.running_chat_icon);
            TextView textView2 = (TextView) inflate2.findViewById(R.id.running_chat_title);
            TextView textView3 = (TextView) inflate2.findViewById(R.id.running_chat_time);
            com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g j10 = bVar.j();
            if (imageView != null) {
                imageView.setImageResource(j10 != null ? j10.d() : R.drawable.f131498ai);
            }
            if (textView2 != null) {
                textView2.setText(bVar.f());
            }
            if (textView3 != null) {
                textView3.setText(bVar.c());
            }
            View findViewById = inflate2.findViewById(R.id.running_chat_item);
            if (findViewById != null) {
                findViewById.setOnClickListener(new c(bVar));
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = Nc.b.l0(4.0f, M());
            this.f71248Y.addView(inflate2, layoutParams);
        }
    }

    public AIAgentWelcomePanel(boolean floatingHubMode) {
        this.serializedComponentType = f71245a0;
        this.isSerializable = true;
        this.floatingHubMode = floatingHubMode;
        f1(Lang.l(Lang.T.AI_WELCOME));
        e1(false);
    }
}
