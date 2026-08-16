package p000if;

import Fd.a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.jme3.anim.AnimComposer;
import com.jme3.anim.AnimLayer;
import com.jme3.anim.MorphControl;
import com.jme3.anim.SkinningControl;
import com.jme3.anim.tween.action.Action;
import com.jme3.animation.AnimControl;
import com.jme3.animation.Skeleton;
import com.jme3.animation.SkeletonControl;
import com.jme3.light.Light;
import com.jme3.renderer.Camera;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.scene.control.CameraControl;
import com.jme3.scene.control.Control;
import com.jme3.scene.control.LightControl;
import com.jme3.util.SafeArrayList;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Set;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public final class C13718n {

    public static final Logger f92137a = Logger.getLogger(C13718n.class.getName());

    public static final boolean f92138b = false;

    public static boolean a(Control control) {
        boolean z10 = control instanceof AbstractControl;
        if (z10) {
            return z10;
        }
        Class<?> cls = control.getClass();
        try {
            cls.getMethod("isEnabled", null);
            return true;
        } catch (NoSuchMethodException unused) {
            throw new IllegalArgumentException(cls.getName());
        }
    }

    public static String b(Control control) {
        StringBuilder sb2 = new StringBuilder(80);
        sb2.append(c(control));
        boolean z10 = true;
        if (control instanceof AnimComposer) {
            AnimComposer animComposer = (AnimComposer) control;
            sb2.append("[clips=");
            sb2.append(animComposer.getAnimClipsNames().size());
            float globalSpeed = animComposer.getGlobalSpeed();
            if (globalSpeed != 1.0f) {
                sb2.append(" gSpeed=");
                sb2.append(C13724t.e(globalSpeed));
            }
            sb2.append(" layers");
            Set<String> layerNames = animComposer.getLayerNames();
            int size = layerNames.size();
            if (size == 1) {
                AnimLayer layer = animComposer.getLayer((String) C13710f.g(layerNames));
                sb2.append("[t=");
                sb2.append(C13724t.g((float) layer.getTime()));
                sb2.append(" action=");
                Action currentAction = layer.getCurrentAction();
                if (currentAction == null) {
                    sb2.append("null");
                } else {
                    sb2.append(currentAction.getClass().getSimpleName());
                    sb2.append(C13724t.s(currentAction.toString()));
                }
                sb2.append(JavaElement.JEM_TYPE_PARAMETER);
            } else {
                sb2.append('=');
                sb2.append(size);
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (control instanceof AnimControl) {
            AnimControl animControl = (AnimControl) control;
            sb2.append('[');
            Collection<String> animationNames = animControl.getAnimationNames();
            int size2 = animationNames.size();
            if (size2 > 2) {
                sb2.append(size2);
            } else {
                for (String str : animationNames) {
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    sb2.append(C13715k.g(animControl.getAnim(str), animControl));
                }
            }
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (control instanceof CameraControl) {
            CameraControl cameraControl = (CameraControl) control;
            CameraControl.ControlDirection controlDir = cameraControl.getControlDir();
            Camera camera = cameraControl.getCamera();
            String t10 = C13724t.t(camera == null ? null : camera.getName());
            sb2.append('[');
            sb2.append((Object) controlDir);
            sb2.append(" camera");
            sb2.append(t10);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (control instanceof LightControl) {
            LightControl lightControl = (LightControl) control;
            LightControl.ControlDirection controlDir2 = lightControl.getControlDir();
            Light light = lightControl.getLight();
            String str2 = light != null ? C13719o.c(light) + C13724t.t(light.getName()) : "null";
            sb2.append('[');
            sb2.append((Object) controlDir2);
            sb2.append(C15883c.f126249O);
            sb2.append(str2);
            sb2.append(JavaElement.JEM_TYPE_PARAMETER);
        } else if (control instanceof MorphControl) {
            sb2.append(((MorphControl) control).isApproximateTangents() ? "[approx]" : "[vbuf]");
        } else {
            if (control instanceof SkeletonControl) {
                SkeletonControl skeletonControl = (SkeletonControl) control;
                sb2.append('[');
                sb2.append(skeletonControl.getSkeleton().getBoneCount());
                sb2.append(skeletonControl.isHardwareSkinningUsed() ? " hw]" : " sw]");
            } else if (control instanceof SkinningControl) {
                SkinningControl skinningControl = (SkinningControl) control;
                sb2.append('[');
                sb2.append(skinningControl.getArmature().getJointCount());
                sb2.append(skinningControl.isHardwareSkinningUsed() ? " hw]" : " sw]");
            }
        }
        return sb2.toString();
    }

    public static String c(Control control) {
        String simpleName = control.getClass().getSimpleName();
        return simpleName.endsWith("Control") ? C13724t.w(simpleName, "Control") : simpleName;
    }

    public static int d(Control control, Spatial spatial) {
        C13702E.t(control, "control");
        int numControls = spatial.getNumControls();
        int i10 = -1;
        for (int i11 = 0; i11 < numControls; i11++) {
            if (spatial.getControl(i11) == control) {
                i10 = i11;
            }
        }
        return i10;
    }

    public static Skeleton e(Control control) {
        if (control instanceof AnimControl) {
            return ((AnimControl) control).getSkeleton();
        }
        if (control instanceof SkeletonControl) {
            return ((SkeletonControl) control).getSkeleton();
        }
        return null;
    }

    @Deprecated
    public static void f(Spatial spatial, int i10, Control control) {
        int numControls = spatial.getNumControls();
        C13702E.i(i10, FirebaseAnalytics.d.f67690b0, 0, numControls);
        C13702E.t(control, "control");
        try {
            Field declaredField = Spatial.class.getDeclaredField(a.C0129a.f6782c);
            declaredField.setAccessible(true);
            try {
                SafeArrayList safeArrayList = (SafeArrayList) declaredField.get(spatial);
                spatial.addControl(control);
                if (i10 != numControls) {
                    safeArrayList.remove(control);
                    safeArrayList.add(i10, control);
                }
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static boolean g(Control control) {
        C13702E.t(control, "control");
        if (control instanceof AbstractControl) {
            return ((AbstractControl) control).isEnabled();
        }
        Class<?> cls = control.getClass();
        try {
            return ((Boolean) cls.getMethod("isEnabled", null).invoke(control, null)).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            throw new IllegalArgumentException(cls.getName());
        }
    }

    public static void h(Control control, boolean z10) {
        if (control instanceof AbstractControl) {
            ((AbstractControl) control).setEnabled(z10);
            return;
        }
        Class<?> cls = control.getClass();
        try {
            cls.getMethod("setEnabled", null).invoke(control, Boolean.valueOf(z10));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            throw new IllegalArgumentException(cls.getName());
        }
    }
}
