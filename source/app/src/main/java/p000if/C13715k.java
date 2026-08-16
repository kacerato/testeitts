package p000if;

import android.provider.MediaStore;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.jme3.anim.AnimClip;
import com.jme3.anim.AnimComposer;
import com.jme3.anim.AnimTrack;
import com.jme3.anim.Joint;
import com.jme3.anim.MorphTrack;
import com.jme3.anim.TransformTrack;
import com.jme3.anim.util.HasLocalTransform;
import com.jme3.animation.AnimControl;
import com.jme3.animation.Animation;
import com.jme3.animation.AudioTrack;
import com.jme3.animation.BoneTrack;
import com.jme3.animation.EffectTrack;
import com.jme3.animation.SpatialTrack;
import com.jme3.animation.Track;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import java.util.Arrays;
import java.util.logging.Logger;
import jf.c;

public final class C13715k {

    public static final Logger f92116a = Logger.getLogger(C13715k.class.getName());

    public static final boolean f92117b = false;

    public static boolean A(AnimTrack<?> animTrack) {
        return (animTrack instanceof TransformTrack) && (((TransformTrack) animTrack).getTarget() instanceof Joint);
    }

    public static boolean B(AnimTrack<?> animTrack) {
        return (animTrack instanceof TransformTrack) && (((TransformTrack) animTrack).getTarget() instanceof Spatial);
    }

    public static BoneTrack C(int i10, Vector3f vector3f, Quaternion quaternion, Vector3f vector3f2) {
        C13702E.q(i10, "bone index");
        return E(i10, new float[]{0.0f}, new Vector3f[]{vector3f.m1292clone()}, new Quaternion[]{quaternion.m1285clone()}, new Vector3f[]{vector3f2.m1292clone()});
    }

    public static BoneTrack D(int i10, float[] fArr, Transform transform) {
        C13702E.q(i10, "bone index");
        int length = fArr.length;
        float[] fArr2 = new float[length];
        Vector3f[] vector3fArr = new Vector3f[length];
        Quaternion[] quaternionArr = new Quaternion[length];
        Vector3f[] vector3fArr2 = new Vector3f[length];
        Transform m1289clone = transform.m1289clone();
        for (int i11 = 0; i11 < length; i11++) {
            fArr2[i11] = fArr[i11];
            vector3fArr[i11] = m1289clone.getTranslation();
            quaternionArr[i11] = m1289clone.getRotation();
            vector3fArr2[i11] = m1289clone.getScale();
        }
        return E(i10, fArr2, vector3fArr, quaternionArr, vector3fArr2);
    }

    public static BoneTrack E(int i10, float[] fArr, Vector3f[] vector3fArr, Quaternion[] quaternionArr, Vector3f[] vector3fArr2) {
        C13702E.t(fArr, "times");
        C13702E.t(vector3fArr, "translations");
        C13702E.t(quaternionArr, "rotations");
        int length = fArr.length;
        return vector3fArr2 == null ? new BoneTrack(i10, fArr, vector3fArr, quaternionArr) : new BoneTrack(i10, fArr, vector3fArr, quaternionArr, vector3fArr2);
    }

    public static Quaternion[] a(Track track) {
        if (track instanceof BoneTrack) {
            return ((BoneTrack) track).getRotations();
        }
        if (track instanceof SpatialTrack) {
            return ((SpatialTrack) track).getRotations();
        }
        throw new IllegalArgumentException(track.getClass().getSimpleName());
    }

    public static Vector3f[] b(Track track) {
        if (track instanceof BoneTrack) {
            return ((BoneTrack) track).getScales();
        }
        if (track instanceof SpatialTrack) {
            return ((SpatialTrack) track).getScales();
        }
        throw new IllegalArgumentException(track.getClass().getSimpleName());
    }

    public static Vector3f[] c(Track track) {
        if (track instanceof BoneTrack) {
            return ((BoneTrack) track).getTranslations();
        }
        if (track instanceof SpatialTrack) {
            return ((SpatialTrack) track).getTranslations();
        }
        throw new IllegalArgumentException(track.getClass().getSimpleName());
    }

