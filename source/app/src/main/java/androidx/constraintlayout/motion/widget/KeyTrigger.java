package androidx.constraintlayout.motion.widget;

import Sm.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    public static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger c10, TypedArray a10, Context context) {
            int indexCount = a10.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a10.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c10.mNegativeCross = a10.getString(index);
                        break;
                    case 2:
                        c10.mPositiveCross = a10.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e(TypedValues.TriggerType.NAME, "unused attribute 0x" + Integer.toHexString(index) + b.f23785c + mAttrMap.get(index));
                        break;
                    case 4:
                        c10.mCross = a10.getString(index);
                        break;
                    case 5:
                        c10.mTriggerSlack = a10.getFloat(index, c10.mTriggerSlack);
                        break;
                    case 6:
                        c10.mTriggerID = a10.getResourceId(index, c10.mTriggerID);
                        break;
                    case 7:
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
                    case 8:
                        int integer = a10.getInteger(index, c10.mFramePosition);
                        c10.mFramePosition = integer;
                        c10.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c10.mTriggerCollisionId = a10.getResourceId(index, c10.mTriggerCollisionId);
                        break;
                    case 10:
                        c10.mPostLayout = a10.getBoolean(index, c10.mPostLayout);
                        break;
                    case 11:
                        c10.mTriggerReceiver = a10.getResourceId(index, c10.mTriggerReceiver);
                        break;
                    case 12:
                        c10.mViewTransitionOnCross = a10.getResourceId(index, c10.mViewTransitionOnCross);
                        break;
                    case 13:
                        c10.mViewTransitionOnNegativeCross = a10.getResourceId(index, c10.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        c10.mViewTransitionOnPositiveCross = a10.getResourceId(index, c10.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i10 = Key.UNSET;
        this.mTriggerReceiver = i10;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i10;
        this.mTriggerCollisionId = i10;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = i10;
        this.mViewTransitionOnPositiveCross = i10;
        this.mViewTransitionOnCross = i10;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            fireCustom(str, call);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, null);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                Log.e(TypedValues.TriggerType.NAME, "Could not find method \"" + str + "\"on class " + call.getClass().getSimpleName() + " " + Debug.getName(call));
                return;
            }
        }
        try {
            method.invoke(call, null);
        } catch (Exception unused2) {
            Log.e(TypedValues.TriggerType.NAME, "Exception in call \"" + this.mCross + "\"on class " + call.getClass().getSimpleName() + " " + Debug.getName(call));
        }
    }

    private void fireCustom(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.o()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void conditionallyFire(float pos, View child) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14 = true;
        boolean z15 = false;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) child.getParent()).findViewById(this.mTriggerCollisionId);
            }
            setUpRect(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            setUpRect(this.mTargetRect, child, this.mPostLayout);
            if (this.mCollisionRect.intersect(this.mTargetRect)) {
                if (this.mFireCrossReset) {
                    this.mFireCrossReset = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.mFireNegativeReset = true;
            } else {
                if (this.mFireCrossReset) {
                    z10 = false;
                } else {
                    this.mFireCrossReset = true;
                    z10 = true;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z13 = true;
                } else {
                    z13 = false;
                }
                this.mFirePositiveReset = true;
                z15 = z13;
                z12 = false;
            }
        } else {
            if (this.mFireCrossReset) {
                float f10 = this.mFireThreshold;
                if ((pos - f10) * (this.mFireLastPos - f10) < 0.0f) {
                    this.mFireCrossReset = false;
                    z10 = true;
                    if (!this.mFireNegativeReset) {
                        float f11 = this.mFireThreshold;
                        float f12 = pos - f11;
                        if ((this.mFireLastPos - f11) * f12 < 0.0f && f12 < 0.0f) {
                            this.mFireNegativeReset = false;
                            z11 = true;
                            if (this.mFirePositiveReset) {
                                float f13 = this.mFireThreshold;
                                float f14 = pos - f13;
                                if ((this.mFireLastPos - f13) * f14 >= 0.0f || f14 <= 0.0f) {
                                    z14 = false;
                                } else {
                                    this.mFirePositiveReset = false;
                                }
                                z12 = z14;
                            } else {
                                if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                                    this.mFirePositiveReset = true;
                                }
                                z12 = false;
                            }
                            z15 = z11;
                        }
                    } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFireNegativeReset = true;
                    }
                    z11 = false;
                    if (this.mFirePositiveReset) {
                    }
                    z15 = z11;
                }
            } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z10 = false;
            if (!this.mFireNegativeReset) {
            }
            z11 = false;
            if (this.mFirePositiveReset) {
            }
            z15 = z11;
        }
        this.mFireLastPos = pos;
        if (z15 || z10 || z12) {
            ((MotionLayout) child.getParent()).fireTrigger(this.mTriggerID, z12, pos);
        }
        View findViewById = this.mTriggerReceiver == Key.UNSET ? child : ((MotionLayout) child.getParent()).findViewById(this.mTriggerReceiver);
        if (z15) {
            String str = this.mNegativeCross;
            if (str != null) {
                fire(str, findViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnNegativeCross, findViewById);
            }
        }
        if (z12) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                fire(str2, findViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnPositiveCross, findViewById);
            }
        }
        if (z10) {
            String str3 = this.mCross;
            if (str3 != null) {
                fire(str3, findViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnCross, findViewById);
            }
        }
    }

    @Override
    public Key copy(Key src) {
        super.copy(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override
    public void getAttributeNames(HashSet<String> attributes) {
    }

    public int getCurveFit() {
        return this.mCurveFit;
    }

    @Override
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTrigger), context);
    }

    @Override
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c10 = '\uffff';
        switch (tag.hashCode()) {
            case -1594793529:
                if (tag.equals("positiveCross")) {
                    c10 = 0;
                    break;
                }
                break;
            case -966421266:
                if (tag.equals("viewTransitionOnPositiveCross")) {
                    c10 = 1;
                    break;
                }
                break;
            case -786670827:
                if (tag.equals("triggerCollisionId")) {
                    c10 = 2;
                    break;
                }
                break;
            case -648752941:
                if (tag.equals("triggerID")) {
                    c10 = 3;
                    break;
                }
                break;
            case -638126837:
                if (tag.equals("negativeCross")) {
                    c10 = 4;
                    break;
                }
                break;
            case -76025313:
                if (tag.equals("triggerCollisionView")) {
                    c10 = 5;
                    break;
                }
                break;
            case -9754574:
                if (tag.equals("viewTransitionOnNegativeCross")) {
                    c10 = 6;
                    break;
                }
                break;
            case 64397344:
                if (tag.equals("CROSS")) {
                    c10 = 7;
                    break;
                }
                break;
            case 364489912:
                if (tag.equals("triggerSlack")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1301930599:
                if (tag.equals("viewTransitionOnCross")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1401391082:
                if (tag.equals("postLayout")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1535404999:
                if (tag.equals("triggerReceiver")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.mPositiveCross = value.toString();
                return;
            case 1:
                this.mViewTransitionOnPositiveCross = toInt(value);
                return;
            case 2:
                this.mTriggerCollisionId = toInt(value);
                return;
            case 3:
                this.mTriggerID = toInt(value);
                return;
            case 4:
                this.mNegativeCross = value.toString();
                return;
            case 5:
                this.mTriggerCollisionView = (View) value;
                return;
            case 6:
                this.mViewTransitionOnNegativeCross = toInt(value);
                return;
            case 7:
                this.mCross = value.toString();
                return;
            case '\b':
                this.mTriggerSlack = toFloat(value);
                return;
            case '\t':
                this.mViewTransitionOnCross = toInt(value);
                return;
            case '\n':
                this.mPostLayout = toBoolean(value);
                return;
            case 11:
                this.mTriggerReceiver = toInt(value);
                return;
            default:
                return;
        }
    }

    @Override
    public Key mo676clone() {
        return new KeyTrigger().copy(this);
    }
}
