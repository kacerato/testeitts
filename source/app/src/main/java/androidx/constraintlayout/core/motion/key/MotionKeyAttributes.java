package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class MotionKeyAttributes extends MotionKey {
    private static final boolean DEBUG = false;
    public static final int KEY_TYPE = 1;
    static final String NAME = "KeyAttribute";
    private static final String TAG = "KeyAttributes";
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private int mVisibility = 0;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;

    public MotionKeyAttributes() {
        this.mType = 1;
        this.mCustom = new HashMap<>();
    }

    private float getFloatValue(int i10) {
        if (i10 == 100) {
            return this.mFramePosition;
        }
        switch (i10) {
            case 303:
                return this.mAlpha;
            case 304:
                return this.mTranslationX;
            case 305:
                return this.mTranslationY;
            case 306:
                return this.mTranslationZ;
            case 307:
                return this.mElevation;
            case 308:
                return this.mRotationX;
            case 309:
                return this.mRotationY;
            case 310:
                return this.mRotation;
            case 311:
                return this.mScaleX;
            case 312:
                return this.mScaleY;
            case 313:
                return this.mPivotX;
            case 314:
                return this.mPivotY;
            case 315:
                return this.mProgress;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE:
                return this.mTransitionPathRotate;
            default:
                return Float.NaN;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0041. Please report as an issue. */
    @Override
    public void addValues(HashMap<String, SplineSet> hashMap) {
        for (String str : hashMap.o()) {
            SplineSet splineSet = hashMap.get(str);
            if (splineSet != null) {
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
                        case -987906986:
                            if (str.equals("pivotX")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case -987906985:
                            if (str.equals("pivotY")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case -908189618:
                            if (str.equals("scaleX")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case -908189617:
                            if (str.equals("scaleY")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case -4379043:
                            if (str.equals("elevation")) {
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
                        case 803192288:
                            if (str.equals("pathRotate")) {
                                c10 = CharUtils.CR;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            if (Float.isNaN(this.mRotationX)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mRotationX);
                                break;
                            }
                        case 1:
                            if (Float.isNaN(this.mRotationY)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mRotationY);
                                break;
                            }
                        case 2:
                            if (Float.isNaN(this.mRotation)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mRotation);
                                break;
                            }
                        case 3:
                            if (Float.isNaN(this.mTranslationX)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mTranslationX);
                                break;
                            }
                        case 4:
                            if (Float.isNaN(this.mTranslationY)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mTranslationY);
                                break;
                            }
                        case 5:
                            if (Float.isNaN(this.mTranslationZ)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mTranslationZ);
                                break;
                            }
                        case 6:
                            if (Float.isNaN(this.mProgress)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mProgress);
                                break;
                            }
                        case 7:
                            if (Float.isNaN(this.mRotationX)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mPivotX);
                                break;
                            }
                        case '\b':
                            if (Float.isNaN(this.mRotationY)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mPivotY);
                                break;
                            }
                        case '\t':
                            if (Float.isNaN(this.mScaleX)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mScaleX);
                                break;
                            }
                        case '\n':
                            if (Float.isNaN(this.mScaleY)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mScaleY);
                                break;
                            }
                        case 11:
                            if (Float.isNaN(this.mElevation)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mElevation);
                                break;
                            }
                        case '\f':
                            if (Float.isNaN(this.mAlpha)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mAlpha);
                                break;
                            }
                        case '\r':
                            if (Float.isNaN(this.mTransitionPathRotate)) {
                                break;
                            } else {
                                splineSet.setPoint(this.mFramePosition, this.mTransitionPathRotate);
                                break;
                            }
                        default:
                            System.err.println("not supported by KeyAttributes " + str);
                            break;
                    }
                } else {
                    CustomVariable customVariable = this.mCustom.get(str.substring(7));
                    if (customVariable != null) {
                        ((SplineSet.CustomSpline) splineSet).setPoint(this.mFramePosition, customVariable);
                    }
                }
            }
        }
    }

    @Override
    public MotionKey mo675clone() {
        return null;
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
        if (!Float.isNaN(this.mPivotX)) {
            hashSet.add("pivotX");
        }
        if (!Float.isNaN(this.mPivotY)) {
            hashSet.add("pivotY");
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
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.mProgress)) {
            hashSet.add("progress");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.o().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + it.next());
            }
        }
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override
    public int getId(String str) {
        return TypedValues.AttributesType.getId(str);
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        System.out.println(" ------------- " + this.mFramePosition + " -------------");
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i10 = 0; i10 < strArr.length; i10++) {
            int id2 = TypedValues.AttributesType.getId(strArr[i10]);
            System.out.println(strArr[i10] + s.f32937c + getFloatValue(id2));
        }
    }

    @Override
    public void setInterpolation(HashMap<String, Integer> hashMap) {
        if (!Float.isNaN(this.mAlpha)) {
            hashMap.put("alpha", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            hashMap.put("elevation", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            hashMap.put("rotationZ", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            hashMap.put("rotationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            hashMap.put("rotationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotX)) {
            hashMap.put("pivotX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mPivotY)) {
            hashMap.put("pivotY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            hashMap.put("translationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            hashMap.put("translationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            hashMap.put("translationZ", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            hashMap.put("pathRotate", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            hashMap.put("scaleX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleY)) {
            hashMap.put("scaleY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            hashMap.put("progress", Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it = this.mCustom.o().iterator();
            while (it.hasNext()) {
                hashMap.put("CUSTOM," + it.next(), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    @Override
    public boolean setValue(int i10, int i11) {
        if (i10 == 100) {
            this.mFramePosition = i11;
            return true;
        }
        if (i10 == 301) {
            this.mCurveFit = i11;
            return true;
        }
        if (i10 != 302) {
            if (setValue(i10, i11)) {
                return true;
            }
            return super.setValue(i10, i11);
        }
        this.mVisibility = i11;
        return true;
    }

    @Override
    public boolean setValue(int i10, float f10) {
        if (i10 != 100) {
            switch (i10) {
                case 303:
                    this.mAlpha = f10;
                    return true;
                case 304:
                    this.mTranslationX = f10;
                    return true;
                case 305:
                    this.mTranslationY = f10;
                    return true;
                case 306:
                    this.mTranslationZ = f10;
                    return true;
                case 307:
                    this.mElevation = f10;
                    return true;
                case 308:
                    this.mRotationX = f10;
                    return true;
                case 309:
                    this.mRotationY = f10;
                    return true;
                case 310:
                    this.mRotation = f10;
                    return true;
                case 311:
                    this.mScaleX = f10;
                    return true;
                case 312:
                    this.mScaleY = f10;
                    return true;
                case 313:
                    this.mPivotX = f10;
                    return true;
                case 314:
                    this.mPivotY = f10;
                    return true;
                case 315:
                    this.mProgress = f10;
                    return true;
                case TypedValues.AttributesType.TYPE_PATH_ROTATE:
                    this.mTransitionPathRotate = f10;
                    return true;
                default:
                    return super.setValue(i10, f10);
            }
        }
        this.mTransitionPathRotate = f10;
        return true;
    }

    @Override
    public boolean setValue(int i10, String str) {
        if (i10 == 101) {
            this.mTargetString = str;
            return true;
        }
        if (i10 != 317) {
            return super.setValue(i10, str);
        }
        this.mTransitionEasing = str;
        return true;
    }
}
