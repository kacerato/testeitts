package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.KeyAttributes;
import androidx.constraintlayout.motion.widget.KeyPosition;
import androidx.constraintlayout.motion.widget.MotionController;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    private static final int UNSET = -1;
    public static final int WEST = 3;
    private int fadeMove;
    private float motionEffectAlpha;
    private int motionEffectEnd;
    private int motionEffectStart;
    private boolean motionEffectStrictMove;
    private int motionEffectTranslationX;
    private int motionEffectTranslationY;
    private int viewTransitionId;

    public MotionEffect(Context context) {
        super(context);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MotionEffect);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = obtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.MotionEffect_motionEffect_start) {
                    int i11 = obtainStyledAttributes.getInt(index, this.motionEffectStart);
                    this.motionEffectStart = i11;
                    this.motionEffectStart = Math.max(Math.min(i11, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_end) {
                    int i12 = obtainStyledAttributes.getInt(index, this.motionEffectEnd);
                    this.motionEffectEnd = i12;
                    this.motionEffectEnd = Math.max(Math.min(i12, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationX) {
                    this.motionEffectTranslationX = obtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationX);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationY) {
                    this.motionEffectTranslationY = obtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationY);
                } else if (index == R.styleable.MotionEffect_motionEffect_alpha) {
                    this.motionEffectAlpha = obtainStyledAttributes.getFloat(index, this.motionEffectAlpha);
                } else if (index == R.styleable.MotionEffect_motionEffect_move) {
                    this.fadeMove = obtainStyledAttributes.getInt(index, this.fadeMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_strict) {
                    this.motionEffectStrictMove = obtainStyledAttributes.getBoolean(index, this.motionEffectStrictMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_viewTransition) {
                    this.viewTransitionId = obtainStyledAttributes.getResourceId(index, this.viewTransitionId);
                }
            }
            int i13 = this.motionEffectStart;
            int i14 = this.motionEffectEnd;
            if (i13 == i14) {
                if (i13 > 0) {
                    this.motionEffectStart = i13 - 1;
                } else {
                    this.motionEffectEnd = i14 + 1;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override
    public boolean isDecorator() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0185, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0199, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b9, code lost:
    
        if (r15 == 0.0f) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e4  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreSetup(MotionLayout motionLayout, HashMap<View, MotionController> controllerMap) {
        Key key;
        Key key2;
        Key key3;
        int i10;
        HashMap<View, MotionController> hashMap = controllerMap;
        View[] views = getViews((ConstraintLayout) getParent());
        if (views == null) {
            Log.v(TAG, Debug.getLoc() + " views = null");
            return;
        }
        Key keyAttributes = new KeyAttributes();
        Key keyAttributes2 = new KeyAttributes();
        keyAttributes.setValue("alpha", Float.valueOf(this.motionEffectAlpha));
        keyAttributes2.setValue("alpha", Float.valueOf(this.motionEffectAlpha));
        keyAttributes.setFramePosition(this.motionEffectStart);
        keyAttributes2.setFramePosition(this.motionEffectEnd);
        KeyPosition keyPosition = new KeyPosition();
        keyPosition.setFramePosition(this.motionEffectStart);
        keyPosition.setType(0);
        keyPosition.setValue("percentX", 0);
        keyPosition.setValue("percentY", 0);
        KeyPosition keyPosition2 = new KeyPosition();
        keyPosition2.setFramePosition(this.motionEffectEnd);
        keyPosition2.setType(0);
        keyPosition2.setValue("percentX", 1);
        keyPosition2.setValue("percentY", 1);
        Key key4 = null;
        if (this.motionEffectTranslationX > 0) {
            key = new KeyAttributes();
            key2 = new KeyAttributes();
            key.setValue("translationX", Integer.valueOf(this.motionEffectTranslationX));
            key.setFramePosition(this.motionEffectEnd);
            key2.setValue("translationX", 0);
            key2.setFramePosition(this.motionEffectEnd - 1);
        } else {
            key = null;
            key2 = null;
        }
        if (this.motionEffectTranslationY > 0) {
            key4 = new KeyAttributes();
            key3 = new KeyAttributes();
            key4.setValue("translationY", Integer.valueOf(this.motionEffectTranslationY));
            key4.setFramePosition(this.motionEffectEnd);
            key3.setValue("translationY", 0);
            key3.setFramePosition(this.motionEffectEnd - 1);
        } else {
            key3 = null;
        }
        int i11 = this.fadeMove;
        if (i11 == -1) {
            int[] iArr = new int[4];
            for (View view : views) {
                MotionController motionController = hashMap.get(view);
                if (motionController != null) {
                    float finalX = motionController.getFinalX() - motionController.getStartX();
                    float finalY = motionController.getFinalY() - motionController.getStartY();
                    if (finalY < 0.0f) {
                        iArr[1] = iArr[1] + 1;
                    }
                    if (finalY > 0.0f) {
                        iArr[0] = iArr[0] + 1;
                    }
                    if (finalX > 0.0f) {
                        iArr[3] = iArr[3] + 1;
                    }
                    if (finalX < 0.0f) {
                        iArr[2] = iArr[2] + 1;
                    }
                }
            }
            int i12 = iArr[0];
            i11 = 0;
            for (int i13 = 1; i13 < 4; i13++) {
                int i14 = iArr[i13];
                if (i12 < i14) {
                    i12 = i14;
                    i11 = i13;
                }
            }
        }
        int i15 = 0;
        while (i15 < views.length) {
            MotionController motionController2 = hashMap.get(views[i15]);
            if (motionController2 != null) {
                float finalX2 = motionController2.getFinalX() - motionController2.getStartX();
                float finalY2 = motionController2.getFinalY() - motionController2.getStartY();
                if (i11 == 0) {
                    if (finalY2 > 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 != -1) {
                        motionController2.addKey(keyAttributes);
                        motionController2.addKey(keyAttributes2);
                        motionController2.addKey(keyPosition);
                        motionController2.addKey(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.addKey(key);
                            motionController2.addKey(key2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.addKey(key4);
                            motionController2.addKey(key3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i10, motionController2);
                    }
                } else if (i11 == 1) {
                    if (finalY2 < 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 != -1) {
                    }
                } else if (i11 == 2) {
                    if (finalX2 < 0.0f) {
                        if (this.motionEffectStrictMove) {
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 != -1) {
                    }
                } else {
                    if (i11 == 3) {
                        if (finalX2 > 0.0f) {
                            if (this.motionEffectStrictMove) {
                            }
                        }
                    }
                    i10 = this.viewTransitionId;
                    if (i10 != -1) {
                    }
                }
                i15++;
                hashMap = controllerMap;
            }
            i15++;
            hashMap = controllerMap;
        }
    }

    public MotionEffect(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        init(context, attrs);
    }

    public MotionEffect(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        init(context, attrs);
    }
}
