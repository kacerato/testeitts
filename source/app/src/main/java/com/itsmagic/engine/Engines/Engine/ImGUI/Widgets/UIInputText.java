package com.itsmagic.engine.Engines.Engine.ImGUI.Widgets;

import C5.b;
import F5.c;
import Ic.B;
import Ic.D;
import JAVARuntime.Component;
import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import com.ardor3d.util.export.xml.XMLExporter;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiRenderableComponent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.ImGui;
import com.itsmagic.engine.Engines.Engine.ImGUI.Utils.UIFontHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIInputText;
import com.itsmagic.engine.Engines.Engine.JavaPool.FloatArrayJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import fb.AbstractC13203c;
import fb.C13201a;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import rc.C15169a;
import s8.InterfaceC15237a;
import tb.C15391a;

public class UIInputText extends ImGuiRenderableComponent {

    public static final String f78571V = "UIInputText";

    public static final Class f78572W = UIInputText.class;

    public ByteBuffer f78573P;

    public ByteBuffer f78574Q;

    public boolean f78575R;

    public int f78576S;

    public Set<tc.e> f78577T;

    public Component f78578U;

    @Expose
    @eb.f
    private ColorINT color;

    @Expose
    private boolean extractUI;

    @Expose
    private String extractUITitle;

    @Expose
    private UIFontHandler fontHandler;

    @Expose
    private String text;

    @Expose
    @eb.f
    private float textSize;

    public class a implements Runnable {

        public final String f78579b;

        public final String f78580c;

        public class RunnableC1321a implements Runnable {

            public final String f78582b;

            public RunnableC1321a(final String val$finalValue) {
                this.f78582b = val$finalValue;
            }

            @Override
            public void run() {
                UIInputText.this.setText(this.f78582b);
            }
        }

        public a(final String val$defaultText, final String val$title) {
            this.f78579b = val$defaultText;
            this.f78580c = val$title;
        }

        public final void b(EditText editText, DialogInterface dialogInterface, int i10) {
            K8.a.I(new RunnableC1321a(editText.getText() != null ? editText.getText().toString() : ""));
        }

