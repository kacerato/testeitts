package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.openjdk.tools.doclint.DocLint;

public abstract class ViewSpline extends SplineSet {
    private static final String TAG = "ViewSpline";

    public static class AlphaSet extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setAlpha(get(t10));
        }
    }

    public static class CustomSet extends ViewSpline {
        String mAttributeName;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.mAttributeName = attribute.split(DocLint.SEPARATOR)[1];
            this.mConstraintAttributeList = attrList;
        }

        @Override
        public void setPoint(int position, float value) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override
        public void setProperty(View view, float t10) {
            this.mCurveFit.getPos(t10, this.mTempValues);
            CustomSupport.setInterpolatedValue(this.mConstraintAttributeList.valueAt(0), view, this.mTempValues);
        }

        @Override
        public void setup(int curveType) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, size, numberOfInterpolatedValues);
            for (int i10 = 0; i10 < size; i10++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i10);
                ConstraintAttribute valueAt = this.mConstraintAttributeList.valueAt(i10);
                dArr[i10] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.mTempValues);
                int i11 = 0;
                while (true) {
                    if (i11 < this.mTempValues.length) {
                        dArr2[i10][i11] = r6[i11];
                        i11++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value) {
            this.mConstraintAttributeList.append(position, value);
        }
    }

    public static class ElevationSet extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setElevation(get(t10));
        }
    }

    public static class PathRotate extends ViewSpline {
        public void setPathRotate(View view, float t10, double dx, double dy) {
            view.setRotation(get(t10) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override
        public void setProperty(View view, float t10) {
        }
    }

    public static class PivotXset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setPivotX(get(t10));
        }
    }

    public static class PivotYset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setPivotY(get(t10));
        }
    }

    public static class ProgressSet extends ViewSpline {
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
                    Log.e(ViewSpline.TAG, "unable to setProgress", e10);
                } catch (InvocationTargetException e11) {
                    Log.e(ViewSpline.TAG, "unable to setProgress", e11);
                }
            }
        }
    }

    public static class RotationSet extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotation(get(t10));
        }
    }

    public static class RotationXset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotationX(get(t10));
        }
    }

    public static class RotationYset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setRotationY(get(t10));
        }
    }

    public static class ScaleXset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setScaleX(get(t10));
        }
    }

    public static class ScaleYset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setScaleY(get(t10));
        }
    }

    public static class TranslationXset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationX(get(t10));
        }
    }

    public static class TranslationYset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationY(get(t10));
        }
    }

    public static class TranslationZset extends ViewSpline {
        @Override
        public void setProperty(View view, float t10) {
            view.setTranslationZ(get(t10));
        }
    }

    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public static ViewSpline makeSpline(String str) {
        str.hashCode();
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
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    c10 = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c10 = 15;
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
                return new PivotXset();
            case '\n':
                return new PivotYset();
            case 11:
                return new RotationSet();
            case '\f':
                return new ElevationSet();
            case '\r':
                return new PathRotate();
            case 14:
                return new AlphaSet();
            case 15:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t10);
}
