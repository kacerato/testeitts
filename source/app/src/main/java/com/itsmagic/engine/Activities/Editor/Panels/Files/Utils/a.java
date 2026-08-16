package com.itsmagic.engine.Activities.Editor.Panels.Files.Utils;

import C5.b;
import D5.h;
import G4.e;
import G4.f;
import android.view.View;
import com.itsmagic.engine.Engines.Sound.Imported.AudioConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.File;
import java.util.List;

public class a {

    public static AudioConfig f71709a;

    public class C1132a implements f {

        public final c f71710a;

        public C1132a(final c val$listener) {
            this.f71710a = val$listener;
        }

        @Override
        public void a(View v10, e panel) {
            panel.R0();
            this.f71710a.a(a.f71709a.a());
        }

        @Override
        public void b(e entriesClassPanel) {
            entriesClassPanel.f7555b0 = true;
            entriesClassPanel.v1(a.a());
        }

        @Override
        public void c(e entriesClassPanel) {
            entriesClassPanel.v1(a.a());
        }

        @Override
        public void e(e entriesClassPanel) {
        }

        @Override
        public void f(e entriesClassPanel) {
            entriesClassPanel.v1(a.a());
        }

        @Override
        public void g(View v10, e panel) {
            this.f71710a.onCancel();
            panel.R0();
        }
    }

    public class b implements h {
        @Override
        public Variable get() {
            return new Variable("", String.valueOf(a.f71709a.c()));
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                a.f71709a.h(variable.booolean_value.booleanValue());
            }
        }
    }

    public interface c {
        void a(AudioConfig audioConfig);

        void onCancel();
    }

    public static List a() {
        return c();
    }

    public static List<C5.b> c() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new b(), "Trim silence from begin/end", b.a.SLBoolean));
        return steppedArrayList;
    }

    public static void d(View view, File audioFile, c listener) {
        if (audioFile == null) {
            throw new NullPointerException("audioFile can't be null");
        }
        if (listener == null) {
            throw new NullPointerException("listener can't be null");
        }
        AudioConfig e10 = AudioConfig.e(audioFile);
        f71709a = e10 != null ? e10.a() : new AudioConfig();
        e.x1("Audio config", 280, 180, new C1132a(listener));
    }
}
