package com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping;

import C5.b;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;

public class RenderTextureExtractor extends Component {

    public static final String f76238F = "RenderTextureExtractor";

    public static final Class f76239G = RenderTextureExtractor.class;

    public JAVARuntime.Component f76240E;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return RenderTextureExtractor.f76239G;
        }

        @Override
        public String c() {
            return RenderTextureExtractor.f76238F;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.PROTOTYPING);
        }

        @Override
        public String f() {
            return RenderTextureExtractor.f76238F;
        }
    }

    static {
        C13201a.b(new a());
    }

    public RenderTextureExtractor() {
        super(f76238F);
    }

    @Override
    public List<b> getInspectorEntries(Context context) {
        return new LinkedList();
    }

    @Override
    public String getTitle() {
        return f76238F;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        Tb.a imageBuffer;
        Material material;
        super.preUpdate(gameObject, isEditor);
        UIController uIController = (UIController) gameObject.d0(UIController.class);
        if (uIController != null) {
            imageBuffer = uIController.getFrameBuffer();
        } else {
            Camera camera = (Camera) gameObject.d0(Camera.class);
            imageBuffer = camera != null ? camera.getImageBuffer() : null;
        }
        if (imageBuffer != null) {
            EmbeddedMatMR embeddedMatMR = (EmbeddedMatMR) gameObject.d0(EmbeddedMatMR.class);
            if (embeddedMatMR != null) {
                Material material2 = embeddedMatMR.f73682F;
                if (material2 != null) {
                    try {
                        material2.h0("albedo", imageBuffer.l());
                        return;
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        return;
                    }
                }
                return;
            }
            ModelRenderer modelRenderer = (ModelRenderer) gameObject.d0(ModelRenderer.class);
            if (modelRenderer == null || (material = modelRenderer.f73747F) == null) {
                return;
            }
            try {
                material.h0("albedo", imageBuffer.l());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76240E = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76240E;
        if (component != null) {
            return component;
        }
        JAVARuntime.RenderTextureExtractor renderTextureExtractor = new JAVARuntime.RenderTextureExtractor(this);
        this.f76240E = renderTextureExtractor;
        return renderTextureExtractor;
    }

    @Override
    public Component mo1248clone() {
        return new RenderTextureExtractor();
    }
}
