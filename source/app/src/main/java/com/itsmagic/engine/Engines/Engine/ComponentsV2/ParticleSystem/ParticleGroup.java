package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class ParticleGroup extends Component {

    public static final String f74026F = "ParticleGroup";

    public static final Class f74027G = ParticleGroup.class;

    public JAVARuntime.Component f74028E;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ParticleGroup.f74027G;
        }

        @Override
        public String c() {
            return ParticleGroup.f74026F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.EFFECTS);
        }

        @Override
        public String f() {
            return "Particle group";
        }
    }

    static {
        C13201a.b(new a());
    }

    public ParticleGroup() {
        super(f74026F);
    }

    @Override
    public String getDisplayableTitle() {
        return "Particle group";
    }

    @Override
    public int getIconResource() {
        return R.drawable.particle;
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f74026F;
    }

    @Override
    public Component.e getType() {
        return Component.e.ParticleGroup;
    }

    @Override
    public int iconPriority() {
        return 1;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f74028E = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f74028E;
        if (component != null) {
            return component;
        }
        JAVARuntime.ParticleGroup particleGroup = new JAVARuntime.ParticleGroup(this);
        this.f74028E = particleGroup;
        return particleGroup;
    }

    @Override
    public Component mo1248clone() {
        return new ParticleGroup();
    }
}
