package jme3utilities.debug;

import Wl.w;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.util.HasLocalTransform;
import com.jme3.animation.Bone;
import com.jme3.animation.Skeleton;
import com.jme3.app.state.ScreenshotAppState;
import com.jme3.asset.TextureKey;
import com.jme3.audio.AudioNode;
import com.jme3.audio.AudioSource;
import com.jme3.bounding.BoundingBox;
import com.jme3.bounding.BoundingSphere;
import com.jme3.bounding.BoundingVolume;
import com.jme3.light.AmbientLight;
import com.jme3.light.DirectionalLight;
import com.jme3.light.Light;
import com.jme3.light.LightList;
import com.jme3.light.LightProbe;
import com.jme3.light.PointLight;
import com.jme3.light.SpotLight;
import com.jme3.material.MatParam;
import com.jme3.material.MatParamOverride;
import com.jme3.material.Material;
import com.jme3.material.MaterialDef;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.post.Filter;
import com.jme3.post.FilterPostProcessor;
import com.jme3.post.SceneProcessor;
import com.jme3.renderer.Camera;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.control.Control;
import com.jme3.shadow.AbstractShadowRenderer;
import com.jme3.shadow.DirectionalLightShadowFilter;
import com.jme3.shadow.DirectionalLightShadowRenderer;
import com.jme3.shadow.PointLightShadowFilter;
import com.jme3.shadow.PointLightShadowRenderer;
import com.jme3.shadow.SpotLightShadowFilter;
import com.jme3.shadow.SpotLightShadowRenderer;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture3D;
import com.jme3.texture.TextureCubeMap;
import com.jme3.util.IntMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;
import org.apache.commons.math3.linear.ConjugateGradient;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;
import p000if.C13702E;
import p000if.C13717m;
import p000if.C13718n;
import p000if.C13719o;
import p000if.C13720p;
import p000if.C13722r;
import p000if.C13723s;
import p000if.C13724t;
import w2.C15883c;

public class c implements Cloneable {

    public static final Logger f94053c = Logger.getLogger(c.class.getName());

    public static final boolean f94054d = false;

    public String f94055b = " ";

    public String A(FilterPostProcessor filterPostProcessor) {
        StringBuilder sb2 = new StringBuilder(20);
        boolean z10 = false;
        for (Filter filter : filterPostProcessor.getFilterList()) {
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            sb2.append(p(filter));
        }
        return sb2.toString();
    }

    public String B(ViewPort viewPort) {
        StringBuilder sb2 = new StringBuilder(32);
        if (!viewPort.isClearColor()) {
            sb2.append("NO");
        }
        sb2.append("clColor,");
        if (!viewPort.isClearDepth()) {
            sb2.append("NO");
        }
        sb2.append("clDepth,");
        if (!viewPort.isClearStencil()) {
            sb2.append("NO");
        }
        sb2.append("clStencil");
        return sb2.toString();
    }