    public static <T extends Track> int d(Animation animation, Class<T> cls) {
        if (animation == null) {
            return 0;
        }
        int i10 = 0;
        for (Track track : animation.getTracks()) {
            if (cls.isAssignableFrom(track.getClass())) {
                i10++;
            }
        }
        return i10;
    }

    public static String e(AnimClip animClip, AnimComposer animComposer) {
        C13702E.t(animComposer, MediaStore.Audio.AudioColumns.COMPOSER);
        String name = animClip.getName();
        AnimTrack[] tracks = animClip.getTracks();
        int length = tracks.length;
        if (length > 3) {
            return String.format("%s[%d]", C13724t.s(name), Integer.valueOf(length));
        }
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = f(tracks[i10]);
        }
        return String.format("%s(%s)", name, C13724t.q(strArr));
    }

    public static String f(AnimTrack animTrack) {
        C13702E.t(animTrack, MediaStore.Audio.AudioColumns.TRACK);
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(i(animTrack));
        if (animTrack instanceof MorphTrack) {
            Geometry target = ((MorphTrack) animTrack).getTarget();
            sb2.append(target.getClass().getSimpleName());
            sb2.append(C13724t.s(target.getName()));
        } else if (animTrack instanceof TransformTrack) {
            TransformTrack transformTrack = (TransformTrack) animTrack;
            HasLocalTransform target2 = transformTrack.getTarget();
            sb2.append(target2.getClass().getSimpleName());
            sb2.append(C13724t.s(w(target2)));
            if (transformTrack.getTranslations() != null) {
                sb2.append(ExifInterface.GPS_DIRECTION_TRUE);
            }
            if (transformTrack.getRotations() != null) {
                sb2.append("R");
            }
            if (transformTrack.getScales() != null) {
                sb2.append("S");
            }
        }
        return sb2.toString();
    }

    public static String g(Animation animation, AnimControl animControl) {
        C13702E.t(animControl, "anim control");
        String name = animation.getName();
        Track[] tracks = animation.getTracks();
        int length = tracks.length;
        if (length > 2) {
            return String.format("%s[%d]", C13724t.s(name), Integer.valueOf(length));
        }
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = h(tracks[i10], animControl);
        }
        return String.format("%s(%s)", name, C13724t.q(strArr));
    }

    public static String h(Track track, AnimControl animControl) {
        C13702E.t(track, MediaStore.Audio.AudioColumns.TRACK);
        C13702E.t(animControl, "anim control");
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append(i(track));
        if ((track instanceof BoneTrack) || (track instanceof SpatialTrack)) {
            sb2.append(C13724t.s(x(track, animControl)));
            if (c(track) != null) {
                sb2.append(ExifInterface.GPS_DIRECTION_TRUE);
            }
            if (a(track) != null) {
                sb2.append("R");
            }
            if (b(track) != null) {
                sb2.append("S");
            }
        }
        return sb2.toString();
    }

    public static char i(Object obj) {
        if (obj instanceof AudioTrack) {
            return 'a';
        }
        if (obj instanceof BoneTrack) {
            return 'b';
        }
        if (obj instanceof EffectTrack) {
            return 'e';
        }
        if (obj instanceof MorphTrack) {
            return 'm';
        }
        if (obj instanceof SpatialTrack) {
            return 's';
        }
        return obj instanceof TransformTrack ? 't' : '?';
    }

    public static BoneTrack j(Animation animation, int i10) {
        C13702E.q(i10, "bone index");
        for (Track track : animation.getTracks()) {
            if (track instanceof BoneTrack) {
                BoneTrack boneTrack = (BoneTrack) track;
                if (i10 == boneTrack.getTargetBoneIndex()) {
                    return boneTrack;
                }
            }
        }
        return null;
    }

    public static TransformTrack k(AnimClip animClip, int i10) {
        C13702E.q(i10, "joint index");
        for (AnimTrack animTrack : animClip.getTracks()) {
            if (animTrack instanceof TransformTrack) {
                TransformTrack transformTrack = (TransformTrack) animTrack;
                HasLocalTransform target = transformTrack.getTarget();
                if ((target instanceof Joint) && i10 == ((Joint) target).getId()) {
                    return transformTrack;
                }
            }
        }
        return null;
    }

    public static int l(TransformTrack transformTrack, float f10) {
        C13702E.p(f10, "time");
        int binarySearch = Arrays.binarySearch(transformTrack.getTimes(), f10);
        if (binarySearch < 0) {
            return -1;
        }
        return binarySearch;
    }

    public static int m(Track track, float f10) {
        C13702E.p(f10, "time");
        int binarySearch = Arrays.binarySearch(track.getKeyFrameTimes(), f10);
        if (binarySearch < 0) {
            return -1;
        }
        return binarySearch;
    }

    public static float n(Animation animation) {
        float f10 = 0.0f;
        for (Track track : animation.getTracks()) {
            for (float f11 : track.getKeyFrameTimes()) {
                if (f11 > f10) {
                    f10 = f11;
                }
            }
        }
        return f10;
    }

    public static int o(TransformTrack transformTrack, float f10) {
        C13702E.p(f10, "time");
        return c.f(f10, transformTrack.getTimes());
    }

    public static int p(Track track, float f10) {
        C13702E.p(f10, "time");
        return c.f(f10, track.getKeyFrameTimes());
    }

    public static SpatialTrack q(AnimControl animControl, Animation animation, Spatial spatial) {
        for (Track track : animation.getTracks()) {
            if (track instanceof SpatialTrack) {
                SpatialTrack spatialTrack = (SpatialTrack) track;
                Spatial trackSpatial = spatialTrack.getTrackSpatial();
                if (trackSpatial == null) {
                    trackSpatial = animControl.getSpatial();
                }
                if (trackSpatial == spatial) {
                    return spatialTrack;
                }
            }
        }
        return null;
    }

    public static int r(Animation animation, Track track) {
        Track[] tracks = animation.getTracks();
        int length = tracks.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (track == tracks[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static TransformTrack s(AnimClip animClip, int i10) {
        for (AnimTrack animTrack : animClip.getTracks()) {
            if (animTrack instanceof TransformTrack) {
                TransformTrack transformTrack = (TransformTrack) animTrack;
                HasLocalTransform target = transformTrack.getTarget();
                if ((target instanceof Joint) && ((Joint) target).getId() == i10) {
                    return transformTrack;
                }
            }
        }
        return null;
    }

    public static float[] t(Object obj) {
        if (obj instanceof MorphTrack) {
            return ((MorphTrack) obj).getTimes();
        }
        if (obj instanceof Track) {
            return ((Track) obj).getKeyFrameTimes();
        }
        if (obj instanceof TransformTrack) {
            return ((TransformTrack) obj).getTimes();
        }
        throw new IllegalArgumentException(obj.getClass().getSimpleName());
    }

    @Deprecated
    public static Quaternion[] u(Track track) {
        return a(track);
    }

    @Deprecated
    public static Vector3f[] v(Track track) {
        return b(track);
    }

    public static String w(HasLocalTransform hasLocalTransform) {
        C13702E.t(hasLocalTransform, TypedValues.AttributesType.S_TARGET);
        if (hasLocalTransform instanceof Joint) {
            return ((Joint) hasLocalTransform).getName();
        }
        if (hasLocalTransform instanceof Spatial) {
            return ((Spatial) hasLocalTransform).getName();
        }
        throw new IllegalArgumentException("className = " + hasLocalTransform.getClass().getSimpleName());
    }

    public static String x(Track track, AnimControl animControl) {
        C13702E.t(track, MediaStore.Audio.AudioColumns.TRACK);
        if (track instanceof BoneTrack) {
            return animControl.getSkeleton().getBone(((BoneTrack) track).getTargetBoneIndex()).getName();
        }
        if (!(track instanceof SpatialTrack)) {
            throw new IllegalArgumentException(track.getClass().getSimpleName());
        }
        Spatial trackSpatial = ((SpatialTrack) track).getTrackSpatial();
        if (trackSpatial == null) {
            trackSpatial = animControl.getSpatial();
        }
        return trackSpatial.getName();
    }

    @Deprecated
    public static Vector3f[] y(Track track) {
        return c(track);
    }

    public static boolean z(Animation animation, int i10) {
        C13702E.q(i10, "bone index");
        return j(animation, i10) != null;
    }
}
