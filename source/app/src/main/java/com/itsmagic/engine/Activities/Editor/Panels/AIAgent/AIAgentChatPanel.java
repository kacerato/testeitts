package com.itsmagic.engine.Activities.Editor.Panels.AIAgent;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.o;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.r;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.s;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.t;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.Locale;
import java.util.UUID;
import k0.i;
import org.json.JSONObject;
import r4.C15147a;

@i
public class AIAgentChatPanel extends EditorPanel {

    public static final String f71208m0 = "AIAgentChatPanel";

    public static final Class f71209n0 = AIAgentChatPanel.class;

    public static final long f71210o0 = 100;

    public r f71211X;

    public RecyclerView f71212Y;

    public TextInputEditText f71213Z;

    public ImageButton f71214a0;

    public TextView f71215b0;

    public View f71216c0;

    @Expose
    private boolean chatRequested;

    public t4.c f71217d0;

    @Expose
    private String draftText;

    public StringBuilder f71218e0;

    public String f71219f0;

    public long f71220g0;

    public boolean f71221h0;

    public boolean f71222i0;

    public String f71223j0;

    public boolean f71224k0;

    public boolean f71225l0;

    @Expose
    private SteppedArrayList<AIAgentChatMessage> messages;

    @Expose
    private boolean preserveChatOnDetach;

    @Expose
    private String sessionId;