    public String C(float... fArr) {
        StringBuilder sb2 = new StringBuilder(170);
        sb2.append('(');
        sb2.append(fArr.length);
        sb2.append(')');
        int length = fArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            float f10 = fArr[i10];
            if (sb2.length() > 150) {
                sb2.append(" ...");
                break;
            }
            sb2.append(this.f94055b);
            sb2.append(C13724t.e(f10));
            i10++;
        }
        return sb2.toString();
    }

    public String D(Vector3f vector3f) {
        return String.format(" he[%s]", jf.h.m(vector3f));
    }

    public String E(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        StringBuilder sb2 = new StringBuilder(30);
        Vector3f T10 = C13723s.T(spatial, null);
        if (!jf.h.E(T10)) {
            sb2.append("loc[");
            sb2.append(jf.h.m(T10));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public String F(Camera camera) {
        C13702E.t(camera, "camera");
        return C13717m.d(camera);
    }

    public String G(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        StringBuilder sb2 = new StringBuilder(30);
        Quaternion U10 = C13723s.U(spatial, null);
        if (!jf.g.j(U10)) {
            sb2.append("orient[");
            sb2.append(jf.g.f(U10));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public String H(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        StringBuilder sb2 = new StringBuilder(60);
        sb2.append("mpo[");
        boolean z10 = false;
        for (MatParamOverride matParamOverride : spatial.getLocalMatParamOverrides()) {
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            sb2.append(m(matParamOverride));
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        return sb2.toString();
    }

    public String I(ViewPort viewPort) {
        StringBuilder sb2 = new StringBuilder(20);
        boolean z10 = false;
        for (SceneProcessor sceneProcessor : viewPort.getProcessors()) {
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            sb2.append(q(sceneProcessor));
        }
        return sb2.toString();
    }

    public String J(Vector3f vector3f) {
        C13702E.t(vector3f, ConjugateGradient.VECTOR);
        StringBuilder sb2 = new StringBuilder(30);
        if (!jf.h.C(vector3f)) {
            sb2.append("scale[");
            sb2.append(jf.h.m(vector3f));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public String K(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        return J(C13723s.V(spatial, null));
    }

    public String L(Spatial spatial) {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("shadow=");
        RenderQueue.ShadowMode localShadowMode = spatial.getLocalShadowMode();
        sb2.append((Object) localShadowMode);
        if (localShadowMode == RenderQueue.ShadowMode.Inherit) {
            sb2.append('/');
            sb2.append((Object) spatial.getShadowMode());
        }
        return sb2.toString();
    }

    public final String M(SceneProcessor sceneProcessor) {
        StringBuilder sb2 = new StringBuilder(20);
        AbstractShadowRenderer abstractShadowRenderer = (AbstractShadowRenderer) sceneProcessor;
        sb2.append("[inten=");
        sb2.append(C13724t.g(abstractShadowRenderer.getShadowIntensity()));
        sb2.append(" size=");
        sb2.append(abstractShadowRenderer.getShadowMapSize());
        sb2.append(" maps=");
        sb2.append(abstractShadowRenderer.getNumShadowMaps());
        sb2.append(" edge[");
        sb2.append((Object) abstractShadowRenderer.getEdgeFilteringMode());
        sb2.append(" thk=");
        sb2.append(abstractShadowRenderer.getEdgesThickness());
        sb2.append("] cmp=");
        sb2.append((Object) abstractShadowRenderer.getShadowCompareMode());
        sb2.append(" zExt=");
        sb2.append(C13724t.e(abstractShadowRenderer.getShadowZExtend()));
        sb2.append(" zFade=");
        sb2.append(C13724t.e(abstractShadowRenderer.getShadowZFadeLength()));
        sb2.append(abstractShadowRenderer.isRenderBackFacesShadows() ? " backFaces]" : "noBackFaces]");
        return sb2.toString();
    }

    public String N(HasLocalTransform hasLocalTransform) {
        if (hasLocalTransform == null) {
            return "null";
        }
        return String.format(" targeting %s%s:", hasLocalTransform.getClass().getSimpleName(), C13724t.t(hasLocalTransform instanceof Spatial ? ((Spatial) hasLocalTransform).getName() : ((Joint) hasLocalTransform).getName()));
    }

    public char O(Spatial spatial) {
        return C13723s.i(spatial);
    }

    public String P(Spatial spatial) {
        StringBuilder sb2 = new StringBuilder(50);
        boolean z10 = false;
        for (String str : spatial.getUserDataKeys()) {
            if (z10) {
                sb2.append(C15883c.f126249O);
            } else {
                z10 = true;
            }
            sb2.append(str);
            sb2.append('=');
            Object userData = spatial.getUserData(str);
            sb2.append((userData == null || (userData instanceof String)) ? C13724t.s((String) userData) : userData.toString());
        }
        return sb2.toString();
    }

    public String Q(Mesh mesh, int i10) {
        StringBuilder sb2 = new StringBuilder(80);
        int vertexCount = mesh.getVertexCount();
        sb2.append(String.format(Locale.ROOT, vertexCount <= 10 ? "v%1d: " : vertexCount <= 100 ? "v%02d: " : vertexCount <= 1000 ? "v%03d: " : "v%04d: ", Integer.valueOf(i10)));
        int length = sb2.length();
        sb2.append(jf.h.m(C13720p.Z(mesh, VertexBuffer.Type.Position, i10, null)));
        int i11 = length + 37;
        if (C13720p.u(mesh)) {
            int length2 = sb2.length();
            if (length2 < i11) {
                sb2.append(C13724t.x(" ", i11 - length2));
            }
            Vector2f Y10 = C13720p.Y(mesh, VertexBuffer.Type.TexCoord, i10, null);
            sb2.append(" u=");
            sb2.append(Y10.f81609x);
            sb2.append(" v=");
            sb2.append(Y10.f81610y);
            i11 = length + 63;
        }
        VertexBuffer.Type type = VertexBuffer.Type.TexCoord2;
        if (mesh.getBuffer(type) != null) {
            int length3 = sb2.length();
            if (length3 < i11) {
                sb2.append(C13724t.x(" ", i11 - length3));
            }
            Vector2f Y11 = C13720p.Y(mesh, type, i10, null);
            sb2.append(" u2=");
            sb2.append(Y11.f81609x);
            sb2.append(" v2=");
            sb2.append(Y11.f81610y);
            i11 += 28;
        }
        if (C13720p.r(mesh)) {
            int length4 = sb2.length();
            if (length4 < i11) {
                sb2.append(C13724t.x(" ", i11 - length4));
            }
            sb2.append(" N[");
            sb2.append(jf.h.n(C13720p.Z(mesh, VertexBuffer.Type.Normal, i10, null)));
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            i11 += 32;
        }
        if (mesh.getBuffer(VertexBuffer.Type.Color) != null) {
            int length5 = sb2.length();
            if (length5 < i11) {
                sb2.append(C13724t.x(" ", i11 - length5));
            }
            sb2.append(C15883c.f126249O);
            sb2.append(jf.e.a(C13720p.T(mesh, i10, null)));
            i11 += 24;
        }
        VertexBuffer.Type type2 = VertexBuffer.Type.Tangent;
        if (mesh.getBuffer(type2) != null) {
            int length6 = sb2.length();
            if (length6 < i11) {
                sb2.append(C13724t.x(" ", i11 - length6));
            }
            sb2.append(" T");
            sb2.append((Object) C13720p.a0(mesh, type2, i10, null));
        }
        return sb2.toString();
    }

    public boolean R(Control control) {
        C13702E.t(control, "control");
        return !C13718n.a(control) || C13718n.g(control);
    }

    public String S() {
        return this.f94055b;
    }

    public void T(String str) {
        C13702E.t(str, "new separator");
        this.f94055b = str;
    }

    @Override
    public c clone() throws CloneNotSupportedException {
        return (c) super.clone();
    }

    public String b(Armature armature) {
        C13702E.t(armature, h.f94106x);
        int j10 = C13722r.j(armature);
        int jointCount = armature.getJointCount();
        return String.format("Armature with %d root%s and %d joint%s:", Integer.valueOf(j10), j10 == 1 ? "" : "s", Integer.valueOf(jointCount), jointCount == 1 ? "" : "s");
    }

    public String c(Joint joint) {
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(C13724t.s(joint.getName()));
        if (C13722r.n(joint) != null) {
            sb2.append(" A");
        }
        List<Joint> children = joint.getChildren();
        if (!children.isEmpty()) {
            int size = children.size();
            sb2.append(String.format(" with %d child%s:", Integer.valueOf(size), size == 1 ? "" : "ren"));
        }
        return sb2.toString();
    }

    public String d(Bone bone) {
        String str;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(C13724t.s(bone.getName()));
        if (C13722r.o(bone) != null) {
            str = "" + IIndexConstants.ANNOTATION_TYPE_SUFFIX;
        } else {
            str = "";
        }
        if (bone.hasUserControl()) {
            str = str + w.f27864f;
        }
        if (!str.isEmpty()) {
            sb2.append(C15883c.f126249O);
            sb2.append(str);
        }
        ArrayList<Bone> children = bone.getChildren();
        if (!children.isEmpty()) {
            int size = children.size();
            sb2.append(String.format(" with %d child%s:", Integer.valueOf(size), size != 1 ? "ren" : ""));
        }
        return sb2.toString();
    }

    public String e(Skeleton skeleton) {
        int i10 = C13722r.i(skeleton);
        int boneCount = skeleton.getBoneCount();
        return String.format("Skeleton with %d root%s and %d bone%s:", Integer.valueOf(i10), i10 == 1 ? "" : "s", Integer.valueOf(boneCount), boneCount == 1 ? "" : "s");
    }

    public String f(TextureKey textureKey) {
        String textureKey2 = textureKey.toString();
        int anisotropy = textureKey.getAnisotropy();
        if (anisotropy == 0) {
            return textureKey2;
        }
        return textureKey2 + String.format(" (Anisotropy%d)", Integer.valueOf(anisotropy));
    }

    public String g(BoundingBox boundingBox) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("loc[");
        sb2.append(jf.h.m(boundingBox.getCenter()));
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        sb2.append(D(boundingBox.getExtent(null)));
        return sb2.toString();
    }

    public String h(BoundingSphere boundingSphere) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append("r=");
        sb2.append(C13724t.e(boundingSphere.getRadius()));
        sb2.append(C15883c.f126249O);
        sb2.append(jf.h.m(boundingSphere.getCenter()));
        return sb2.toString();
    }

    public String i(BoundingVolume boundingVolume) {
        return boundingVolume == null ? "null" : boundingVolume instanceof BoundingSphere ? h((BoundingSphere) boundingVolume) : g((BoundingBox) boundingVolume);
    }

    public String j(Light light) {
        String format;
        if (light == null) {
            return "null";
        }
        String str = C13719o.c(light) + C13724t.t(light.getName());
        String a10 = jf.e.a(light.getColor());
        if (light instanceof AmbientLight) {
            format = String.format("%s(%s)", str, a10);
        } else if (light instanceof DirectionalLight) {
            format = String.format("%s(%s; %s)", str, a10, jf.h.n(((DirectionalLight) light).getDirection()));
        } else if (light instanceof LightProbe) {
            LightProbe lightProbe = (LightProbe) light;
            format = lightProbe.isReady() ? String.format("%s(%s r=%s %s)", str, lightProbe.getAreaType(), C13724t.e(lightProbe.getArea().getRadius()), jf.h.m(lightProbe.getPosition())) : String.format("%s(unready)", str);
        } else if (light instanceof PointLight) {
            format = String.format("%s(%s; %s)", str, a10, jf.h.m(((PointLight) light).getPosition()));
        } else if (light instanceof SpotLight) {
            SpotLight spotLight = (SpotLight) light;
            format = String.format("%s(%s; %s; %s)", str, a10, jf.h.m(spotLight.getPosition()), jf.h.n(spotLight.getDirection()));
        } else {
            format = String.format("%s(%s)", str, a10);
        }
        if (light.isEnabled()) {
            return format;
        }
        return format + "DISABLED";
    }

    public String k(LightList lightList) {
        StringBuilder sb2 = new StringBuilder(50);
        Iterator<Light> it = lightList.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Light next = it.next();
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            sb2.append(j(next));
        }
        return sb2.toString();
    }

    public String l(MatParam matParam) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(C15883c.f126249O);
        sb2.append(matParam.getName());
        sb2.append(": ");
        Object value = matParam.getValue();
        sb2.append(value instanceof ColorRGBA ? jf.e.a((ColorRGBA) value) : value instanceof Float ? C13724t.e(((Float) value).floatValue()) : value instanceof Texture ? v((Texture) value) : matParam.getValueAsString());
        return sb2.toString();
    }

    public String m(MatParamOverride matParamOverride) {
        StringBuilder sb2 = new StringBuilder(50);
        sb2.append(matParamOverride.getName());
        Object value = matParamOverride.getValue();
        if (value == null) {
            sb2.append("=null");
        } else {
            String obj = value.toString();
            if (obj.length() <= 8) {
                sb2.append('=');
                sb2.append(obj);
            }
        }
        if (!matParamOverride.isEnabled()) {
            sb2.append("!DISABLED");
        }
        return sb2.toString();
    }

    public String n(Material material) {
        if (material == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(C13724t.t(material.getName()));
        sb2.append(" def");
        MaterialDef materialDef = material.getMaterialDef();
        sb2.append(C13724t.s(materialDef == null ? null : materialDef.getName()));
        sb2.append(C15883c.f126249O);
        sb2.append(o(material.getAdditionalRenderState()));
        int size = material.getParams().size();
        sb2.append(String.format(" with %d parm%s", Integer.valueOf(size), size != 1 ? "s" : ""));
        return sb2.toString();
    }

    public String o(RenderState renderState) {
        StringBuilder sb2 = new StringBuilder(30);
        if (!renderState.isDepthTest()) {
            sb2.append("NO");
        }
        sb2.append("dTest,");
        if (!renderState.isDepthWrite()) {
            sb2.append("NO");
        }
        sb2.append("dWrite,");
        if (!renderState.isWireframe()) {
            sb2.append("NO");
        }
        sb2.append("wireframe");
        RenderState.FaceCullMode faceCullMode = renderState.getFaceCullMode();
        if (faceCullMode != RenderState.FaceCullMode.Back) {
            sb2.append(",faceCull=");
            sb2.append((Object) faceCullMode);
        }
        sb2.append(",blend=");
        RenderState.BlendMode blendMode = renderState.getBlendMode();
        sb2.append((Object) blendMode);
        if (blendMode == RenderState.BlendMode.Custom) {
            RenderState.BlendEquation blendEquation = renderState.getBlendEquation();
            sb2.append("[eq=");
            sb2.append((Object) blendEquation);
            RenderState.BlendEquationAlpha blendEquationAlpha = renderState.getBlendEquationAlpha();
            sb2.append(",eqA=");
            sb2.append((Object) blendEquationAlpha);
            RenderState.BlendFunc customDfactorAlpha = renderState.getCustomDfactorAlpha();
            sb2.append(",dAlpha=");
            sb2.append((Object) customDfactorAlpha);
            RenderState.BlendFunc customDfactorRGB = renderState.getCustomDfactorRGB();
            sb2.append(",dRGB=");
            sb2.append((Object) customDfactorRGB);
            RenderState.BlendFunc customSfactorAlpha = renderState.getCustomSfactorAlpha();
            sb2.append(",sAlpha=");
            sb2.append((Object) customSfactorAlpha);
            RenderState.BlendFunc customSfactorRGB = renderState.getCustomSfactorRGB();
            sb2.append(",sRGB=");
            sb2.append((Object) customSfactorRGB);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        }
        return sb2.toString();
    }

    public String p(Filter filter) {
        if (filter instanceof DirectionalLightShadowFilter) {
            return "DShadow";
        }
        if (filter instanceof PointLightShadowFilter) {
            return "PShadow";
        }
        if (filter instanceof SpotLightShadowFilter) {
            return "SShadow";
        }
        if (filter == null) {
            return "null";
        }
        String replace = filter.getClass().getSimpleName().replace("Filter", "");
        return replace.isEmpty() ? "?" : replace;
    }

    public String q(SceneProcessor sceneProcessor) {
        if (sceneProcessor instanceof DirectionalLightShadowRenderer) {
            return "DirShadow" + M(sceneProcessor);
        }
        if (sceneProcessor instanceof FilterPostProcessor) {
            return String.format("filters[%s]", A((FilterPostProcessor) sceneProcessor));
        }
        if (sceneProcessor instanceof PointLightShadowRenderer) {
            return "PointShadow" + M(sceneProcessor);
        }
        if (sceneProcessor instanceof ScreenshotAppState) {
            return "Screenshot";
        }
        if (sceneProcessor instanceof SpotLightShadowRenderer) {
            return "SpotShadow" + M(sceneProcessor);
        }
        if (sceneProcessor == null) {
            return "null";
        }
        String replace = sceneProcessor.getClass().getSimpleName().replace("Processor", "");
        return replace.isEmpty() ? "?" : replace;
    }

    public String r(Camera camera) {
        return C13717m.c(camera);
    }

    public String s(Mesh mesh) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(mesh.getClass().getSimpleName());
        sb2.append(" mode=");
        sb2.append((Object) mesh.getMode());
        sb2.append(" numV=");
        sb2.append(mesh.getVertexCount());
        sb2.append(" bufs[");
        Iterator<IntMap.Entry<VertexBuffer>> it = mesh.getBuffers().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            IntMap.Entry<VertexBuffer> next = it.next();
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            sb2.append(t(next.getValue()));
        }
        sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        int length = mesh.getMorphTargets().length;
        if (length > 0) {
            sb2.append(" with ");
            sb2.append(length);
            sb2.append(" target");
            if (length > 1) {
                sb2.append('s');
            }
        }
        return sb2.toString();
    }

    public String t(VertexBuffer vertexBuffer) {
        VertexBuffer.Format format = vertexBuffer.getFormat();
        String replace = format == null ? "nofmt" : format.toString().toLowerCase(Locale.ROOT).replace(TypedValues.Custom.S_FLOAT, "f").replace("unsigned", "u");
        return ((Object) vertexBuffer.getBufferType()) + ve.j.f121589a + vertexBuffer.getNumComponents() + replace;
    }

    public String u(Control control) {
        C13702E.t(control, "control");
        return C13718n.b(control);
    }

    public String v(Texture texture) {
        if (texture == null) {
            return "null";
        }
        TextureKey textureKey = (TextureKey) texture.getKey();
        String f10 = textureKey == null ? "(no key)" : f(textureKey);
        String str = ((f10 + " mag:" + texture.getMagFilter().toString()) + " min:" + texture.getMinFilter().toString()) + " aniso:" + texture.getAnisotropicFilter();
        if ((texture instanceof Texture3D) || (texture instanceof TextureCubeMap)) {
            str = str + " r:" + texture.getWrap(Texture.WrapAxis.R).toString();
        }
        return (str + " s:" + texture.getWrap(Texture.WrapAxis.S).toString()) + " t:" + texture.getWrap(Texture.WrapAxis.T).toString();
    }

    public String w(Spatial spatial) {
        AudioNode audioNode = (AudioNode) spatial;
        StringBuilder sb2 = new StringBuilder(80);
        AudioSource.Status status = audioNode.getStatus();
        sb2.append((Object) status);
        if (status == AudioSource.Status.Playing) {
            sb2.append(DocLint.SEPARATOR);
            sb2.append((Object) audioNode.getAudioData().getDataType());
            sb2.append(DocLint.SEPARATOR);
            if (!audioNode.isDirectional()) {
                sb2.append("NOT");
            }
            sb2.append("directional,");
            if (!audioNode.isLooping()) {
                sb2.append("NOT");
            }
            sb2.append("looping,");
            sb2.append("pitch=");
            sb2.append(C13724t.e(audioNode.getPitch()));
            sb2.append(",channel=");
            sb2.append(audioNode.getChannel());
        }
        return sb2.toString();
    }

    public String x(Spatial spatial) {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("bucket=");
        RenderQueue.Bucket localQueueBucket = spatial.getLocalQueueBucket();
        sb2.append((Object) localQueueBucket);
        if (localQueueBucket == RenderQueue.Bucket.Inherit) {
            sb2.append('/');
            sb2.append((Object) spatial.getQueueBucket());
        }
        return sb2.toString();
    }

    public String y(Spatial spatial) {
        C13702E.t(spatial, "spatial");
        StringBuilder sb2 = new StringBuilder(50);
        int numControls = spatial.getNumControls();
        boolean z10 = false;
        for (int i10 = 0; i10 < numControls; i10++) {
            if (z10) {
                sb2.append(this.f94055b);
            } else {
                z10 = true;
            }
            Control control = spatial.getControl(i10);
            if (R(control)) {
                sb2.append(u(control));
            }
        }
        return sb2.toString();
    }

    public String z(Spatial spatial) {
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("cull=");
        Spatial.CullHint localCullHint = spatial.getLocalCullHint();
        sb2.append((Object) localCullHint);
        if (localCullHint == Spatial.CullHint.Inherit) {
            sb2.append('/');
            sb2.append((Object) spatial.getCullHint());
        }
        return sb2.toString();
    }
}
