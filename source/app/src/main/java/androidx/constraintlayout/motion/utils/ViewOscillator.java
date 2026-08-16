package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class ViewOscillator extends KeyCycleOscillator {
    private static final String TAG = "ViewOscillator";

    public static class AlphaSet extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setAlpha(get(t10));
        }
    }

    public static class CustomSet extends ViewOscillator {
        protected ConstraintAttribute mCustom;
        float[] value = new float[1];

        @Override
        public void setCustom(Object custom) {
            this.mCustom = (ConstraintAttribute) custom;
        }

        @Override
        public void setProperty(View view, float t10) {
            this.value[0] = get(t10);
            CustomSupport.setInterpolatedValue(this.mCustom, view, this.value);
        }
    }

    public static class ElevationSet extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setElevation(get(t10));
        }
    }

    public static class PathRotateSet extends ViewOscillator {
        public void setPathRotate(View view, float t10, double dx, double dy) {
            view.setRotation(get(t10) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override
        public void setProperty(View view, float t10) {
        }
    }

    public static class ProgressSet extends ViewOscillator {
        boolean mNoMethod = false;

        @Override
        public void setProperty(View view, float t10) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t10));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.mNoMethod = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(t10)));
                } catch (IllegalAccessException e10) {
                    Log.e(ViewOscillator.TAG, "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e(ViewOscillator.TAG, "unable to setProgress", e11);
                }
            }
        }
    }

    public static class RotationSet extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotation(get(t10));
        }
    }

    public static class RotationXset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotationX(get(t10));
        }
    }

    public static class RotationYset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotationY(get(t10));
        }
    }

    public static class ScaleXset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setScaleX(get(t10));
        }
    }

    public static class ScaleYset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setScaleY(get(t10));
        }
    }

    public static class TranslationXset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationX(get(t10));
        }
    }

    public static class TranslationYset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationY(get(t10));
        }
    }

    public static class TranslationZset extends ViewOscillator {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationZ(get(t10));
        }
    }

    public static ViewOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new RotationSet();
            case '\n':
                return new ElevationSet();
            case 11:
                return new PathRotateSet();
            case '\f':
                return new AlphaSet();
            case '\r':
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t10);
}
