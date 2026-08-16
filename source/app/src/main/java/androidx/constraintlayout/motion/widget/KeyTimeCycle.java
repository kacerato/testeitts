package androidx.constraintlayout.motion.widget;

import Sm.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    static final String NAME = "KeyTimeCycle";
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    private static final String TAG = "KeyTimeCycle";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_SHAPE = "waveShape";
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;
    private int mWaveShape = 0;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;

    public static class Loader {
        private static final int ANDROID_ALPHA = 1;
        private static final int ANDROID_ELEVATION = 2;
        private static final int ANDROID_ROTATION = 4;
        private static final int ANDROID_ROTATION_X = 5;
        private static final int ANDROID_ROTATION_Y = 6;
        private static final int ANDROID_SCALE_X = 7;
        private static final int ANDROID_SCALE_Y = 14;
        private static final int ANDROID_TRANSLATION_X = 15;
        private static final int ANDROID_TRANSLATION_Y = 16;
        private static final int ANDROID_TRANSLATION_Z = 17;
        private static final int CURVE_FIT = 13;
        private static final int FRAME_POSITION = 12;
        private static final int PROGRESS = 18;
        private static final int TARGET_ID = 10;
        private static final int TRANSITION_EASING = 9;
        private static final int TRANSITION_PATH_ROTATE = 8;
        private static final int WAVE_OFFSET = 21;
        private static final int WAVE_PERIOD = 20;
        private static final int WAVE_SHAPE = 19;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            mAttrMap.append(R.styleable.KeyTimeCycle_framePosition, 12);
            mAttrMap.append(R.styleable.KeyTimeCycle_curveFit, 13);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            mAttrMap.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        private Loader() {
        }

        public static void read(KeyTimeCycle c10, TypedArray a10) {
            int indexCount = a10.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a10.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c10.mAlpha = a10.getFloat(index, c10.mAlpha);
                        break;
                    case 2:
                        c10.mElevation = a10.getDimension(index, c10.mElevation);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + b.f23785c + mAttrMap.get(index));
                        break;
                    case 4:
                        c10.mRotation = a10.getFloat(index, c10.mRotation);
                        break;
                    case 5:
                        c10.mRotationX = a10.getFloat(index, c10.mRotationX);
                        break;
                    case 6:
                        c10.mRotationY = a10.getFloat(index, c10.mRotationY);
                        break;
                    case 7:
                        c10.mScaleX = a10.getFloat(index, c10.mScaleX);
                        break;
                    case 8:
                        c10.mTransitionPathRotate = a10.getFloat(index, c10.mTransitionPathRotate);
                        break;
                    case 9:
                        c10.mTransitionEasing = a10.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a10.getResourceId(index, c10.mTargetId);
                            c10.mTargetId = resourceId;
                            if (resourceId == -1) {
                                c10.mTargetString = a10.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a10.peekValue(index).type == 3) {
                            c10.mTargetString = a10.getString(index);
                            break;
                        } else {
                            c10.mTargetId = a10.getResourceId(index, c10.mTargetId);
                            break;
                        }
                    case 12:
                        c10.mFramePosition = a10.getInt(index, c10.mFramePosition);
                        break;
                    case 13:
                        c10.mCurveFit = a10.getInteger(index, c10.mCurveFit);
                        break;
                    case 14:
                        c10.mScaleY = a10.getFloat(index, c10.mScaleY);
                        break;
                    case 15:
                        c10.mTranslationX = a10.getDimension(index, c10.mTranslationX);
                        break;
                    case 16:
                        c10.mTranslationY = a10.getDimension(index, c10.mTranslationY);
                        break;
                    case 17:
                        c10.mTranslationZ = a10.getDimension(index, c10.mTranslationZ);
                        break;
                    case 18:
                        c10.mProgress = a10.getFloat(index, c10.mProgress);
                        break;
                    case 19:
                        if (a10.peekValue(index).type == 3) {
                            c10.mCustomWaveShape = a10.getString(index);
                            c10.mWaveShape = 7;
                            break;
                        } else {
                            c10.mWaveShape = a10.getInt(index, c10.mWaveShape);
                            break;
                        }
                    case 20:
                        c10.mWavePeriod = a10.getFloat(index, c10.mWavePeriod);
                        break;
                    case 21:
                        if (a10.peekValue(index).type == 5) {
                            c10.mWaveOffset = a10.getDimension(index, c10.mWaveOffset);
                            break;
                        } else {
                            c10.mWaveOffset = a10.getFloat(index, c10.mWaveOffset);
                            break;
                        }
                }
            }
        }
    }

    public KeyTimeCycle() {
        this.mType = 3;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x004a. Please report as an issue. */
    public void addTimeValues(HashMap<String, ViewTimeCycle> splines) {
        for (String str : splines.o()) {
            ViewTimeCycle viewTimeCycle = splines.get(str);
            if (viewTimeCycle != null) {
                if (!str.startsWith("CUSTOM")) {
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
                        case -40300674:
                            if (str.equals(Key.ROTATION)) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case -4379043:
                            if (str.equals("elevation")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case 37232917:
                            if (str.equals("transitionPathRotate")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case 92909918:
                            if (str.equals("alpha")) {
                                c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            if (Float.isNaN(this.mRotationX)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mRotationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 1:
                            if (Float.isNaN(this.mRotationY)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mRotationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 2:
                            if (Float.isNaN(this.mTranslationX)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mTranslationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 3:
                            if (Float.isNaN(this.mTranslationY)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mTranslationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 4:
                            if (Float.isNaN(this.mTranslationZ)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mTranslationZ, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 5:
                            if (Float.isNaN(this.mProgress)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mProgress, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 6:
                            if (Float.isNaN(this.mScaleX)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mScaleX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 7:
                            if (Float.isNaN(this.mScaleY)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mScaleY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\b':
                            if (Float.isNaN(this.mRotation)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mRotation, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\t':
                            if (Float.isNaN(this.mElevation)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mElevation, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\n':
                            if (Float.isNaN(this.mTransitionPathRotate)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mTransitionPathRotate, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 11:
                            if (Float.isNaN(this.mAlpha)) {
                                break;
                            } else {
                                viewTimeCycle.setPoint(this.mFramePosition, this.mAlpha, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((ViewTimeCycle.CustomSet) viewTimeCycle).setPoint(this.mFramePosition, constraintAttribute, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                    }
                }
            }
        }
    }

    @Override
    public void addValues(HashMap<String, ViewSpline> splines) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override
    public Key copy(Key src) {
        super.copy(src);
        KeyTimeCycle keyTimeCycle = (KeyTimeCycle) src;
        this.mTransitionEasing = keyTimeCycle.mTransitionEasing;
        this.mCurveFit = keyTimeCycle.mCurveFit;
        this.mWaveShape = keyTimeCycle.mWaveShape;
        this.mWavePeriod = keyTimeCycle.mWavePeriod;
        this.mWaveOffset = keyTimeCycle.mWaveOffset;
        this.mProgress = keyTimeCycle.mProgress;
        this.mAlpha = keyTimeCycle.mAlpha;
        this.mElevation = keyTimeCycle.mElevation;
        this.mRotation = keyTimeCycle.mRotation;
        this.mTransitionPathRotate = keyTimeCycle.mTransitionPathRotate;
        this.mRotationX = keyTimeCycle.mRotationX;
        this.mRotationY = keyTimeCycle.mRotationY;
        this.mScaleX = keyTimeCycle.mScaleX;
        this.mScaleY = keyTimeCycle.mScaleY;
        this.mTranslationX = keyTimeCycle.mTranslationX;
        this.mTranslationY = keyTimeCycle.mTranslationY;
        this.mTranslationZ = keyTimeCycle.mTranslationZ;
        return this;
    }

    @Override
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.mAlpha)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.mElevation)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.mRotation)) {
            attributes.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mRotationX)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.mRotationY)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.mTranslationX)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.mTranslationY)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mScaleX)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.mProgress)) {
            attributes.add("progress");
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.o().iterator();
            while (it.hasNext()) {
                attributes.add("CUSTOM," + it.next());
            }
        }
    }

    @Override
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTimeCycle));
    }

    @Override
    public void setInterpolation(HashMap<String, Integer> interpolation) {
        if (this.mCurveFit == -1) {
            return;
        }
        if (!Float.isNaN(this.mAlpha)) {
            interpolation.put("alpha", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            interpolation.put("elevation", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            interpolation.put(Key.ROTATION, Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            interpolation.put("rotationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            interpolation.put("rotationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            interpolation.put("translationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            interpolation.put("translationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            interpolation.put("translationZ", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            interpolation.put("scaleX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            interpolation.put("scaleY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            interpolation.put("progress", Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.o().iterator();
            while (it.hasNext()) {
                interpolation.put("CUSTOM," + it.next(), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    @Override
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c10 = '\uffff';
        switch (tag.hashCode()) {
            case -1913008125:
                if (tag.equals(Key.MOTIONPROGRESS)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1249320806:
                if (tag.equals("rotationX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1249320805:
                if (tag.equals("rotationY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1225497657:
                if (tag.equals("translationX")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1225497656:
                if (tag.equals("translationY")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1225497655:
                if (tag.equals("translationZ")) {
                    c10 = 6;
                    break;
                }
                break;
            case -908189618:
                if (tag.equals("scaleX")) {
                    c10 = 7;
                    break;
                }
                break;
            case -908189617:
                if (tag.equals("scaleY")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -40300674:
                if (tag.equals(Key.ROTATION)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -4379043:
                if (tag.equals("elevation")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 37232917:
                if (tag.equals("transitionPathRotate")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case 92909918:
                if (tag.equals("alpha")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 156108012:
                if (tag.equals("waveOffset")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
            case 184161818:
                if (tag.equals("wavePeriod")) {
                    c10 = 14;
                    break;
                }
                break;
            case 579057826:
                if (tag.equals("curveFit")) {
                    c10 = 15;
                    break;
                }
                break;
            case 1532805160:
                if (tag.equals("waveShape")) {
                    c10 = 16;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.mProgress = toFloat(value);
                return;
            case 1:
                this.mTransitionEasing = value.toString();
                return;
            case 2:
                this.mRotationX = toFloat(value);
                return;
            case 3:
                this.mRotationY = toFloat(value);
                return;
            case 4:
                this.mTranslationX = toFloat(value);
                return;
            case 5:
                this.mTranslationY = toFloat(value);
                return;
            case 6:
                this.mTranslationZ = toFloat(value);
                return;
            case 7:
                this.mScaleX = toFloat(value);
                return;
            case '\b':
                this.mScaleY = toFloat(value);
                return;
            case '\t':
                this.mRotation = toFloat(value);
                return;
            case '\n':
                this.mElevation = toFloat(value);
                return;
            case 11:
                this.mTransitionPathRotate = toFloat(value);
                return;
            case '\f':
                this.mAlpha = toFloat(value);
                return;
            case '\r':
                this.mWaveOffset = toFloat(value);
                return;
            case 14:
                this.mWavePeriod = toFloat(value);
                return;
            case 15:
                this.mCurveFit = toInt(value);
                return;
            case 16:
                if (value instanceof Integer) {
                    this.mWaveShape = toInt(value);
                    return;
                } else {
                    this.mWaveShape = 7;
                    this.mCustomWaveShape = value.toString();
                    return;
                }
            default:
                return;
        }
    }

    @Override
    public Key mo676clone() {
        return new KeyTimeCycle().copy(this);
    }
}