        @Override
        public void run() {
            final EditText editText = new EditText(N7.c.o());
            editText.setText(this.f78579b);
            if (editText.getText() != null) {
                editText.setSelection(editText.getText().length());
            }
            editText.setSingleLine(true);
            new AlertDialog.Builder(N7.c.o()).setTitle(this.f78580c).setView(editText).setPositiveButton(R.string.f32411ok, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    UIInputText.a.this.b(editText, dialogInterface, i10);
                }
            }).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).show();
        }
    }

    public class b extends AbstractC13203c {
        @Override
        public Class b() {
            return UIInputText.f78572W;
        }

        @Override
        public String c() {
            return UIInputText.f78571V;
        }

        @Override
        public String e() {
            return "UI/Widgets";
        }

        @Override
        public String h(boolean translate) {
            return "InputText";
        }
    }

    public class c implements Predicate<tc.e> {

        public final List f78584b;

        public c(final List val$downButtons) {
            this.f78584b = val$downButtons;
        }

        @Override
        public boolean test(tc.e keyboardButton) {
            return !this.f78584b.contains(keyboardButton);
        }
    }

    public class d implements D5.h {

        public class a implements Runnable {

            public final Variable f78587b;

            public a(final Variable val$variable) {
                this.f78587b = val$variable;
            }

            @Override
            public void run() {
                UIInputText.this.setText(this.f78587b.str_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return UIInputText.this.text != null ? new Variable("", UIInputText.this.text) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class e implements D5.h {

        public class a implements Runnable {

            public final Variable f78590b;

            public a(final Variable val$variable) {
                this.f78590b = val$variable;
            }

            @Override
            public void run() {
                UIInputText.this.setColor(this.f78590b.color_value.clone());
            }
        }

        public e() {
        }

        @Override
        public Variable get() {
            return UIInputText.this.color != null ? new Variable("temp", UIInputText.this.color) : new Variable("", "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIInputText.this.textSize + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIInputText.this.setTextSize(variable.float_value);
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIInputText.this.extractUI + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIInputText.this.setExtractUI(variable.booolean_value.booleanValue());
            }
        }
    }

    public class h implements D5.h {
        public h() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIInputText.this.extractUITitle != null ? UIInputText.this.extractUITitle : "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIInputText.this.setExtractUITitle(variable.str_value);
            }
        }
    }

    public class i implements c.s0 {
        public i() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            UIInputText.this.fontHandler.m(id2);
        }
    }

    public class j implements D5.h {
        public j() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIInputText.this.fontHandler.f() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UIInputText.this.fontHandler.l(variable.str_value);
            }
        }
    }

    static {
        C13201a.b(new b());
    }

    public UIInputText() {
        super(f78571V);
        this.text = "My textview";
        this.color = new ColorINT();
        this.textSize = 1.0f;
        this.fontHandler = new UIFontHandler();
        this.extractUI = true;
        this.extractUITitle = "Edit text";
        this.f78575R = false;
        this.f78576S = -1;
        this.f78577T = new HashSet();
    }

    private void changeNativeCursorPos() {
        this.f78574Q.position(0);
        this.f78574Q.putInt(this.f78576S);
    }

    private void listenKeyboard() {
        int i10;
        if (C15169a.j("android_back").f()) {
            C15169a.H(this);
            this.f78575R = false;
            return;
        }
        List<tc.e> g10 = C15169a.f108811t.g();
        boolean z10 = false;
        for (tc.e eVar : g10) {
            if (!this.f78577T.contains(eVar)) {
                this.f78577T.add(eVar);
                if (eVar.f117287b.equals(C15169a.f.f108836g)) {
                    if (this.f78576S > 0) {
                        this.text = this.text.substring(0, this.f78576S - 1) + this.text.substring(this.f78576S);
                        writeTextToNativeBuffer();
                        int i11 = this.f78576S - 1;
                        this.f78576S = i11;
                        if (i11 < 0) {
                            this.f78576S = 0;
                        }
                        changeNativeCursorPos();
                    }
                } else if (eVar.f117287b.equals(C15169a.f.f108837h)) {
                    C15169a.H(this);
                    this.f78575R = false;
                } else {
                    int i12 = eVar.f117298o;
                    if (i12 > 0 && !Character.isISOControl(i12)) {
                        String str = new String(Character.toChars(i12));
                        this.text = this.text.substring(0, this.f78576S) + str + this.text.substring(this.f78576S);
                        this.f78576S = this.f78576S + str.length();
                        changeNativeCursorPos();
                        z10 = true;
                    }
                }
            }
        }
        for (tc.e eVar2 : g10) {
            if (eVar2.f117299p >= 0.5f && (i10 = eVar2.f117298o) > 0 && !Character.isISOControl(i10)) {
                String str2 = new String(Character.toChars(i10));
                this.text = this.text.substring(0, this.f78576S) + str2 + this.text.substring(this.f78576S);
                this.f78576S = this.f78576S + str2.length();
                changeNativeCursorPos();
                z10 = true;
            }
        }
        if (z10) {
            writeTextToNativeBuffer();
        }
        this.f78577T.removeIf(new c(g10));
    }

    private void showExtractUIDialog() {
        if (N7.c.o() == null) {
            return;
        }
        String str = this.text;
        if (str == null) {
            str = "";
        }
        String str2 = this.extractUITitle;
        N7.c.j0(new a(str, str2 != null ? str2 : ""));
    }

    private void writeTextToNativeBuffer() {
        if (this.text == null) {
            this.text = "";
        }
        int length = this.text.length() + 1;
        ByteBuffer byteBuffer = this.f78573P;
        if (byteBuffer == null || byteBuffer.capacity() < length) {
            this.f78573P = ImGui.w(length);
        }
        this.f78573P.position(0);
        for (int i10 = 0; i10 < this.f78573P.capacity(); i10++) {
            this.f78573P.put((byte) 0);
        }
        this.f78573P.rewind();
        ImGui.S(this.f78573P, this.text);
    }

    @Override
    public void calculateInternalSizeEnd(UIController controller) {
    }

    @Override
    public void calculateInternalSizeStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        float f11 = getUIRectComponent().isAutoSW() ? -1.0f : e10;
        float f12 = getUIRectComponent().isAutoSH() ? -1.0f : f10;
        float[] acquireZeroFill = FloatArrayJP.acquireZeroFill(2);
        if (this.f78575R) {
            ImGui.nativeCalcTextSize(this.text + "|", this.textSize, f11, f12, true, this.fontHandler.g(), acquireZeroFill);
        } else {
            ImGui.nativeCalcTextSize(this.text, this.textSize, f11, f12, true, this.fontHandler.g(), acquireZeroFill);
        }
        float f13 = acquireZeroFill[0];
        float f14 = acquireZeroFill[1];
        setInternalWidgetRect(0, 0, (int) f13, (int) f14, (int) f13, (int) f14);
        if (getUIRectComponent().isAutoSW()) {
            getUIRectComponent().setGlobalWidth((int) acquireZeroFill[0]);
        }
        if (getUIRectComponent().isAutoSH()) {
            getUIRectComponent().setGlobalHeight((int) acquireZeroFill[1]);
        }
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
    }

    @InterfaceC15237a
    public ColorINT getColor() {
        return this.color;
    }

    @InterfaceC15237a
    public String getExtractUITitle() {
        return this.extractUITitle;
    }

    public C15391a getFont() {
        return this.fontHandler.e();
    }

    @Override
    public int getIconResource() {
        return com.itsmagic.engine2.R.drawable.sui_button_v3;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(new C5.b(new d(), Lang.l(Lang.T.TEXT), b.a.MLString, context));
        inspectorEntries.add(new C5.b(new e(), "color", b.a.Color, context).d(this.f79250n, this, "color", com.itsmagic.engine.Engines.Engine.Animation.c.COLOR));
        inspectorEntries.add(new C5.b(new f(), XMLExporter.ATTRIBUTE_SIZE, b.a.SLFloat).d(this.f79250n, this, "textSize", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        inspectorEntries.add(new C5.b(new g(), "Extract UI", b.a.SLBoolean));
        inspectorEntries.add(new C5.b(new h(), "Extract UI Title", b.a.SLString, context));
        inspectorEntries.add(UIFontHandler.b("Resolution", this.fontHandler.h(), new i()));
        inspectorEntries.add(new C5.b(new j(), Lang.l(Lang.T.FONT), b.a.InputFile, ".ttf|.otf"));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public String getText() {
        return this.text;
    }

    @InterfaceC15237a
    public float getTextSize() {
        return this.textSize;
    }

    @Override
    public String getTitle() {
        return "InputText";
    }

    @Override
    public Component.e getType() {
        return Component.e.UIInputText;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isEditing() {
        return this.f78575R;
    }

    @InterfaceC15237a
    public boolean isExtractUI() {
        return this.extractUI;
    }

    @Override
    public void onDetach() {
        if (this.f78575R) {
            C15169a.H(this);
            this.f78575R = false;
        }
        this.f78577T.clear();
        super.onDetach();
    }

    @Override
    public void onGuiEnd(UIController controller) {
    }

    @Override
    public void onGuiStart(UIController controller) {
        if (getUIRectComponent() == null) {
            return;
        }
        ImGui.nativeSetCursorPos(getUIRectComponent().getGlobalPosition().f(), getUIRectComponent().getGlobalPosition().g());
        float e10 = getUIRectComponent().getGlobalSize().e();
        float f10 = getUIRectComponent().getGlobalSize().f();
        float f11 = getUIRectComponent().isAutoSW() ? -1.0f : e10;
        float f12 = getUIRectComponent().isAutoSH() ? -1.0f : f10;
        if (this.f78573P == null) {
            writeTextToNativeBuffer();
        }
        boolean t10 = ImGui.t(this.f78573P, 0, this.f78575R, this.f78574Q, f11, f12, 0.0f, 0.0f, this.fontHandler.g(), this.color, this.textSize);
        this.f78576S = this.f78574Q.getInt(0);
        this.f78574Q.getInt(4);
        if (t10) {
            this.text = ImGui.D(this.f78573P);
        }
    }

    @Override
    public void onSelectedTouchChanged(tc.h touch) {
        super.onSelectedTouchChanged(touch);
        UITouchTrigger touchTrigger = getTouchTrigger();
        if (touchTrigger == null || !touchTrigger.isDown()) {
            return;
        }
        if (!this.extractUI) {
            this.f78575R = true;
            C15169a.e(this);
        } else {
            if (this.f78575R) {
                this.f78575R = false;
                C15169a.H(this);
            }
            showExtractUIDialog();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.fontHandler.n(getRequestUIDirtyRunnable());
        if (this.f78574Q == null) {
            this.f78574Q = ImGui.v();
        }
        if (this.f78576S == -1) {
            this.f78576S = this.text.length();
            changeNativeCursorPos();
        }
        if (this.f78576S > this.text.length()) {
            this.f78576S = this.text.length();
            changeNativeCursorPos();
        }
        if (this.f78575R) {
            listenKeyboard();
        }
    }

    @Override
    public void receiveEvent(Lb.c event) {
        super.receiveEvent(event);
        if (event instanceof B) {
            C15169a.H(this);
            this.f78575R = false;
        }
        if (event instanceof D) {
            C15169a.H(this);
            this.f78575R = false;
        }
    }

    @InterfaceC15237a
    public void setColor(ColorINT color) {
        ColorINT colorINT = this.color;
        if (colorINT == null && color == null) {
            return;
        }
        if (colorINT == null || color == null || colorINT.intColor != color.intColor) {
            this.color = color;
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setEditing(boolean editing) {
        if (this.f78575R == editing) {
            return;
        }
        this.f78575R = editing;
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setExtractUI(boolean extractUI) {
        if (this.extractUI != extractUI || (extractUI && this.f78575R)) {
            this.extractUI = extractUI;
            if (extractUI && this.f78575R) {
                this.f78575R = false;
                C15169a.H(this);
            }
            requestUIDirty();
        }
    }

    @InterfaceC15237a
    public void setExtractUITitle(String extractUITitle) {
        String str = this.extractUITitle;
        if (str == null) {
            if (extractUITitle == null) {
                return;
            }
        } else if (str.equals(extractUITitle)) {
            return;
        }
        this.extractUITitle = extractUITitle;
        requestUIDirty();
    }

    public void setFont(C15391a font) {
        this.fontHandler.k(font);
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f78578U = run;
    }

    @InterfaceC15237a
    public void setText(String text) {
        if (text == null) {
            text = "";
        }
        boolean equals = this.text.equals(text);
        this.text = text;
        if (equals) {
            return;
        }
        writeTextToNativeBuffer();
        requestUIDirty();
    }

    @InterfaceC15237a
    public void setTextSize(float textSize) {
        if (this.textSize == textSize) {
            return;
        }
        this.textSize = textSize;
        requestUIDirty();
    }

    @Override
    public boolean shouldTintIcon() {
        return true;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f78578U;
        if (component != null) {
            return component;
        }
        JAVARuntime.UIInputText uIInputText = new JAVARuntime.UIInputText(this);
        this.f78578U = uIInputText;
        return uIInputText;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UIInputText uIInputText = new UIInputText();
        uIInputText.text = this.text;
        uIInputText.color = ColorINT.k(this.color);
        uIInputText.textSize = this.textSize;
        uIInputText.fontHandler = this.fontHandler.a();
        uIInputText.extractUI = this.extractUI;
        uIInputText.extractUITitle = this.extractUITitle;
        return uIInputText;
    }
}
