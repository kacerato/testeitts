package com.itsmagic.engine.Engines.Engine.Settings;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.Variable;
import h4.k;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

public class VCSSettings implements Serializable {

    @Expose
    public boolean enableVCS = false;

    @Expose
    public int maximumVCSDiskUsage = 512;

    public class a implements h {

        public final c f79570a;

        public class C1355a implements Runnable {

            public final Variable f79572b;

            public class RunnableC1356a implements Runnable {
                public RunnableC1356a() {
                }

                @Override
                public void run() {
                    a.this.f79570a.a();
                }
            }

            public C1355a(final Variable val$variable) {
                this.f79572b = val$variable;
            }

            @Override
            public void run() {
                VCSSettings.this.enableVCS = this.f79572b.booolean_value.booleanValue();
                K8.a.l().k();
                N7.c.j0(new RunnableC1356a());
            }
        }

        public a(final c val$listener) {
            this.f79570a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", VCSSettings.this.enableVCS + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new C1355a(variable));
            }
        }
    }

    public class b implements h {

        public final c f79575a;

        public class a implements Runnable {

            public final Variable f79577b;

            public class RunnableC1357a implements Runnable {
                public RunnableC1357a() {
                }

                @Override
                public void run() {
                    b.this.f79575a.a();
                }
            }

            public a(final Variable val$variable) {
                this.f79577b = val$variable;
            }

            @Override
            public void run() {
                VCSSettings.this.maximumVCSDiskUsage = this.f79577b.int_value;
                K8.a.l().k();
                N7.c.j0(new RunnableC1357a());
            }
        }

        public b(final c val$listener) {
            this.f79575a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", VCSSettings.this.maximumVCSDiskUsage + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public List<C5.b> a(Context context, c listener) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new a(listener), "Enable version control system", b.a.SLBoolean));
        linkedList.add(new C5.b((h) new b(listener), "Maximum VCS Disk Usage in MB", b.a.SLInt, false));
        try {
            if (k.z() != null) {
                float C10 = k.z().C();
                if (C10 < 100.0f) {
                    linkedList.add(new C5.b("Used disk space " + Nc.b.v0(C10, 1) + " MB", 12));
                } else {
                    linkedList.add(new C5.b("Used disk space " + ((int) C10) + " MB", 12));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return linkedList;
    }
}
