package jme3utilities.debug;

import com.bumptech.glide.load.engine.GlideException;
import com.jme3.anim.AnimClip;
import com.jme3.anim.AnimTrack;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.MorphTrack;
import com.jme3.anim.TransformTrack;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.app.state.AppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.audio.AudioNode;
import com.jme3.font.BitmapText;
import com.jme3.light.Light;
import com.jme3.material.MatParam;
import com.jme3.material.Material;
import com.jme3.post.SceneProcessor;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.scene.mesh.MorphTarget;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.logging.Logger;
import javax.xml.transform.OutputKeys;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.doclint.DocLint;
import p000if.C13702E;
import p000if.C13724t;
import p000if.C13726v;
import w2.C15883c;

public class d implements Cloneable {

    public static final Logger f94056o = Logger.getLogger(d.class.getName());

    public static final boolean f94057p = false;

    public boolean f94058b;

    public boolean f94059c;

    public boolean f94060d;

    public boolean f94061e;

    public boolean f94062f;

    public boolean f94063g;

    public boolean f94064h;

    public boolean f94065i;

    public boolean f94066j;

    public c f94067k;

    public int f94068l;

    public final PrintStream f94069m;

    public String f94070n;

    public d() {
        this.f94058b = false;
        this.f94059c = false;
        this.f94060d = false;
        this.f94061e = false;
        this.f94062f = false;
        this.f94063g = false;
        this.f94064h = false;
        this.f94065i = true;
        this.f94066j = false;
        this.f94068l = Integer.MAX_VALUE;
        this.f94070n = GlideException.a.f59088e;
        this.f94067k = new c();
        this.f94069m = System.out;
    }

    public boolean A() {
        return this.f94059c;
    }

    public boolean B() {
        return this.f94060d;
    }

    public boolean C() {
        return this.f94061e;
    }

    public boolean D() {
        return this.f94062f;
    }

    public boolean E() {
        return this.f94063g;
    }

    public boolean F() {
        return this.f94064h;
    }

    public boolean G() {
        return this.f94065i;
    }

    public boolean H() {
        return this.f94066j;
    }

    public int I() {
        return this.f94068l;
    }

    public d J(c cVar) {
        C13702E.t(cVar, "new describer");
        this.f94067k = cVar;
        return this;
    }

    public d K(boolean z10) {
        this.f94058b = z10;
        return this;
    }

    public d L(boolean z10) {
        this.f94059c = z10;
        return this;
    }

    public d M(boolean z10) {
        this.f94060d = z10;
        return this;
    }

    public d N(boolean z10) {
        this.f94061e = z10;
        return this;
    }

    public d O(boolean z10) {
        this.f94062f = z10;
        return this;
    }

    public d P(boolean z10) {
        this.f94063g = z10;
        return this;
    }

    public d Q(boolean z10) {
        this.f94064h = z10;
        return this;
    }

    public d R(boolean z10) {
        this.f94065i = z10;
        return this;
    }

    public d S(boolean z10) {
        this.f94066j = z10;
        return this;
    }

    public d T(String str) {
        C13702E.t(str, "increment");
        this.f94070n = str;
        return this;
    }

    public d U(int i10) {
        C13702E.q(i10, "newLimit");
        this.f94068l = i10;
        return this;
    }

    public void a(String str) {
        C13702E.t(str, "description");
        if (str.isEmpty()) {
            return;
        }
        this.f94069m.print(C15883c.f126249O);
        this.f94069m.print(str);
    }

    public void b(String str) {
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.println();
        this.f94069m.print(str);
    }

    @Override
    public d clone() throws CloneNotSupportedException {
        d dVar = (d) super.clone();
        this.f94067k = this.f94067k.clone();
        return dVar;
    }