    @Expose
    private int specialistOrdinal;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return AIAgentChatPanel.f71209n0;
        }

        @Override
        public String c() {
            return AIAgentChatPanel.f71208m0;
        }
    }

    public class b implements TextView.OnEditorActionListener {
        public b() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 4) {
                return false;
            }
            AIAgentChatPanel.this.c2();
            return true;
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View v10) {
            AIAgentChatPanel.this.c2();
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public class a implements dd.d {

            public final o f71229a;

            public a(final o val$value) {
                this.f71229a = val$value;
            }

            @Override
            public void onSelected(View v10) {
                if (AIAgentChatPanel.this.f71211X != null) {
                    AIAgentChatPanel.this.f71211X.A(this.f71229a);
                }
            }
        }

        public d() {
        }

        @Override
        public void click(View view) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            o[] values = o.values();
            int length = values.length;
            for (int i10 = 0; i10 < length; i10++) {
                o oVar = values[i10];
                steppedArrayList.add(new C12908b(((AIAgentChatPanel.this.f71211X == null ? oVar != r.f69905m : AIAgentChatPanel.this.f71211X.o() != oVar) ? "[ ]" : "[*]") + " " + Tc.b.d(oVar.toString().toLowerCase(Locale.ROOT)) + " mode", new a(oVar)));
            }
            Y6.a.F1(view, C15147a.e.Above, steppedArrayList);
        }
    }

    public class e implements s {

        public class a implements Runnable {

            public final r f71232b;

            public a(final r val$startedChat) {
                this.f71232b = val$startedChat;
            }

            @Override
            public void run() {
                AIAgentChatPanel.this.f71211X = this.f71232b;
                r rVar = this.f71232b;
                if (rVar != null && rVar.r() != null) {
                    AIAgentChatPanel.this.sessionId = this.f71232b.r();
                }
                r rVar2 = this.f71232b;
                if (rVar2 != null && rVar2.s() != null) {
                    AIAgentChatPanel.this.specialistOrdinal = this.f71232b.s().ordinal();
                }
                AIAgentChatPanel.this.W1();
                AIAgentChatPanel.this.f2();
                AIAgentChatPanel.this.j2();
                AIAgentChatPanel.this.V1();
                AIAgentChatPanel.this.R1();
            }
        }

        public e() {
        }

        @Override
        public void a(r startedChat) {
            N7.c.j0(new a(startedChat));
        }
    }

    public class f implements t {

        public boolean f71234a = false;

        public class a implements Runnable {

            public final String f71236b;

            public a(final String val$token) {
                this.f71236b = val$token;
            }

            @Override
            public void run() {
                f fVar = f.this;
                if (fVar.f71234a || this.f71236b == null) {
                    return;
                }
                if (AIAgentChatPanel.this.f71218e0 == null) {
                    AIAgentChatPanel.this.f71218e0 = new StringBuilder();
                }
                AIAgentChatPanel.this.f71218e0.append(this.f71236b);
                long currentTimeMillis = System.currentTimeMillis();
                if (AIAgentChatPanel.this.f71221h0) {
                    if (currentTimeMillis - AIAgentChatPanel.this.f71220g0 >= 100) {
                        AIAgentChatPanel.this.f71217d0.o(AIAgentChatPanel.this.f71219f0, AIAgentChatPanel.this.f71218e0.toString(), true);
                        AIAgentChatPanel.this.f71220g0 = currentTimeMillis;
                        AIAgentChatPanel.this.b2();
                        return;
                    }
                    return;
                }
                if (currentTimeMillis - AIAgentChatPanel.this.f71220g0 >= 100) {
                    AIAgentChatPanel.this.f71217d0.l();
                    AIAgentChatMessage a10 = AIAgentChatMessage.a(AIAgentChatPanel.this.f71218e0.toString(), true);
                    AIAgentChatPanel.this.f71217d0.h(a10);
                    AIAgentChatPanel.this.f71219f0 = a10.d();
                    AIAgentChatPanel.this.f71221h0 = true;
                    AIAgentChatPanel.this.f71220g0 = currentTimeMillis;
                    AIAgentChatPanel.this.b2();
                }
            }
        }

        public class b implements Runnable {

            public final String f71238b;

            public final boolean f71239c;

            public b(final String val$message, final boolean val$done) {
                this.f71238b = val$message;
                this.f71239c = val$done;
            }

            @Override
            public void run() {
                String str = this.f71238b;
                if (str == null) {
                    str = AIAgentChatPanel.this.f71218e0 != null ? AIAgentChatPanel.this.f71218e0.toString() : "";
                }
                AIAgentChatPanel.this.f71217d0.l();
                if (!AIAgentChatPanel.this.f71221h0 || AIAgentChatPanel.this.f71219f0 == null) {
                    AIAgentChatPanel.this.f71217d0.h(AIAgentChatMessage.a(str, false));
                } else {
                    AIAgentChatPanel.this.f71217d0.o(AIAgentChatPanel.this.f71219f0, str, false);
                }
                AIAgentChatPanel.this.f71218e0 = new StringBuilder();
                AIAgentChatPanel.this.f71221h0 = false;
                AIAgentChatPanel.this.f71219f0 = null;
                AIAgentChatPanel.this.f71220g0 = 0L;
                AIAgentChatPanel.this.f71223j0 = null;
                if (this.f71239c) {
                    f fVar = f.this;
                    fVar.f71234a = true;
                    AIAgentChatPanel.this.f71222i0 = false;
                    AIAgentChatPanel.this.j2();
                } else {
                    AIAgentChatPanel.this.f71222i0 = true;
                    AIAgentChatPanel.this.k2();
                }
                AIAgentChatPanel.this.V1();
                AIAgentChatPanel.this.b2();
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                AIAgentChatPanel.this.f71217d0.l();
                AIAgentChatPanel.this.f71217d0.h(AIAgentChatMessage.b(Lang.l(Lang.T.AI_ERROR)));
                AIAgentChatPanel.this.f71222i0 = false;
                AIAgentChatPanel.this.f71221h0 = false;
                AIAgentChatPanel.this.f71219f0 = null;
                AIAgentChatPanel.this.f71218e0 = null;
                AIAgentChatPanel.this.f71223j0 = null;
                AIAgentChatPanel.this.i2();
                AIAgentChatPanel.this.V1();
                AIAgentChatPanel.this.b2();
            }
        }

        public f() {
        }

        @Override
        public void a() {
            N7.c.j0(new c());
        }

        @Override
        public void b(final String message, boolean done) {
            N7.c.j0(new b(message, done));
        }

        @Override
        public void c(final String token) {
            N7.c.j0(new a(token));
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            AIAgentChatPanel.this.f71217d0.l();
            AIAgentChatPanel.this.f71217d0.h(AIAgentChatMessage.b(Lang.l(Lang.T.AI_ERROR)));
            AIAgentChatPanel.this.f71222i0 = false;
            AIAgentChatPanel.this.f71221h0 = false;
            AIAgentChatPanel.this.f71219f0 = null;
            AIAgentChatPanel.this.f71218e0 = null;
            AIAgentChatPanel.this.f71223j0 = null;
            AIAgentChatPanel.this.i2();
            AIAgentChatPanel.this.V1();
            AIAgentChatPanel.this.b2();
        }
    }

    public class h implements Runnable {

        public final int f71243b;

        public h(final int val$position) {
            this.f71243b = val$position;
        }

        @Override
        public void run() {
            AIAgentChatPanel.this.f71212Y.scrollToPosition(this.f71243b);
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public AIAgentChatPanel() {
        this.specialistOrdinal = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING.ordinal();
        this.messages = new SteppedArrayList<>();
        super.W0(true);
        this.serializedComponentType = f71208m0;
        this.isSerializable = true;
        e1(false);
        f2();
    }

    @Override
    public View C0() {
        this.f71224k0 = true;
        View inflate = this.f70908j.inflate(R.layout.ai_agent_chat_panel, (ViewGroup) null);
        this.f71212Y = (RecyclerView) inflate.findViewById(R.id.messages_recycler);
        this.f71213Z = (TextInputEditText) inflate.findViewById(R.id.message_input);
        this.f71214a0 = (ImageButton) inflate.findViewById(R.id.send_button);
        this.f71215b0 = (TextView) inflate.findViewById(R.id.status_text);
        this.f71216c0 = inflate.findViewById(R.id.options_button);
        TextView textView = this.f71215b0;
        if (textView != null) {
            textView.setText(a2());
        }
        this.f71217d0 = new t4.c(M());
        if (this.messages == null) {
            this.messages = new SteppedArrayList<>();
        }
        this.f71217d0.m(this.messages);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(M());
        linearLayoutManager.setStackFromEnd(true);
        this.f71212Y.setLayoutManager(linearLayoutManager);
        this.f71212Y.setItemAnimator(null);
        this.f71212Y.setAdapter(this.f71217d0);
        TextInputEditText textInputEditText = this.f71213Z;
        if (textInputEditText != null) {
            String str = this.draftText;
            if (str == null) {
                str = "";
            }
            textInputEditText.setText(str);
            this.f71213Z.setHint(Lang.l(Lang.T.AI_CHAT_INPUT_HINT));
            this.f71213Z.setImeOptions(4);
            this.f71213Z.setSingleLine(false);
            this.f71213Z.setMaxLines(5);
            this.f71213Z.setOnEditorActionListener(new b());
        }
        ImageButton imageButton = this.f71214a0;
        if (imageButton != null) {
            imageButton.setOnClickListener(new c());
            this.f71214a0.setImageResource(R.drawable.send);
            this.f71214a0.setContentDescription(Lang.l(Lang.T.AI_SEND));
        }
        this.f71216c0.setOnClickListener(new d());
        f2();
        Q1();
        W1();
        O1();
        V1();
        R1();
        b2();
        return inflate;
    }

    @Override
    public void E0() {
        super.E0();
        f2();
        Q1();
        W1();
    }

    @Override
    public void F0(String json, JSONObject jsonObj) {
        super.F0(json, jsonObj);
        f2();
    }

    @Override
    public void G0() {
        super.G0();
        if (!this.preserveChatOnDetach) {
            g2();
        }
        this.f71224k0 = false;
    }

    public final void O1() {
        String str;
        TextInputEditText textInputEditText = this.f71213Z;
        if (textInputEditText == null || (str = this.draftText) == null) {
            return;
        }
        textInputEditText.setText(str);
        TextInputEditText textInputEditText2 = this.f71213Z;
        textInputEditText2.setSelection(textInputEditText2.getText() != null ? this.f71213Z.getText().length() : 0);
    }

    public void P1(r chat) {
        if (this.f71211X != chat) {
            g2();
        }
        this.f71211X = chat;
        this.chatRequested = true;
        if (chat != null) {
            this.sessionId = chat.r();
            if (chat.s() != null) {
                this.specialistOrdinal = chat.s().ordinal();
            }
        }
        f2();
        V1();
        j2();
        W1();
        R1();
    }

    public final void Q1() {
        d.b j10;
        if (this.f71211X != null) {
            return;
        }
        String str = this.sessionId;
        if (str != null && (j10 = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.j(str)) != null && j10.d() != null) {
            P1(j10.d());
            return;
        }
        if (this.chatRequested) {
            return;
        }
        this.chatRequested = true;
        String str2 = this.sessionId;
        if (str2 == null || str2.isEmpty()) {
            this.sessionId = UUID.randomUUID().toString();
        }
        h2();
        V1();
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f(Z1(), this.sessionId, new e());
    }

    public final void R1() {
        String str = this.f71223j0;
        if (str == null || str.trim().isEmpty() || this.f71211X == null) {
            return;
        }
        String str2 = this.f71223j0;
        this.f71223j0 = null;
        d2(str2);
    }

    public String S1() {
        return this.sessionId;
    }

    public com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g T1() {
        return Z1();
    }

    public final void U1() {
        InputMethodManager inputMethodManager;
        if (this.f71213Z == null) {
            return;
        }
        try {
            Context M10 = M();
            if (M10 != null && (inputMethodManager = (InputMethodManager) M10.getSystemService(Context.INPUT_METHOD_SERVICE)) != null) {
                inputMethodManager.hideSoftInputFromWindow(this.f71213Z.getWindowToken(), 0);
            }
        } catch (Exception unused) {
        }
        this.f71213Z.clearFocus();
    }

    public final void V1() {
        ImageButton imageButton = this.f71214a0;
        if (imageButton != null) {
            imageButton.setEnabled(!this.f71222i0);
            this.f71214a0.setAlpha(this.f71222i0 ? 0.5f : 1.0f);
        }
    }

    public final void W1() {
        r rVar;
        if (!this.f71224k0 || (rVar = this.f71211X) == null || this.f71225l0) {
            return;
        }
        rVar.h();
        this.f71225l0 = true;
    }

    public void X1() {
        Q1();
    }

    public final String Y1() {
        return this.f71211X == null ? Lang.l(Lang.T.AI_STARTING_ENGINE) : Lang.l(Lang.T.AI_TYPING);
    }

    public final com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g Z1() {
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g[] values = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.values();
        if (values.length == 0) {
            return null;
        }
        int i10 = this.specialistOrdinal;
        if (i10 < 0 || i10 >= values.length) {
            this.specialistOrdinal = 0;
        }
        return values[this.specialistOrdinal];
    }

    public final String a2() {
        if (this.f71211X == null) {
            return Lang.l(Lang.T.AI_CONNECTING);
        }
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g Z12 = Z1();
        if (Z12 == null) {
            return Lang.l(Lang.T.AI_CHAT);
        }
        String str = this.sessionId;
        String substring = (str == null || str.length() <= 6) ? this.sessionId : this.sessionId.substring(0, 6);
        if (substring == null) {
            substring = "----";
        }
        return Z12.c() + " - " + substring;
    }

    public final void b2() {
        t4.c cVar;
        int itemCount;
        if (this.f71212Y == null || (cVar = this.f71217d0) == null || cVar.getItemCount() - 1 < 0) {
            return;
        }
        this.f71212Y.post(new h(itemCount));
    }

    public final void c2() {
        TextInputEditText textInputEditText;
        if (this.f71222i0 || (textInputEditText = this.f71213Z) == null || this.f71217d0 == null) {
            return;
        }
        String trim = textInputEditText.getText() != null ? this.f71213Z.getText().toString().trim() : "";
        if (trim.isEmpty()) {
            return;
        }
        U1();
        this.draftText = null;
        this.f71213Z.setText("");
        this.f71217d0.h(AIAgentChatMessage.n(trim));
        this.f71217d0.h(AIAgentChatMessage.h(Y1()));
        b2();
        this.f71222i0 = true;
        V1();
        k2();
        if (this.f71211X != null) {
            d2(trim);
        } else {
            this.f71223j0 = trim;
            Q1();
        }
    }

    public final void d2(final String text) {
        if (this.f71211X == null || this.f71217d0 == null) {
            this.f71223j0 = text;
            return;
        }
        this.f71222i0 = true;
        this.f71218e0 = new StringBuilder();
        this.f71219f0 = null;
        this.f71221h0 = false;
        this.f71220g0 = 0L;
        k2();
        V1();
        try {
            this.f71211X.y(text, new f());
        } catch (RuntimeException unused) {
            N7.c.j0(new g());
        }
    }

    @Override
    public void e(o4.e panelsBundle) {
        super.e(panelsBundle);
        this.preserveChatOnDetach = false;
        O1();
        Q1();
        R1();
    }

    public final void e2(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist) {
        if (specialist == null) {
            specialist = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING;
        }
        this.specialistOrdinal = specialist.ordinal();
        f2();
    }

    public final void f2() {
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g Z12 = Z1();
        if (Z12 == null) {
            f1(Lang.l(Lang.T.AI_CHAT));
            return;
        }
        f1(Lang.l(Lang.T.AI_CHAT) + " - " + Z12.c());
    }

    public final void g2() {
        r rVar = this.f71211X;
        if (rVar == null || !this.f71225l0) {
            return;
        }
        rVar.m();
        this.f71225l0 = false;
    }

    @Override
    public void h(o4.e panelsBundle) {
        super.h(panelsBundle);
        this.preserveChatOnDetach = true;
        TextInputEditText textInputEditText = this.f71213Z;
        this.draftText = (textInputEditText == null || textInputEditText.getText() == null) ? this.draftText : this.f71213Z.getText().toString();
    }

    public final void h2() {
        TextView textView = this.f71215b0;
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.AI_CONNECTING));
        }
    }

    public final void i2() {
        TextView textView = this.f71215b0;
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.AI_ERROR));
        }
    }

    public final void j2() {
        if (this.f71215b0 == null) {
            return;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g Z12 = Z1();
        if (Z12 == null) {
            this.f71215b0.setText(Lang.l(Lang.T.AI_CHAT));
            return;
        }
        String str = this.sessionId;
        String substring = (str == null || str.length() <= 6) ? this.sessionId : this.sessionId.substring(0, 6);
        if (substring == null) {
            substring = "----";
        }
        this.f71215b0.setText(Z12.c() + " - " + substring);
    }

    public final void k2() {
        TextView textView = this.f71215b0;
        if (textView != null) {
            textView.setText(Lang.l(Lang.T.AI_TYPING));
        }
    }

    public AIAgentChatPanel(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist) {
        this();
        super.W0(true);
        e2(specialist);
    }

    public AIAgentChatPanel(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist, String sessionId) {
        this(specialist);
        super.W0(true);
        this.sessionId = sessionId;
        this.chatRequested = true;
    }
}
