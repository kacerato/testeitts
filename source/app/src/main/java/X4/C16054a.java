package x4;

import F7.i;
import F7.j;
import F7.k;
import F7.l;
import G7.b;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationData;
import com.itsmagic.engine.Engines.Engine.Animation.AnimationMask;
import com.itsmagic.engine.Engines.Engine.Animation.Timeline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationEntry;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import g6.C13295c;
import gb.C13317e;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r4.C15147a;
import u4.C15575a;
import w5.n;
import yd.C16181m;

public class C16054a extends EditorPanel {

    public static final String f127921d0 = "AnimationMaskEditorPanel";

    public final String f127922X;

    public final String f127923Y;

    public final AnimationMask f127924Z;

    public final List<e> f127925a0;

    public l<f> f127926b0;

    public Runnable f127927c0;

    public class ViewOnTouchListenerC2197a implements View.OnTouchListener {
        public ViewOnTouchListenerC2197a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return false;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            C16054a.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View view) {
            C16054a.this.E1();
        }
    }

    public class d implements k<f> {
        public d() {
        }

        @Override
        public List<f> c() {
            return C16054a.this.y1();
        }

        @Override
        public List<f> f(f eElement) {
            return C16054a.this.B1(eElement);
        }

        @Override
        public void b(f element, View v10) {
        }

        @Override
        public void d(f element, boolean open) {
            if (element == null || element.f127940m == null) {
                return;
            }
            element.f127940m.f127937f = open;
        }

        @Override
        public void e(f element) {
        }
    }

    public static class e {

        public GameObject f127933b;

        public Ac.b f127934c;

        public String f127935d;

        public boolean f127936e;

        public final List<e> f127932a = new SteppedArrayList();

        public boolean f127937f = true;

        public float f127938g = 1.0f;

        public static e k(GameObject object, AnimationMask animationMask, boolean editable) {
            Ac.b bVar;
            e eVar = new e();
            eVar.f127933b = object;
            eVar.f127934c = object != null ? new Ac.b(object.getGuid().j()) : null;
            eVar.f127935d = object != null ? object.getName() : "Object";
            eVar.f127936e = editable;
            if (editable && animationMask != null && (bVar = eVar.f127934c) != null) {
                eVar.f127938g = animationMask.f(bVar);
            }
            return eVar;
        }

        public static e l(Ac.b objectUID, AnimationMask animationMask) {
            e eVar = new e();
            eVar.f127934c = objectUID;
            eVar.f127935d = objectUID.toString();
            eVar.f127936e = true;
            if (animationMask != null) {
                eVar.f127938g = animationMask.f(objectUID);
            }
            return eVar;
        }
    }

    public static class f extends i {

        public static final j f127939n = new C2198a();

        public final e f127940m;

        public class C2198a implements j {
            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
                if (!(eElement instanceof f)) {
                    imageView.setVisibility(8);
                    return;
                }
                f fVar = (f) eElement;
                if (C13317e.J(fVar.f127940m.f127933b)) {
                    imageView.setVisibility(0);
                    C13295c.d(imageView, fVar.f127940m.f127933b, context);
                } else {
                    imageView.setVisibility(0);
                    Vc.e.V(imageView, R.drawable.wo_multi, context);
                }
            }
        }

        public class b implements b.InterfaceC0147b {

            public final e f127941a;

            public b(final e val$node) {
                this.f127941a = val$node;
            }

            @Override
            public void a(float value) {
                this.f127941a.f127938g = Nc.b.E(0.0f, value, 1.0f);
            }

            @Override
            public float getValue() {
                return this.f127941a.f127938g;
            }
        }

        public class c implements F7.c {

            public final e f127943a;

            public c(final e val$node) {
                this.f127943a = val$node;
            }

            @Override
            public void a(i eElement, Context context, F7.e textViewAppearance) {
                if (this.f127943a.f127936e) {
                    textViewAppearance.f6655a = Theme.i(Theme.T.HIGH_TEXT_COLOR);
                } else {
                    textViewAppearance.f6655a = Theme.i(Theme.T.MID_TEXT_COLOR);
                }
            }
        }

        public f(e node) {
            super(v(node), f127939n);
            this.f127940m = node;
            if (node != null && node.f127936e) {
                b(new G7.b(new b(node)));
            }
            this.f6688j = new c(node);
        }

        public static String v(e node) {
            if (node == null) {
                return "";
            }
            return (node.f127934c != null ? node.f127934c.toString() : "") + "|" + (node.f127935d != null ? node.f127935d : "");
        }

        @Override
        public String g() {
            e eVar = this.f127940m;
            return eVar != null ? eVar.f127935d : "";
        }
    }

    public C16054a() {
        this("Animation Mask", "", new AnimationMask(), new LinkedList());
    }

    public static void A1(GameObject object, GameObject sourceRoot, Set<GameObject> objectsToInclude) {
        while (object != null) {
            objectsToInclude.add(object);
            if (object == sourceRoot) {
                return;
            } else {
                object = object.f79294k;
            }
        }
    }

    public static String C1(String path) {
        if (path == null) {
            return null;
        }
        return Tc.b.o(path).replace(C16181m.f130232i, "/");
    }

    public static GameObject D1(String animationFile) {
        AnimationPlayer animationPlayer;
        String C12 = C1(animationFile);
        com.itsmagic.engine.Engines.Engine.Animation.d dVar = C15575a.f118378a;
        if (dVar != null && x1(dVar, C12) && (animationPlayer = C15575a.f118379b) != null && C13317e.J(animationPlayer.f79250n)) {
            return C15575a.f118379b.f79250n;
        }
        World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
        if (world == null) {
            return null;
        }
        List<GameObject> q10 = world.q();
        for (int i10 = 0; i10 < q10.size(); i10++) {
            GameObject z12 = z1(q10.get(i10), C12);
            if (z12 != null) {
                return z12;
            }
        }
        return null;
    }

    public static FloatingPanelArea F1(String animationFile, String maskFile, Runnable onSaved) {
        AnimationData f10 = AnimationData.f(X7.a.r(animationFile));
        if (f10 == null) {
            Z6.i.y1("Ops!", "Failed to load animation file");
            return null;
        }
        GameObject D12 = D1(animationFile);
        AnimationMask animationMask = new AnimationMask();
        C16054a c16054a = new C16054a("Animation Mask", maskFile, animationMask, u1(f10, D12, animationMask));
        c16054a.f127927c0 = onSaved;
        return I1(c16054a);
    }

    public static FloatingPanelArea G1(GameObject sourceObject, Armature armature, String maskFile, Runnable onSaved) {
        if (C13317e.G(sourceObject) || armature == null) {
            Z6.i.y1("Ops!", "Invalid source object");
            return null;
        }
        GameObject gameObject = armature.f79250n;
        if (C13317e.G(gameObject)) {
            Z6.i.y1("Ops!", "This Armature has no root joint");
            return null;
        }
        AnimationMask animationMask = new AnimationMask();
        C16054a c16054a = new C16054a("Skinned Mask", maskFile, animationMask, v1(gameObject, animationMask));
        c16054a.f127927c0 = onSaved;
        return I1(c16054a);
    }

    public static FloatingPanelArea H1(GameObject sourceObject, SkinnedModelRenderer skinnedModelRenderer, String maskFile, Runnable onSaved) {
        if (C13317e.G(sourceObject) || skinnedModelRenderer == null) {
            Z6.i.y1("Ops!", "Invalid source object");
            return null;
        }
        GameObject rootJoint = skinnedModelRenderer.getRootJoint();
        if (C13317e.G(rootJoint)) {
            Z6.i.y1("Ops!", "This SkinnedModelRenderer has no root joint");
            return null;
        }
        AnimationMask animationMask = new AnimationMask();
        C16054a c16054a = new C16054a("Skinned Mask", maskFile, animationMask, v1(rootJoint, animationMask));
        c16054a.f127927c0 = onSaved;
        return I1(c16054a);
    }

    public static FloatingPanelArea I1(C16054a panel) {
        FloatingPanelArea m10 = C15147a.m(panel, 0.6f, 0.7f);
        m10.N1(true);
        m10.F1(false);
        m10.E1(true);
        return m10;
    }

    public static void s1(GameObject current, GameObject sourceRoot, Map<GameObject, e> nodes, Set<GameObject> objectsToInclude, List<e> roots) {
        if (objectsToInclude.contains(current)) {
            e eVar = nodes.get(current);
            if (eVar == null) {
                eVar = e.k(current, null, true);
                nodes.put(current, eVar);
            }
            if (current == sourceRoot && !roots.contains(eVar)) {
                roots.add(eVar);
            }
            for (int i10 = 0; i10 < current.z0().size(); i10++) {
                GameObject gameObject = current.z0().get(i10);
                if (objectsToInclude.contains(gameObject)) {
                    e eVar2 = nodes.get(gameObject);
                    if (eVar2 == null) {
                        eVar2 = e.k(gameObject, null, true);
                        nodes.put(gameObject, eVar2);
                    }
                    if (!eVar.f127932a.contains(eVar2)) {
                        eVar.f127932a.add(eVar2);
                    }
                    s1(gameObject, sourceRoot, nodes, objectsToInclude, roots);
                }
            }
            eVar.f127937f = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<e> t1(Set<Ac.b> targetUIDs, GameObject sourceRoot, AnimationMask animationMask) {
        LinkedList linkedList = new LinkedList();
        if (targetUIDs != null && !targetUIDs.isEmpty()) {
            if (C13317e.J(sourceRoot)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (Ac.b bVar : targetUIDs) {
                    if (bVar != null && !bVar.L0().g0()) {
                        GameObject l10 = C13317e.l(sourceRoot, bVar);
                        if (C13317e.J(l10)) {
                            A1(l10, sourceRoot, linkedHashSet);
                            e eVar = (e) linkedHashMap.get(l10);
                            if (eVar == null) {
                                linkedHashMap.put(l10, e.k(l10, animationMask, true));
                            } else {
                                eVar.f127936e = true;
                                eVar.f127938g = animationMask.f(bVar);
                            }
                        } else {
                            steppedArrayList.add(bVar);
                        }
                    }
                }
                if (!linkedHashMap.isEmpty()) {
                    Iterator it = new SteppedArrayList(linkedHashSet).iterator();
                    while (it.hasNext()) {
                        GameObject gameObject = (GameObject) it.next();
                        if (!linkedHashMap.containsKey(gameObject)) {
                            linkedHashMap.put(gameObject, e.k(gameObject, animationMask, true));
                        }
                    }
                    s1(sourceRoot, sourceRoot, linkedHashMap, linkedHashSet, linkedList);
                }
                for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
                    linkedList.add(e.l((Ac.b) steppedArrayList.get(i10), animationMask));
                }
                if (!linkedList.isEmpty()) {
                    return linkedList;
                }
            }
            for (Ac.b bVar2 : targetUIDs) {
                if (bVar2 != null && !bVar2.L0().g0()) {
                    linkedList.add(e.l(bVar2, animationMask));
                }
            }
        }
        return linkedList;
    }

    public static List<e> u1(AnimationData animationData, GameObject sourceRoot, AnimationMask animationMask) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (animationData != null) {
            for (int i10 = 0; i10 < animationData.k(); i10++) {
                Timeline j10 = animationData.j(i10);
                if (j10 != null && j10.i() != null) {
                    linkedHashSet.add(j10.i());
                }
            }
        }
        return t1(linkedHashSet, sourceRoot, animationMask);
    }

    public static List<e> v1(GameObject rootJoint, AnimationMask animationMask) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        w1(rootJoint, linkedHashSet);
        return t1(linkedHashSet, rootJoint, animationMask);
    }

    public static void w1(GameObject object, Set<Ac.b> targetUIDs) {
        if (C13317e.G(object)) {
            return;
        }
        if (((SkinJoint) object.c0(Component.e.SkinJoint)) != null) {
            targetUIDs.add(new Ac.b(object.getGuid().j()));
        }
        for (int i10 = 0; i10 < object.z0().size(); i10++) {
            w1(object.z0().get(i10), targetUIDs);
        }
    }

    public static boolean x1(com.itsmagic.engine.Engines.Engine.Animation.d animationInstance, String file) {
        return (animationInstance == null || file == null || !file.equals(C1(animationInstance.getFile()))) ? false : true;
    }

    public List<f> y1() {
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f127925a0.size(); i10++) {
            e eVar = this.f127925a0.get(i10);
            f fVar = new f(eVar);
            fVar.q(0);
            fVar.r(!eVar.f127932a.isEmpty());
            fVar.f6684f.f6678c = eVar.f127937f;
            linkedList.add(fVar);
        }
        return linkedList;
    }

    public static GameObject z1(GameObject object, String animationFile) {
        if (C13317e.G(object)) {
            return null;
        }
        AnimationPlayer animationPlayer = (AnimationPlayer) object.c0(Component.e.AnimationPlayer);
        if (animationPlayer != null) {
            List<AnimationEntry> entriesList = animationPlayer.getEntriesList();
            for (int i10 = 0; i10 < entriesList.size(); i10++) {
                AnimationEntry animationEntry = entriesList.get(i10);
                if (animationEntry != null && animationFile.equals(C1(animationEntry.getFile()))) {
                    return object;
                }
            }
        }
        for (int i11 = 0; i11 < object.z0().size(); i11++) {
            GameObject z12 = z1(object.z0().get(i11), animationFile);
            if (z12 != null) {
                return z12;
            }
        }
        return null;
    }

    public final List<f> B1(f element) {
        LinkedList linkedList = new LinkedList();
        if (element != null && element.f127940m != null) {
            for (int i10 = 0; i10 < element.f127940m.f127932a.size(); i10++) {
                e eVar = (e) element.f127940m.f127932a.get(i10);
                f fVar = new f(eVar);
                fVar.q(element.e() + 1);
                fVar.r(!eVar.f127932a.isEmpty());
                fVar.f6684f.f6678c = eVar.f127937f;
                linkedList.add(fVar);
            }
        }
        return linkedList;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.animation_mask_editor_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC2197a());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.maskFile);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.closeX);
        Button button = (Button) inflate.findViewById(R.id.save);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        textView.setText(this.f127922X);
        textView2.setText(this.f127923Y);
        imageView.setOnClickListener(new b());
        button.setOnClickListener(new c());
        this.f127926b0 = new l<>(recyclerView, new d());
        return inflate;
    }

    public final void E1() {
        J1(this.f127925a0);
        if (!X7.a.b(this.f127923Y, this.f127924Z.o(), M())) {
            Z6.i.y1("Ops!", "Failed to save animation mask");
            return;
        }
        y.c();
        N7.c.D().B0(new n());
        Runnable runnable = this.f127927c0;
        if (runnable != null) {
            runnable.run();
        }
        N7.c.v0("Animation mask saved");
        R0();
    }

    public final void J1(List<e> nodes) {
        if (nodes == null) {
            return;
        }
        for (int i10 = 0; i10 < nodes.size(); i10++) {
            e eVar = nodes.get(i10);
            if (eVar != null) {
                if (eVar.f127936e && eVar.f127934c != null) {
                    this.f127924Z.k(eVar.f127934c, Nc.b.E(0.0f, eVar.f127938g, 1.0f));
                }
                J1(eVar.f127932a);
            }
        }
    }

    @Override
    public EditorPanel k() {
        C16054a c16054a = new C16054a(this.f127922X, this.f127923Y, this.f127924Z, this.f127925a0);
        c16054a.f127927c0 = this.f127927c0;
        return c16054a;
    }

    public C16054a(String panelTitle, String maskFile, AnimationMask animationMask, List<e> rootNodes) {
        super(null, panelTitle, f127921d0);
        this.f127922X = panelTitle;
        this.f127923Y = C1(maskFile);
        this.f127924Z = animationMask;
        this.f127925a0 = rootNodes;
    }
}