    public void d(AnimClip animClip, String str) {
        b(str);
        AnimTrack[] tracks = animClip.getTracks();
        int length = tracks.length;
        this.f94069m.printf("AnimClip%s with %d track%s:", C13724t.t(animClip.getName()), Integer.valueOf(length), length == 1 ? "" : "s");
        String str2 = str + this.f94070n;
        String str3 = str2 + this.f94070n;
        for (AnimTrack animTrack : tracks) {
            b(str2);
            this.f94069m.print(animTrack.getClass().getSimpleName());
            if (animTrack instanceof MorphTrack) {
                MorphTrack morphTrack = (MorphTrack) animTrack;
                this.f94069m.print(this.f94067k.N(morphTrack.getTarget()));
                b(str3);
                this.f94069m.print("times");
                this.f94069m.print(this.f94067k.C(morphTrack.getTimes()));
                b(str3);
                this.f94069m.print("weights");
                this.f94069m.print(this.f94067k.C(morphTrack.getWeights()));
            } else if (animTrack instanceof TransformTrack) {
                TransformTrack transformTrack = (TransformTrack) animTrack;
                this.f94069m.print(this.f94067k.N(transformTrack.getTarget()));
                b(str3);
                this.f94069m.print("times");
                this.f94069m.print(this.f94067k.C(transformTrack.getTimes()));
            }
        }
        this.f94069m.println();
    }

    public void e(Armature armature, String str) {
        C13702E.t(armature, h.f94106x);
        this.f94069m.print(str);
        this.f94069m.println(this.f94067k.b(armature));
        Joint[] roots = armature.getRoots();
        String str2 = str + this.f94070n;
        for (Joint joint : roots) {
            f(joint, str2);
        }
        this.f94069m.println();
        this.f94069m.flush();
    }

    public void f(Joint joint, String str) {
        C13702E.t(joint, "joint");
        this.f94069m.print(str);
        this.f94069m.println(this.f94067k.c(joint));
        List<Joint> children = joint.getChildren();
        String str2 = str + this.f94070n;
        Iterator<Joint> it = children.iterator();
        while (it.hasNext()) {
            f(it.next(), str2);
        }
    }

    public void g(Bone bone, String str) {
        C13702E.t(bone, "bone");
        this.f94069m.print(str);
        this.f94069m.println(this.f94067k.d(bone));
        ArrayList<Bone> children = bone.getChildren();
        String str2 = str + this.f94070n;
        Iterator<Bone> it = children.iterator();
        while (it.hasNext()) {
            g(it.next(), str2);
        }
    }

    public void h(Skeleton skeleton, String str) {
        C13702E.t(skeleton, h.f94091E);
        this.f94069m.print(str);
        this.f94069m.print(this.f94067k.e(skeleton));
        this.f94069m.println(':');
        Bone[] roots = skeleton.getRoots();
        String str2 = str + this.f94070n;
        for (Bone bone : roots) {
            g(bone, str2);
        }
        this.f94069m.println();
        this.f94069m.flush();
    }

    public void i(AppState appState, String str) {
        C13702E.t(str, OutputKeys.INDENT);
        String id2 = appState.getId();
        this.f94069m.print(id2 == null ? appState.getClass().getSimpleName() : C13724t.s(id2));
        if (appState.isEnabled()) {
            this.f94069m.print(" en");
        } else {
            this.f94069m.print(" dis");
        }
        this.f94069m.print("abled");
        if (appState instanceof C13726v) {
            Collection<AppState> a10 = ((C13726v) appState).a();
            if (!a10.isEmpty()) {
                this.f94069m.print("  influences[");
                for (AppState appState2 : a10) {
                    this.f94069m.print(C15883c.f126249O);
                    String id3 = appState2.getId();
                    this.f94069m.print(id3 == null ? appState2.getClass().getSimpleName() : C13724t.s(id3));
                }
                this.f94069m.print(" ]");
            }
        }
        b(str);
    }

