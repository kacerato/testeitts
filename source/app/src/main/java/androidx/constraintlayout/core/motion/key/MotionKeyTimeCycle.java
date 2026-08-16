package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class MotionKeyTimeCycle extends MotionKey {
    public static final int KEY_TYPE = 3;
    static final String NAME = "KeyTimeCycle";
    private static final String TAG = "KeyTimeCycle";
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

    public MotionKeyTimeCycle() {
        this.mType = 3;
        this.mCustom = new HashMap<>();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x004a. Please report as an issue. */
    public void addTimeValues(HashMap<String, TimeCycleSplineSet> hashMap) {
        for (String str : hashMap.o()) {
            TimeCycleSplineSet timeCycleSplineSet = hashMap.get(str);
            if (timeCycleSplineSet != null) {
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
                        case -1249320804:
                            if (str.equals("rotationZ")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -1225497657:
                            if (str.equals("translationX")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case -1225497656:
                            if (str.equals("translationY")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case -1225497655:
                            if (str.equals("translationZ")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case -1001078227:
                            if (str.equals("progress")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case -908189618:
                            if (str.equals("scaleX")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case -908189617:
                            if (str.equals("scaleY")) {
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
                        case 92909918:
                            if (str.equals("alpha")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case 803192288:
                            if (str.equals("pathRotate")) {
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
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mRotationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 1:
                            if (Float.isNaN(this.mRotationY)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mRotationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 2:
                            if (Float.isNaN(this.mRotation)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mRotation, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 3:
                            if (Float.isNaN(this.mTranslationX)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mTranslationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 4:
                            if (Float.isNaN(this.mTranslationY)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mTranslationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 5:
                            if (Float.isNaN(this.mTranslationZ)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mTranslationZ, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 6:
                            if (Float.isNaN(this.mProgress)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mProgress, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 7:
                            if (Float.isNaN(this.mScaleX)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mScaleX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\b':
                            if (Float.isNaN(this.mScaleY)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mScaleY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\t':
                            if (Float.isNaN(this.mTranslationZ)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mTranslationZ, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case '\n':
                            if (Float.isNaN(this.mAlpha)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mAlpha, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        case 11:
                            if (Float.isNaN(this.mTransitionPathRotate)) {
                                break;
                            } else {
                                timeCycleSplineSet.setPoint(this.mFramePosition, this.mTransitionPathRotate, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                                break;
                            }
                        default:
                            Utils.loge("KeyTimeCycles", "UNKNOWN addValues \"" + str + JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                    }
                } else {
                    CustomVariable customVariable = this.mCustom.get(str.substring(7));
                    if (customVariable != null) {
                        ((TimeCycleSplineSet.CustomVarSet) timeCycleSplineSet).setPoint(this.mFramePosition, customVariable, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                    }
                }
            }
        }
    }

    @Override
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.mAlpha)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.mElevation)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.mRotation)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashSet.add("translationZ");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.o().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    @Override
    public int getId(String str) {
        return TypedValues.CycleType.getId(str);
    }

    @Override
    public boolean setValue(int i10, int i11) {
        if (i10 == 100) {
            this.mFramePosition = i11;
            return true;
        }
        if (i10 != 421) {
            return super.setValue(i10, i11);
        }
        this.mWaveShape = i11;
        return true;
    }

    @Override
    public MotionKey mo675clone() {
        return new MotionKeyTimeCycle().copy((MotionKey) this);
    }

    @Override
    public MotionKeyTimeCycle copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTimeCycle motionKeyTimeCycle = (MotionKeyTimeCycle) motionKey;
        this.mTransitionEasing = motionKeyTimeCycle.mTransitionEasing;
        this.mCurveFit = motionKeyTimeCycle.mCurveFit;
        this.mWaveShape = motionKeyTimeCycle.mWaveShape;
        this.mWavePeriod = motionKeyTimeCycle.mWavePeriod;
        this.mWaveOffset = motionKeyTimeCycle.mWaveOffset;
        this.mProgress = motionKeyTimeCycle.mProgress;
        this.mAlpha = motionKeyTimeCycle.mAlpha;
        this.mElevation = motionKeyTimeCycle.mElevation;
        this.mRotation = motionKeyTimeCycle.mRotation;
        this.mTransitionPathRotate = motionKeyTimeCycle.mTransitionPathRotate;
        this.mRotationX = motionKeyTimeCycle.mRotationX;
        this.mRotationY = motionKeyTimeCycle.mRotationY;
        this.mScaleX = motionKeyTimeCycle.mScaleX;
        this.mScaleY = motionKeyTimeCycle.mScaleY;
        this.mTranslationX = motionKeyTimeCycle.mTranslationX;
        this.mTranslationY = motionKeyTimeCycle.mTranslationY;
        this.mTranslationZ = motionKeyTimeCycle.mTranslationZ;
        return this;
    }

    @Override
    public boolean setValue(int i10, float f10) {
        if (i10 == 315) {
            this.mProgress = toFloat(Float.valueOf(f10));
            return true;
        }
        if (i10 == 401) {
            this.mCurveFit = toInt(Float.valueOf(f10));
            return true;
        }
        if (i10 == 403) {
            this.mAlpha = f10;
            return true;
        }
        if (i10 == 416) {
            this.mTransitionPathRotate = toFloat(Float.valueOf(f10));
            return true;
        }
        if (i10 == 423) {
            this.mWavePeriod = toFloat(Float.valueOf(f10));
            return true;
        }
        if (i10 != 424) {
            switch (i10) {
                case 304:
                    this.mTranslationX = toFloat(Float.valueOf(f10));
                    return true;
                case 305:
                    this.mTranslationY = toFloat(Float.valueOf(f10));
                    return true;
                case 306:
                    this.mTranslationZ = toFloat(Float.valueOf(f10));
                    return true;
                case 307:
                    this.mElevation = toFloat(Float.valueOf(f10));
                    return true;
                case 308:
                    this.mRotationX = toFloat(Float.valueOf(f10));
                    return true;
                case 309:
                    this.mRotationY = toFloat(Float.valueOf(f10));
                    return true;
                case 310:
                    this.mRotation = toFloat(Float.valueOf(f10));
                    return true;
                case 311:
                    this.mScaleX = toFloat(Float.valueOf(f10));
                    return true;
                case 312:
                    this.mScaleY = toFloat(Float.valueOf(f10));
                    return true;
                default:
                    return super.setValue(i10, f10);
            }
        }
        this.mWaveOffset = toFloat(Float.valueOf(f10));
        return true;
    }

    @Override
    public boolean setValue(int i10, String str) {
        if (i10 == 420) {
            this.mTransitionEasing = str;
            return true;
        }
        if (i10 != 421) {
            return super.setValue(i10, str);
        }
        this.mWaveShape = 7;
        this.mCustomWaveShape = str;
        return true;
    }

    @Override
    public boolean setValue(int i10, boolean z10) {
        return super.setValue(i10, z10);
    }
}
