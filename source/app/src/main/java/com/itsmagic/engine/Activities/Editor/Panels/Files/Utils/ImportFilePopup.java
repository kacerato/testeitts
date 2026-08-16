package com.itsmagic.engine.Activities.Editor.Panels.Files.Utils;

import C5.b;
import F5.c;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import ec.EnumC13053a;
import java.io.File;
import java.util.List;
import org.ITsMagic.Atlas.BakeOptions;

public class ImportFilePopup {

    public static ImportOptions f71704a;

    public static class ImportOptions {

        @Expose
        public int maxResolutionID = 10;

        @Expose
        public boolean generateNormalMaps = false;

        @Expose
        public int normalMapBias = 80;

        @Expose
        public boolean generateCollision = false;

        @Expose
        public boolean setStatic = false;

        @Expose
        public boolean buildAtlas = false;

        @Expose
        public BakeOptions bakeOptions = new BakeOptions();

        @Expose
        final InspectorEditor optionsEditor = new InspectorEditor();

        @Expose
        final InspectorEditor filterEditor = new InspectorEditor();

        @Expose
        public boolean allowMaterialFiles = true;

        @Expose
        public boolean allowTextureFiles = true;

        @Expose
        public boolean allowVertexFiles = true;

        @Expose
        public boolean allowObjectFiles = true;

        @Expose
        public boolean allowAnimFiles = true;

        @Expose
        public boolean importSkinningData = true;

        @Expose
        public boolean ignoreUnusedFiles = true;

        @Expose
        public b maxBonesPerVertice = b.Max4;

        @Expose
        public a boneCorrectionMode = a.Smart;

        @Expose
        public int maxBonesPerChunk = 25;

        @Expose
        public boolean explodePack = false;

        @Expose
        public boolean deleteIdentityObjects = false;

        @Expose
        public EnumC13053a transparencyMode = EnumC13053a.TRANSPARENT;

        @Expose
        public TextureConfig.c filter = TextureConfig.c.Linear;

        @Expose
        public float scale = 1.0f;

        public enum a {
            Smart,
            Split
        }

        public enum b {
            Max3,
            Max4
        }
    }

    public class a extends c.n0<EnumC13053a> {
        @Override
        public boolean b(EnumC13053a v10) {
            int i10 = l.f71707a[v10.ordinal()];
            return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5;
        }

        @Override
        public void set(EnumC13053a value) {
            ImportFilePopup.f71704a.transparencyMode = value;
        }
    }

    public class b extends c.n0<TextureConfig.c> {
        @Override
        public void set(TextureConfig.c value) {
            ImportFilePopup.f71704a.filter = value;
        }
    }

    public class c extends c.n0<ImportOptions.a> {

        public final G4.e f71705a;

        public c(final G4.e val$entriesClassPanel) {
            this.f71705a = val$entriesClassPanel;
        }

        @Override
        public void set(ImportOptions.a value) {
            ImportFilePopup.f71704a.boneCorrectionMode = value;
            this.f71705a.s1().c(this.f71705a);
        }
    }

