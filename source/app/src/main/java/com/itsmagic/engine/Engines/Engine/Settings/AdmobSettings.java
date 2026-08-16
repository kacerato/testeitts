package com.itsmagic.engine.Engines.Engine.Settings;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import android.content.Context;
import bd.C3867a;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public class AdmobSettings implements Serializable {

    @Expose
    public String token = "";

    public class a implements h {

        public class C1347a implements Runnable {

            public final Variable f79499b;

            public C1347a(final Variable val$variable) {
                this.f79499b = val$variable;
            }

            @Override
            public void run() {
                AdmobSettings.this.token = this.f79499b.str_value;
                K8.a.l().k();
            }
        }

        public a() {
        }

        @Override
        public Variable get() {
            return new Variable("", AdmobSettings.this.token + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1347a(variable));
            }
        }
    }

    public List<C5.b> a(Context context, c listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new a(), "App ID", b.a.SLString));
        linkedList.add(new C5.b(new C3867a("Attention, using an incorrect App ID results in the immediate crash of the game when exporting in APK/AAB due to the checks performed by Google Admob, we have no way to prevent this. Make sure you use a valid code.", "Aten\u00e7\u00e3o, o uso de um App ID incorreto resulta no crash imediato do jogo logo ao exportar em APK/AAB devido as verifica\u00e7\u00f5es realizadas pelo google admob, n\u00e3o temos como impedir isso. Tenha certeza de usar um codigo valido.").toString(), 12, Theme.i(Theme.T.ACCENT)));
        return linkedList;
    }

    public String b() {
        return this.token;
    }

    public void c(String token) {
        this.token = token;
    }
}