    public void j(AppStateManager appStateManager) {
        String str;
        try {
            Method declaredMethod = AppStateManager.class.getDeclaredMethod("getInitializing", null);
            Method declaredMethod2 = AppStateManager.class.getDeclaredMethod("getStates", null);
            Method declaredMethod3 = AppStateManager.class.getDeclaredMethod("getTerminating", null);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            declaredMethod3.setAccessible(true);
            try {
                AppState[] appStateArr = (AppState[]) declaredMethod.invoke(appStateManager, null);
                AppState[] appStateArr2 = (AppState[]) declaredMethod2.invoke(appStateManager, null);
                AppState[] appStateArr3 = (AppState[]) declaredMethod3.invoke(appStateManager, null);
                this.f94069m.println();
                this.f94069m.print(appStateManager.getClass().getSimpleName());
                int length = appStateArr.length;
                int length2 = appStateArr2.length;
                int length3 = appStateArr3.length;
                int i10 = length + length2 + length3;
                this.f94069m.printf(" with %d state", Integer.valueOf(i10));
                if (i10 == 0) {
                    this.f94069m.println("s.");
                    return;
                }
                if (i10 == 1) {
                    this.f94069m.print(':');
                } else {
                    this.f94069m.print("s:");
                    if (length > 0) {
                        this.f94069m.printf(" %d initializing", Integer.valueOf(length));
                        str = DocLint.SEPARATOR;
                    } else {
                        str = "";
                    }
                    if (length2 > 0) {
                        this.f94069m.printf("%s %d active", str, Integer.valueOf(length2));
                    }
                    if (length3 > 0) {
                        this.f94069m.printf("%s %d terminating", str, Integer.valueOf(length3));
                    }
                }
                for (int i11 = 0; i11 < length; i11++) {
                    this.f94069m.printf("%n initializing[%d]: ", Integer.valueOf(i11));
                    i(appStateArr[i11], this.f94070n);
                }
                for (int i12 = 0; i12 < length2; i12++) {
                    this.f94069m.printf("%n active[%d]: ", Integer.valueOf(i12));
                    i(appStateArr2[i12], this.f94070n);
                }
                for (int i13 = 0; i13 < length3; i13++) {
                    this.f94069m.printf("%n terminating[%d]: ", Integer.valueOf(i13));
                    i(appStateArr3[i13], this.f94070n);
                }
                this.f94069m.println();
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException(e11);
        }
    }

    public void k(Light light, String str) {
        C13702E.t(light, "light");
        this.f94069m.print(str);
        this.f94069m.print(this.f94067k.j(light));
    }

    public void l(Camera camera) {
        C13702E.t(camera, "camera");
        m(camera, "");
        this.f94069m.flush();
    }

    public void m(Camera camera, String str) {
        C13702E.t(camera, "camera");
        this.f94069m.print(str);
        this.f94069m.print(this.f94067k.r(camera));
        b(str);
        String F10 = this.f94067k.F(camera);
        this.f94069m.print(C15883c.f126249O);
        this.f94069m.print(F10);
    }

    public void n(RenderManager renderManager) {
        String simpleName = renderManager.getClass().getSimpleName();
        this.f94069m.println();
        this.f94069m.print(simpleName);
        Renderer renderer = renderManager.getRenderer();
        String simpleName2 = renderer.getClass().getSimpleName();
        this.f94069m.print(" renderer=");
        this.f94069m.print(simpleName2);
        this.f94069m.printf("[aniso=%d, %satoc]", Integer.valueOf(renderer.getDefaultAnisotropicFilter()), renderer.getAlphaToCoverage() ? "" : "NO");
        List<ViewPort> preViews = renderManager.getPreViews();
        int size = preViews.size();
        List<ViewPort> mainViews = renderManager.getMainViews();
        int size2 = mainViews.size();
        List<ViewPort> postViews = renderManager.getPostViews();
        int size3 = postViews.size();
        this.f94069m.printf(" with %d preView%s, %d mainView%s, and ", Integer.valueOf(size), size == 1 ? "" : "s", Integer.valueOf(size2), size2 == 1 ? "" : "s");
        this.f94069m.printf("%d postView%s%n", Integer.valueOf(size3), size3 != 1 ? "s" : "");
        for (int i10 = 0; i10 < size; i10++) {
            this.f94069m.printf("preView %d:%n", Integer.valueOf(i10));
            p(preViews.get(i10), this.f94070n);
        }
        for (int i11 = 0; i11 < size2; i11++) {
            this.f94069m.printf("mainView %d:%n", Integer.valueOf(i11));
            p(mainViews.get(i11), this.f94070n);
        }
        for (int i12 = 0; i12 < size3; i12++) {
            this.f94069m.printf("postView %d:%n", Integer.valueOf(i12));
            p(postViews.get(i12), this.f94070n);
        }
    }

    public void o(ViewPort viewPort) {
        C13702E.t(viewPort, "view port");
        p(viewPort, "");
        this.f94069m.flush();
    }

    public void p(ViewPort viewPort, String str) {
        C13702E.t(str, OutputKeys.INDENT);
        this.f94069m.printf("%s%s %s ", str, viewPort.getClass().getSimpleName(), C13724t.t(viewPort.getName()));
        if (!viewPort.isEnabled()) {
            this.f94069m.println("disabled");
            return;
        }
        this.f94069m.print("enabled ");
        this.f94069m.print(this.f94067k.B(viewPort));
        if (viewPort.isClearColor()) {
            this.f94069m.printf(" bg(%s)", jf.e.a(viewPort.getBackgroundColor()));
        }
        this.f94069m.println();
        m(viewPort.getCamera(), str + GlideException.a.f59088e);
        w(viewPort.getProcessors(), str);
        this.f94069m.print(" and ");
        s(viewPort.getScenes(), str);
    }

    public void q(Spatial spatial) {
        r(spatial, "");
        this.f94069m.flush();
    }

    public void r(Spatial spatial, String str) {
        C13702E.t(str, OutputKeys.INDENT);
        if (spatial == null) {
            return;
        }
        this.f94069m.print(str);
        this.f94069m.printf("%c[%d] ", Character.valueOf(this.f94067k.O(spatial)), Integer.valueOf(spatial.getTriangleCount()));
        this.f94069m.print(C13724t.t(spatial.getName()));
        if (str.isEmpty() && spatial.getParent() != null) {
            this.f94069m.print(" (has parent)");
        }
        a(this.f94067k.y(spatial));
        a(this.f94067k.k(spatial.getLocalLightList()));
        if (this.f94064h) {
            a(this.f94067k.E(spatial));
            a(this.f94067k.G(spatial));
            a(this.f94067k.K(spatial));
        }
        if (this.f94058b) {
            this.f94069m.print(" bound[");
            this.f94069m.print(this.f94067k.i(spatial.getWorldBound()));
            this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
        }
        if (this.f94065i) {
            a(this.f94067k.P(spatial));
        }
        if (spatial instanceof AudioNode) {
            a(this.f94067k.w(spatial));
        } else {
            if (this.f94059c) {
                a(this.f94067k.x(spatial));
            }
            if (this.f94063g) {
                a(this.f94067k.L(spatial));
            }
            if (this.f94060d) {
                a(this.f94067k.z(spatial));
            }
            if (this.f94062f) {
                a(this.f94067k.H(spatial));
            }
        }
        if (spatial instanceof BitmapText) {
            this.f94069m.print(" text=");
            this.f94069m.print(C13724t.s(((BitmapText) spatial).getText()));
        }
        if (spatial instanceof Geometry) {
            v((Geometry) spatial, str);
        }
        this.f94069m.println();
        if (spatial instanceof Node) {
            u((Node) spatial, str + this.f94070n);
        }
    }

    public void s(List<Spatial> list, String str) {
        C13702E.t(str, OutputKeys.INDENT);
        int size = list.size();
        if (size == 0) {
            this.f94069m.print("no scenes");
        } else if (size == 1) {
            this.f94069m.print("one scene:");
        } else {
            this.f94069m.printf("%d scenes:", Integer.valueOf(size));
        }
        this.f94069m.println();
        Iterator<Spatial> it = list.iterator();
        while (it.hasNext()) {
            r(it.next(), str + this.f94070n);
        }
    }

    public final void t(Map<String, MatParam> map, String str) {
        if (map.isEmpty()) {
            return;
        }
        this.f94069m.print(':');
        for (String str2 : new TreeSet(map.o())) {
            b(str);
            this.f94069m.print(this.f94067k.l(map.get(str2)));
        }
    }

    public final void u(Node node, String str) {
        List<Spatial> children = node.getChildren();
        int size = children.size();
        int i10 = this.f94068l;
        if (size <= i10) {
            Iterator<Spatial> it = children.iterator();
            while (it.hasNext()) {
                r(it.next(), str);
            }
            return;
        }
        int i11 = i10 / 3;
        int i12 = i10 - i11;
        for (int i13 = 0; i13 < i12; i13++) {
            r(children.get(i13), str);
        }
        int i14 = (size - i12) - i11;
        this.f94069m.printf("%s... %d child spatial%s", str, Integer.valueOf(i14), i14 == 1 ? "" : "s");
        this.f94069m.println(" skipped ...");
        for (int i15 = size - i11; i15 < size; i15++) {
            r(children.get(i15), str);
        }
    }

    public final void v(Geometry geometry, String str) {
        Material material = geometry.getMaterial();
        String str2 = str + this.f94070n;
        String n10 = this.f94067k.n(material);
        if (!n10.isEmpty()) {
            b(str);
            this.f94069m.print(" mat");
            this.f94069m.print(n10);
            if (this.f94061e) {
                t(material.getParamsMap(), str2);
            }
        }
        Mesh mesh = geometry.getMesh();
        int vertexCount = mesh.getVertexCount();
        String s10 = this.f94067k.s(mesh);
        b(str);
        a(s10);
        if (this.f94066j) {
            IndexBuffer indexBuffer = mesh.getIndexBuffer();
            Mesh.Mode mode = mesh.getMode();
            if (indexBuffer != null) {
                b(str2);
                this.f94069m.print("index[");
                for (int i10 = 0; i10 < indexBuffer.size(); i10++) {
                    if (i10 > 0) {
                        if ((mode == Mesh.Mode.Triangles && i10 % 3 == 0) || (mode == Mesh.Mode.Lines && i10 % 2 == 0)) {
                            this.f94069m.print('|');
                        } else {
                            this.f94069m.print(C15883c.f126249O);
                        }
                    }
                    this.f94069m.print(indexBuffer.get(i10));
                }
                this.f94069m.print(JavaElement.JEM_TYPE_PARAMETER);
            }
            for (int i11 = 0; i11 < vertexCount; i11++) {
                b(str2);
                this.f94069m.print(this.f94067k.Q(mesh, i11));
            }
        }
        MorphTarget[] morphTargets = mesh.getMorphTargets();
        for (int i12 = 0; i12 < morphTargets.length; i12++) {
            b(str2);
            MorphTarget morphTarget = morphTargets[i12];
            String t10 = C13724t.t(morphTarget.getName());
            int size = morphTarget.getBuffers().size();
            this.f94069m.printf("target%d%s with %d buffer%s", Integer.valueOf(i12), t10, Integer.valueOf(size), size == 1 ? "" : "s");
            if (this.f94066j) {
                if (vertexCount > 0) {
                    this.f94069m.print(':');
                }
                String str3 = str2 + this.f94070n;
                for (int i13 = 0; i13 < vertexCount; i13++) {
                    b(str3);
                    this.f94069m.print(this.f94067k.Q(mesh, i13));
                }
            }
        }
    }

    public final void w(List<SceneProcessor> list, String str) {
        b(str);
        this.f94069m.print(" with ");
        int size = list.size();
        if (size == 0) {
            this.f94069m.print("no scene processors");
            return;
        }
        if (size == 1) {
            this.f94069m.print("one SceneProcessor:");
        } else {
            this.f94069m.printf("%d scene processors:", Integer.valueOf(size));
        }
        for (SceneProcessor sceneProcessor : list) {
            b(str + GlideException.a.f59088e);
            this.f94069m.print(this.f94067k.q(sceneProcessor));
        }
        b(str);
    }

    public c x() {
        return this.f94067k;
    }

    public String y() {
        return this.f94070n;
    }

    public boolean z() {
        return this.f94058b;
    }

    public d(PrintStream printStream) {
        this.f94058b = false;
        this.f94059c = false;
        this.f94060d = false;
        this.f94061e = false;
        this.f94062f = false;
        this.f94063g = false;
        this.f94064h = false;
        this.f94065i = true;
        this.f94066j = false;
        this.f94068l = Integer.MAX_VALUE;
        this.f94070n = GlideException.a.f59088e;
        C13702E.t(printStream, "print stream");
        this.f94067k = new c();
        this.f94069m = printStream;
    }
}