    public class d implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.maxBonesPerChunk + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.maxBonesPerChunk = variable.int_value;
            }
        }
    }

    public class e implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.allowMaterialFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.allowMaterialFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class f implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.allowAnimFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.allowAnimFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class g implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.allowObjectFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.allowObjectFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class h implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.allowVertexFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.allowVertexFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class i implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.allowTextureFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.allowTextureFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class j implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.ignoreUnusedFiles + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.ignoreUnusedFiles = variable.booolean_value.booleanValue();
            }
        }
    }

    public class k implements G4.f {

        public final u f71706a;

        public k(final u val$listener) {
            this.f71706a = val$listener;
        }

        @Override
        public void a(View v10, G4.e panel) {
            panel.R0();
            this.f71706a.a(ImportFilePopup.f71704a);
        }

        @Override
        public void b(G4.e entriesClassPanel) {
            entriesClassPanel.f7555b0 = true;
            entriesClassPanel.v1(ImportFilePopup.c(entriesClassPanel));
        }

        @Override
        public void c(G4.e entriesClassPanel) {
            entriesClassPanel.v1(ImportFilePopup.c(entriesClassPanel));
        }

        @Override
        public void e(G4.e entriesClassPanel) {
        }

        @Override
        public void f(G4.e entriesClassPanel) {
            entriesClassPanel.v1(ImportFilePopup.c(entriesClassPanel));
        }

        @Override
        public void g(View v10, G4.e panel) {
            this.f71706a.onCancel();
            panel.R0();
        }
    }

    public static class l {

        public static final int[] f71707a;

        static {
            int[] iArr = new int[EnumC13053a.values().length];
            f71707a = iArr;
            try {
                iArr[EnumC13053a.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71707a[EnumC13053a.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71707a[EnumC13053a.MASKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71707a[EnumC13053a.TRANSPARENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f71707a[EnumC13053a.MULTIPLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class m implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", TextureConfig.f79814s[ImportFilePopup.f71704a.maxResolutionID] + "x" + TextureConfig.f79814s[ImportFilePopup.f71704a.maxResolutionID]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.maxResolutionID = variable.int_value;
            }
        }
    }

    public class n implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.generateNormalMaps + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.generateNormalMaps = variable.booolean_value.booleanValue();
            }
        }
    }

    public class o implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.normalMapBias + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.normalMapBias = variable.int_value;
            }
        }
    }

    public class p implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.scale + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.scale = variable.float_value;
            }
        }
    }

    public class q implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.setStatic + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.setStatic = variable.booolean_value.booleanValue();
            }
        }
    }

    public class r implements D5.h {

        public final G4.e f71708a;

        public r(final G4.e val$entriesClassPanel) {
            this.f71708a = val$entriesClassPanel;
        }

        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.explodePack + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.explodePack = variable.booolean_value.booleanValue();
                this.f71708a.s1().c(this.f71708a);
            }
        }
    }

    public class s implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.generateCollision + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.generateCollision = variable.booolean_value.booleanValue();
            }
        }
    }

    public class t implements D5.h {
        @Override
        public Variable get() {
            return new Variable("", ImportFilePopup.f71704a.deleteIdentityObjects + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                ImportFilePopup.f71704a.deleteIdentityObjects = variable.booolean_value.booleanValue();
            }
        }
    }

    public interface u {
        void a(ImportOptions importOptions);

        void onCancel();
    }

    public static List<C5.b> c(G4.e entriesClassPanel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (int i10 : TextureConfig.f79814s) {
            steppedArrayList2.add(i10 + "x" + i10);
        }
        steppedArrayList.add(new C5.b(new m(), TextureConfig.f79814s[f71704a.maxResolutionID] + "x" + TextureConfig.f79814s[f71704a.maxResolutionID], steppedArrayList2, b.a.SLDropdown, "Texture resolution"));
        n nVar = new n();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(nVar, "Auto generate normal maps", aVar));
        o oVar = new o();
        b.a aVar2 = b.a.SLInt;
        steppedArrayList.add(new C5.b(oVar, "Normal map bias", aVar2));
        steppedArrayList.add(new C5.b(new p(), "Scale", b.a.SLFloat));
        steppedArrayList.add(new C5.b(new q(), "Set static if not animated", aVar));
        steppedArrayList.add(new C5.b(new r(entriesClassPanel), "Explode pack", aVar));
        if (!f71704a.explodePack) {
            steppedArrayList.add(new C5.b(new s(), "Generate bake collision if not animated", aVar));
        }
        steppedArrayList.add(new C5.b(new t(), "Delete identity objects", aVar));
        steppedArrayList.add(F5.c.i(Lang.l(Lang.T.TRANSPARENCY_MODE), EnumC13053a.class, f71704a.transparencyMode, new a()));
        steppedArrayList.add(F5.c.i(Lang.l(Lang.T.TEXTURE_FILTER), TextureConfig.c.class, f71704a.filter, new b()));
        steppedArrayList.add(F5.c.i(Lang.l(Lang.T.BONE_CORRECTION_MODE), ImportOptions.a.class, f71704a.boneCorrectionMode, new c(entriesClassPanel)));
        if (f71704a.boneCorrectionMode == ImportOptions.a.Split) {
            steppedArrayList.add(new C5.b(new d(), "Max bones per chunk", aVar2));
        }
        steppedArrayList.add(new C5.b(new e(), "Import material files", aVar));
        steppedArrayList.add(new C5.b(new f(), "Import anim files", aVar));
        steppedArrayList.add(new C5.b(new g(), "Import object files", aVar));
        steppedArrayList.add(new C5.b(new h(), "Import vertex files", aVar));
        steppedArrayList.add(new C5.b(new i(), "Import texture files", aVar));
        steppedArrayList.add(new C5.b(new j(), "Ignore unused files", aVar));
        return steppedArrayList;
    }

    public static void d(View v10, File file, u listener) {
        f71704a = new ImportOptions();
        G4.e.x1("Import 3d model", 280, T6.a.f24083g0, new k(listener));
    }
}
