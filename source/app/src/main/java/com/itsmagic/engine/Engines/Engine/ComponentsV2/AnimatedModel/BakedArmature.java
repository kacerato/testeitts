package com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel;

import C5.b;
import D5.h;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Runnable;
import android.content.Context;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Empty;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import fb.AbstractC13203c;
import fb.C13201a;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import jd.C13823b;
import r4.C15147a;

public class BakedArmature extends Component implements Serializable {

    public static final String f72925I = "BakedArmature";

    public static final Class f72926J = BakedArmature.class;

    public transient boolean f72927E;

    public transient long f72928F;

    public transient int f72929G;

    public JAVARuntime.Component f72930H;

    @Expose
    private final List<AnimationEntry> animationsList;

    @Expose
    private int armatureID;

    @Expose
    private List<Bone> boneList;

    @Expose
    public String startAnimation;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return BakedArmature.f72926J;
        }

        @Override
        public String c() {
            return BakedArmature.f72925I;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.MODEL_RENDERERS);
        }

        @Override
        public String f() {
            return BakedArmature.f72925I;
        }
    }

    public class b implements Runnable {

        public final Runnable f72931b;

        public b(final Runnable val$runnable) {
            this.f72931b = val$runnable;
        }

        @Override
        public void run() {
            this.f72931b.run();
        }
    }

    public class c implements D5.a {

        public class a extends LinkedList<C12908b> {

            public class C1186a implements dd.d {

                public class C1187a implements Yc.g {

                    public class C1188a implements Runnable {

                        public final String f72937b;

                        public C1188a(final String val$file) {
                            this.f72937b = val$file;
                        }

                        @Override
                        public void run() {
                            BakedArmature.this.addEntryInternal(new AnimationEntry(this.f72937b));
                            BakedArmature.this.reloadInspector();
                        }
                    }

                    public C1187a() {
                    }

                    @Override
                    public void b(C13823b pfile) {
                        if (pfile != null) {
                            try {
                                if (!pfile.f().isEmpty()) {
                                    String f10 = pfile.f();
                                    if (f10 != null && !f10.isEmpty()) {
                                        BakedArmature.this.runOnEngineForListMutation(new C1188a(f10));
                                    }
                                }
                            } catch (Error e10) {
                                e = e10;
                                e.printStackTrace();
                                return;
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                return;
                            }
                        }
                        N7.c.v0("No file selected");
                    }
                }

                public C1186a() {
                }

                @Override
                public void onSelected(View v10) {
                    Yc.c.a(".anim", new C1187a());
                }
            }

            public a() {
                add(new C12908b("From project", new C1186a()));
            }
        }

        public c() {
        }

        @Override
        public void a(View view, int adapterPosition) {
            Y6.a.F1(view, C15147a.e.Left, new a());
        }
    }

    public class d implements c.o0 {

        public final AnimationEntry f72939a;

        public class a implements h {

            public class C1189a implements Runnable {

                public final Variable f72942b;

                public C1189a(final Variable val$variable) {
                    this.f72942b = val$variable;
                }

                /* JADX WARN: Code restructure failed: missing block: B:6:0x0028, code lost:
                
                    if (r0.f72940b.startAnimation.equals(r0.f72939a.c()) != false) goto L8;
                 */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
                @Override
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() {
                    boolean z10;
                    d dVar = d.this;
                    String str = BakedArmature.this.startAnimation;
                    if (str != null) {
                        if (!str.equals(dVar.f72939a.getFile())) {
                            d dVar2 = d.this;
                        }
                        z10 = true;
                        d.this.f72939a.g(this.f72942b.str_value);
                        d dVar3 = d.this;
                        AnimationEntry animationEntry = dVar3.f72939a;
                        animationEntry.f72923b = null;
                        animationEntry.f72924c = null;
                        if (z10) {
                            return;
                        }
                        BakedArmature.this.startAnimation = animationEntry.getFile();
                        return;
                    }
                    z10 = false;
                    d.this.f72939a.g(this.f72942b.str_value);
                    d dVar32 = d.this;
                    AnimationEntry animationEntry2 = dVar32.f72939a;
                    animationEntry2.f72923b = null;
                    animationEntry2.f72924c = null;
                    if (z10) {
                    }
                }
            }

            public a() {
            }

            @Override
            public Variable get() {
                AnimationEntry animationEntry = d.this.f72939a;
                if (animationEntry == null || animationEntry.getFile() == null) {
                    return new Variable("", "");
                }
                return new Variable("temp", d.this.f72939a.getFile() + "");
            }

            @Override
            public void set(Variable variable) {
                if (variable != null) {
                    BakedArmature.this.runOnEngineForListMutation(new C1189a(variable));
                }
            }
        }

        public class b implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    for (int i10 = 0; i10 < BakedArmature.this.animationsList.size(); i10++) {
                        AnimationEntry animationEntry = (AnimationEntry) BakedArmature.this.animationsList.get(i10);
                        if (animationEntry.b() != null && animationEntry != d.this.f72939a) {
                            animationEntry.b().stop();
                        }
                    }
                    if (d.this.f72939a.b() != null) {
                        d.this.f72939a.b().play();
                    }
                }
            }

            public b() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class c implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    for (int i10 = 0; i10 < BakedArmature.this.animationsList.size(); i10++) {
                        AnimationEntry animationEntry = (AnimationEntry) BakedArmature.this.animationsList.get(i10);
                        if (animationEntry.b() != null && animationEntry != d.this.f72939a) {
                            animationEntry.b().stop();
                        }
                    }
                    if (d.this.f72939a.b() != null) {
                        d.this.f72939a.b().playInLoop();
                    }
                }
            }

            public c() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class C1190d implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    if (d.this.f72939a.b() != null) {
                        d.this.f72939a.b().stop();
                    }
                }
            }

            public C1190d() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                K8.a.I(new a());
            }
        }

        public class e implements D5.a {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    d dVar = d.this;
                    BakedArmature.this.removeEntryInternal(dVar.f72939a);
                    BakedArmature.this.reloadInspector();
                }
            }

            public e() {
            }

            @Override
            public void a(View view, int adapterPosition) {
                BakedArmature.this.runOnEngineForListMutation(new a());
            }
        }

        public d(final AnimationEntry val$animationEntry) {
            this.f72939a = val$animationEntry;
        }

        @Override
        public boolean a() {
            return false;
        }

        @Override
        public List<C5.b> b(List<C5.b> entries) {
            entries.add(new C5.b(new a(), (String) null, b.a.InputFile, ".anim"));
            if (c8.b.k()) {
                entries.add(new C5.b(new b(), "Play once"));
                entries.add(new C5.b(new c(), "Play loop"));
                entries.add(new C5.b(new C1190d(), "Stop"));
            }
            entries.add(new C5.b(new e(), "Exclude"));
            com.itsmagic.engine.Engines.Engine.Animation.d b10 = this.f72939a.b();
            if (b10 == null || !b10.f72609i) {
                entries.add(new C5.b("Animation is stopped", 12));
            } else {
                entries.add(new C5.b("Animation is playing", 12));
            }
            return entries;
        }
    }

    public class e implements h {

        public final List f72952a;

        public e(final List val$values) {
            this.f72952a = val$values;
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                int i10 = variable.int_value;
                if (i10 >= 0 && i10 < this.f72952a.size()) {
                    BakedArmature.this.setStartAnimationFromEntry((AnimationEntry) this.f72952a.get(i10));
                }
                BakedArmature.this.reloadInspector();
            }
        }
    }

    public class f implements g {

        public final Lb.a f72954a;

        public f(final Lb.a val$listener) {
            this.f72954a = val$listener;
        }

        @Override
        public void a(String animation, int progress, int total) {
            this.f72954a.d(total > 0 ? (progress + 1) / total : 1.0f);
        }

        @Override
        public void b(String animation, int progress, int total) {
            this.f72954a.b("(" + BakedArmature.this.f79250n.getName() + "),(BakedArmature),(Loading Animations),(" + animation + " - " + progress + "/" + total + ")");
        }
    }

    public interface g {
        void a(String animation, int progress, int total);

        void b(String animation, int progress, int total);
    }

    static {
        C13201a.b(new a());
    }

    public BakedArmature() {
        super(f72925I);
        this.boneList = new SteppedArrayList();
        this.animationsList = new SteppedArrayList();
        this.f72928F = -1L;
        this.f72929G = 0;
    }

    private void applyStartAnimationIfNeeded() {
        if (!c8.b.k() || this.f72927E) {
            return;
        }
        this.f72927E = true;
        AnimationEntry startAnimationEntry = getStartAnimationEntry();
        if (startAnimationEntry == null || startAnimationEntry.b() == null) {
            return;
        }
        startAnimationEntry.b().playInLoop();
    }

    private long buildPoseID(int animationIndex, int frame) {
        return (frame & 4294967295L) | (animationIndex << 32);
    }

    private C5.b createStartAnimationDropdown() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        steppedArrayList.add("None");
        steppedArrayList2.add(null);
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            steppedArrayList.add(getAnimationDisplayName(animationEntry));
            steppedArrayList2.add(animationEntry);
        }
        return new C5.b(new e(steppedArrayList2), getStartAnimationDisplayName(), steppedArrayList, b.a.SLDropdown, "Start animation");
    }

    private String getAnimationDisplayName(AnimationEntry entry) {
        return (entry == null || entry.getFile() == null || entry.getFile().isEmpty()) ? Empty.f74413H : Tc.b.w(entry.getFile(), true);
    }

    private String getStartAnimationDisplayName() {
        AnimationEntry startAnimationEntry = getStartAnimationEntry();
        return startAnimationEntry == null ? "None" : getAnimationDisplayName(startAnimationEntry);
    }

    private AnimationEntry getStartAnimationEntry() {
        String str = this.startAnimation;
        if (str != null && !str.isEmpty()) {
            for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
                AnimationEntry animationEntry = this.animationsList.get(i10);
                if (animationEntry != null && (this.startAnimation.equals(animationEntry.getFile()) || this.startAnimation.equals(animationEntry.c()))) {
                    return animationEntry;
                }
            }
        }
        return null;
    }

    public void runOnEngineForListMutation(Runnable runnable) {
        K8.a.I(new b(runnable));
    }

    public void setStartAnimationFromEntry(AnimationEntry entry) {
        this.startAnimation = entry != null ? entry.getFile() : null;
    }

    private void updateAnimations(g listener) {
        String str;
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            if (animationEntry.getFile() == null || animationEntry.getFile().isEmpty()) {
                animationEntry.f72924c = null;
                animationEntry.f72923b = null;
            } else {
                String str2 = animationEntry.f72923b;
                if ((str2 == null || !str2.equals(animationEntry.c())) && ((str = animationEntry.f72923b) == null || !str.equals(animationEntry.getFile()))) {
                    if (listener != null) {
                        listener.b(animationEntry.getFile(), i10, this.animationsList.size());
                    }
                    AnimationData c10 = com.itsmagic.engine.Engines.Engine.Animation.b.c(animationEntry.getFile());
                    if (c10 != null) {
                        animationEntry.f72924c = new com.itsmagic.engine.Engines.Engine.Animation.d(c10, animationEntry.getFile());
                        if (animationEntry.d()) {
                            animationEntry.f72923b = animationEntry.c();
                            animationEntry.h(animationEntry.c());
                        } else {
                            animationEntry.f72923b = animationEntry.getFile();
                            animationEntry.h(Tc.b.v(animationEntry.getFile()));
                        }
                    } else {
                        if (animationEntry.d()) {
                            animationEntry.f72923b = animationEntry.c();
                            animationEntry.h(animationEntry.c());
                        } else {
                            animationEntry.f72923b = animationEntry.getFile();
                            animationEntry.h(Tc.b.v(animationEntry.getFile()));
                        }
                        System.out.println("Failed to load animation file:" + animationEntry.getFile());
                    }
                    if (listener != null) {
                        listener.a(animationEntry.getFile(), i10, this.animationsList.size());
                    }
                }
            }
        }
    }

    private void updatePoseOf(GameObject gameObject) {
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10.isEnabled() && (L10 instanceof AnimatedModelRenderer)) {
                ((AnimatedModelRenderer) L10).onPoseChanged(this.armatureID, this.f72928F, this);
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            GameObject C10 = gameObject.C(i11);
            if (C10.isEnabled()) {
                updatePoseOf(C10);
            }
        }
    }

    private void updateSelectedAnimationFrame() {
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = getCurrentAnimation();
        if (currentAnimation == null) {
            this.f72929G = 0;
            this.f72928F = -1L;
            return;
        }
        if (currentAnimation.f72609i) {
            AnimationData h10 = currentAnimation.h();
            int h11 = h10 != null ? h10.h() : 0;
            float b10 = currentAnimation.f72608g + (K8.d.b() * (h10 != null ? h10.getFps() : 30) * currentAnimation.f72610j);
            currentAnimation.f72608g = b10;
            float f10 = h11;
            if (b10 > f10) {
                if (currentAnimation.f72611k) {
                    currentAnimation.f72608g = 0.0f;
                } else {
                    currentAnimation.f72609i = false;
                    currentAnimation.f72608g = f10;
                }
            }
            if (currentAnimation.f72608g < 0.0f) {
                if (currentAnimation.f72611k) {
                    currentAnimation.f72608g = f10;
                } else {
                    currentAnimation.f72609i = false;
                    currentAnimation.f72608g = 0.0f;
                }
            }
        }
        int i10 = (int) currentAnimation.f72608g;
        this.f72929G = i10;
        this.f72928F = buildPoseID(currentAnimation.f72616p, i10);
    }

    public void addEntryInternal(AnimationEntry entry) {
        K8.a.F();
        this.animationsList.add(entry);
        updateAnimations(null);
    }

    @Override
    public int countAsync() {
        return 1;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d findAnimation(String name) {
        if (name == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            if (animationEntry.f72924c != null && animationEntry.c() != null) {
                if (animationEntry.c().equalsIgnoreCase(name + ".anim")) {
                    return animationEntry.f72924c;
                }
            }
        }
        return null;
    }

    public List<AnimationEntry> getAnimationsList() {
        return this.animationsList;
    }

    public int getArmatureID() {
        return this.armatureID;
    }

    public List<Bone> getBoneList() {
        return this.boneList;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d getCurrentAnimation() {
        AnimationEntry selectedEntry = getSelectedEntry();
        if (selectedEntry != null) {
            return selectedEntry.b();
        }
        return null;
    }

    @Override
    public C2632k getDependencyFiles(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            if (animationEntry.getFile() != null && !animationEntry.getFile().isEmpty()) {
                c2632k.f9114a.add(animationEntry.getFile());
            }
        }
        return c2632k;
    }

    @Override
    public String getDisplayableTitle() {
        return f72925I;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_skeletonbone;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(createStartAnimationDropdown());
        linkedList.add(new C5.b(new c(), Lang.l(Lang.T.ADD_ANIMATION)));
        linkedList.add(new C5.b(Lang.l(Lang.T.ANIMATION_LIST), 12));
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            linkedList.add(F5.c.d(getInspectorMemory(), getAnimationDisplayName(animationEntry), new d(animationEntry)));
        }
        try {
            linkedList.add(new C5.b(S8.e.j(getArmatureID()) + " baked poses", 12));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return linkedList;
    }

    public int getPoseFrame() {
        return this.f72929G;
    }

    public long getPoseID() {
        return this.f72928F;
    }

    public AnimationEntry getSelectedEntry() {
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            com.itsmagic.engine.Engines.Engine.Animation.d dVar = animationEntry.f72924c;
            if (dVar != null && dVar.f72609i) {
                return animationEntry;
            }
        }
        return null;
    }

    @Override
    public String getTitle() {
        return f72925I;
    }

    @Override
    public void loadAsync(Lb.a listener) {
        updateAnimations(new f(listener));
        listener.e();
    }

    @Override
    public void onAttach() {
        super.onAttach();
        S8.e.i(this);
        updateAnimations(null);
        applyStartAnimationIfNeeded();
    }

    @Override
    public void onDetach() {
        S8.e.k(this);
        super.onDetach();
    }

    @Override
    public void onGameStateChanged(boolean running, boolean paused) {
        super.onGameStateChanged(running, paused);
        updateAnimations(null);
        applyStartAnimationIfNeeded();
    }

    public void play() {
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = getCurrentAnimation();
        if (currentAnimation != null) {
            currentAnimation.play();
        }
    }

    public void playInLoop() {
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = getCurrentAnimation();
        if (currentAnimation != null) {
            currentAnimation.playInLoop();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        long j10 = this.f72928F;
        updateSelectedAnimationFrame();
        if (j10 != this.f72928F) {
            updatePoseOf(gameObject);
        }
    }

    @Override
    public void reloadFilesPaths(BuildDictionary dictionary) {
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            AnimationEntry animationEntry = this.animationsList.get(i10);
            if (animationEntry != null) {
                String v10 = Tc.b.v(animationEntry.getFile());
                BuildDicFile f10 = dictionary.f(animationEntry.getFile());
                if (f10 != null) {
                    dictionary.h("BakedArmature: REPLACING " + animationEntry.getFile() + " TO " + f10.b());
                    animationEntry.g(f10.b());
                    animationEntry.h(v10);
                    animationEntry.f(true);
                }
            }
        }
    }

    public void removeEntryInternal(AnimationEntry entry) {
        String str;
        K8.a.F();
        if (this.animationsList.remove(entry)) {
            if (entry != null && (str = this.startAnimation) != null && (str.equals(entry.getFile()) || this.startAnimation.equals(entry.c()))) {
                this.startAnimation = null;
            }
            updateAnimations(null);
        }
    }

    public void setArmatureID(int armatureID) {
        if (this.armatureID == armatureID) {
            return;
        }
        boolean g10 = S8.e.g(this);
        if (g10) {
            S8.e.k(this);
        }
        this.armatureID = armatureID;
        if (g10) {
            S8.e.i(this);
        }
    }

    public void setFrame(int frame) {
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = getCurrentAnimation();
        if (currentAnimation != null) {
            currentAnimation.f72608g = frame;
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f72930H = run;
    }

    public void stop() {
        com.itsmagic.engine.Engines.Engine.Animation.d currentAnimation = getCurrentAnimation();
        if (currentAnimation != null) {
            currentAnimation.stop();
        }
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f72930H;
        if (component != null) {
            return component;
        }
        JAVARuntime.BakedArmature bakedArmature = new JAVARuntime.BakedArmature(this);
        this.f72930H = bakedArmature;
        return bakedArmature;
    }

    @Override
    public Component mo1248clone() {
        BakedArmature bakedArmature = new BakedArmature();
        bakedArmature.armatureID = this.armatureID;
        bakedArmature.startAnimation = this.startAnimation;
        for (int i10 = 0; i10 < this.animationsList.size(); i10++) {
            bakedArmature.animationsList.add(this.animationsList.get(i10).clone());
        }
        bakedArmature.boneList = this.boneList;
        return bakedArmature;
    }

    public com.itsmagic.engine.Engines.Engine.Animation.d findAnimation(int index) {
        if (index < 0 || this.animationsList.size() <= index) {
            return null;
        }
        return this.animationsList.get(index).f72924c;
    }

    public BakedArmature(int armatureID) {
        super(f72925I);
        this.boneList = new SteppedArrayList();
        this.animationsList = new SteppedArrayList();
        this.f72928F = -1L;
        this.f72929G = 0;
        this.armatureID = armatureID;
    }
}
