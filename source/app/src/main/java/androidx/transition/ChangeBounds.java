package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.util.Map;

public class ChangeBounds extends Transition {
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY;
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY;
    private static final Property<View, PointF> POSITION_PROPERTY;
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY;
    private boolean mReparent;
    private boolean mResizeClip;
    private int[] mTempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        public ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        public void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.f32425x);
            this.mBottom = Math.round(pointF.f32426y);
            int i10 = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = i10;
            if (this.mTopLeftCalls == i10) {
                setLeftTopRightBottom();
            }
        }

        public void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.f32425x);
            this.mTop = Math.round(pointF.f32426y);
            int i10 = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = i10;
            if (i10 == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    static {
        Class<PointF> cls = PointF.class;
        DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(cls, "boundsOrigin") {
            private Rect mBounds = new Rect();

            @Override
            public PointF get(Drawable drawable) {
                drawable.copyBounds(this.mBounds);
                Rect rect = this.mBounds;
                return new PointF(rect.left, rect.top);
            }

            @Override
            public void set(Drawable drawable, PointF pointF) {
                drawable.copyBounds(this.mBounds);
                this.mBounds.offsetTo(Math.round(pointF.f32425x), Math.round(pointF.f32426y));
                drawable.setBounds(this.mBounds);
            }
        };
        String str = "topLeft";
        TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(cls, str) {
            @Override
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.setTopLeft(pointF);
            }
        };
        String str2 = "bottomRight";
        BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(cls, str2) {
            @Override
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override
            public void set(ViewBounds viewBounds, PointF pointF) {
                viewBounds.setBottomRight(pointF);
            }
        };
        BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(cls, str2) {
            @Override
            public PointF get(View view) {
                return null;
            }

            @Override
            public void set(View view, PointF pointF) {
                ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.f32425x), Math.round(pointF.f32426y));
            }
        };
        TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(cls, str) {
            @Override
            public PointF get(View view) {
                return null;
            }

            @Override
            public void set(View view, PointF pointF) {
                ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.f32425x), Math.round(pointF.f32426y), view.getRight(), view.getBottom());
            }
        };
        POSITION_PROPERTY = new Property<View, PointF>(cls, "position") {
            @Override
            public PointF get(View view) {
                return null;
            }

            @Override
            public void set(View view, PointF pointF) {
                int round = Math.round(pointF.f32425x);
                int round2 = Math.round(pointF.f32426y);
                ViewUtils.setLeftTopRightBottom(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
            }
        };
    }

    public ChangeBounds() {
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mReparent) {
            transitionValues.view.getLocationInWindow(this.mTempLocation);
            transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
            transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
        }
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, ViewCompat.getClipBounds(view));
        }
    }

    private boolean parentMatches(View view, View view2) {
        if (!this.mReparent) {
            return true;
        }
        TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.view) {
            return true;
        }
        return false;
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override
    public Animator createAnimator(final ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i10;
        final View view;
        int i11;
        ObjectAnimator objectAnimator;
        Animator mergeAnimators;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = transitionValues2.view;
        if (!parentMatches(viewGroup2, viewGroup3)) {
            int intValue = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int intValue2 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int intValue3 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue();
            int intValue4 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (intValue == intValue3 && intValue2 == intValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.mTempLocation);
            Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(createBitmap));
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
            final float transitionAlpha = ViewUtils.getTransitionAlpha(view2);
            ViewUtils.setTransitionAlpha(view2, 0.0f);
            ViewUtils.getOverlay(viewGroup).add(bitmapDrawable);
            PathMotion pathMotion = getPathMotion();
            int[] iArr = this.mTempLocation;
            int i12 = iArr[0];
            int i13 = iArr[1];
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolderUtils.ofPointF(DRAWABLE_ORIGIN_PROPERTY, pathMotion.getPath(intValue - i12, intValue2 - i13, intValue3 - i12, intValue4 - i13)));
            ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animator) {
                    ViewUtils.getOverlay(viewGroup).remove(bitmapDrawable);
                    ViewUtils.setTransitionAlpha(view2, transitionAlpha);
                }
            });
            return ofPropertyValuesHolder;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect2 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int i14 = rect.left;
        final int i15 = rect2.left;
        int i16 = rect.top;
        final int i17 = rect2.top;
        int i18 = rect.right;
        final int i19 = rect2.right;
        int i20 = rect.bottom;
        final int i21 = rect2.bottom;
        int i22 = i18 - i14;
        int i23 = i20 - i16;
        int i24 = i19 - i15;
        int i25 = i21 - i17;
        Rect rect3 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        final Rect rect4 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((i22 == 0 || i23 == 0) && (i24 == 0 || i25 == 0)) {
            i10 = 0;
        } else {
            i10 = (i14 == i15 && i16 == i17) ? 0 : 1;
            if (i18 != i19 || i20 != i21) {
                i10++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        if (this.mResizeClip) {
            view = view2;
            ViewUtils.setLeftTopRightBottom(view, i14, i16, Math.max(i22, i24) + i14, Math.max(i23, i25) + i16);
            ObjectAnimator ofPointF = (i14 == i15 && i16 == i17) ? null : ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i14, i16, i15, i17));
            if (rect3 == null) {
                i11 = 0;
                rect3 = new Rect(0, 0, i22, i23);
            } else {
                i11 = 0;
            }
            Rect rect5 = rect4 == null ? new Rect(i11, i11, i24, i25) : rect4;
            if (rect3.equals(rect5)) {
                objectAnimator = null;
            } else {
                ViewCompat.setClipBounds(view, rect3);
                ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", sRectEvaluator, rect3, rect5);
                ofObject.addListener(new AnimatorListenerAdapter() {
                    private boolean mIsCanceled;

                    @Override
                    public void onAnimationCancel(Animator animator) {
                        this.mIsCanceled = true;
                    }

                    @Override
                    public void onAnimationEnd(Animator animator) {
                        if (this.mIsCanceled) {
                            return;
                        }
                        ViewCompat.setClipBounds(view, rect4);
                        ViewUtils.setLeftTopRightBottom(view, i15, i17, i19, i21);
                    }
                });
                objectAnimator = ofObject;
            }
            mergeAnimators = TransitionUtils.mergeAnimators(ofPointF, objectAnimator);
        } else {
            view = view2;
            ViewUtils.setLeftTopRightBottom(view, i14, i16, i18, i20);
            if (i10 != 2) {
                mergeAnimators = (i14 == i15 && i16 == i17) ? ObjectAnimatorUtils.ofPointF(view, BOTTOM_RIGHT_ONLY_PROPERTY, getPathMotion().getPath(i18, i20, i19, i21)) : ObjectAnimatorUtils.ofPointF(view, TOP_LEFT_ONLY_PROPERTY, getPathMotion().getPath(i14, i16, i15, i17));
            } else if (i22 == i24 && i23 == i25) {
                mergeAnimators = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(i14, i16, i15, i17));
            } else {
                ViewBounds viewBounds = new ViewBounds(view);
                ObjectAnimator ofPointF2 = ObjectAnimatorUtils.ofPointF(viewBounds, TOP_LEFT_PROPERTY, getPathMotion().getPath(i14, i16, i15, i17));
                ObjectAnimator ofPointF3 = ObjectAnimatorUtils.ofPointF(viewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion().getPath(i18, i20, i19, i21));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ofPointF2, ofPointF3);
                animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) {
                    private ViewBounds mViewBounds;
                    final ViewBounds val$viewBounds;

                    {
                        this.val$viewBounds = viewBounds;
                        this.mViewBounds = viewBounds;
                    }
                });
                mergeAnimators = animatorSet;
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ViewGroupUtils.suppressLayout(viewGroup4, true);
            addListener(new TransitionListenerAdapter() {
                boolean mCanceled = false;

                @Override
                public void onTransitionCancel(Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, false);
                    this.mCanceled = true;
                }

                @Override
                public void onTransitionEnd(Transition transition) {
                    if (!this.mCanceled) {
                        ViewGroupUtils.suppressLayout(viewGroup4, false);
                    }
                    transition.removeListener(this);
                }

                @Override
                public void onTransitionPause(Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, false);
                }

                @Override
                public void onTransitionResume(Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, true);
                }
            });
        }
        return mergeAnimators;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean z10) {
        this.mResizeClip = z10;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }
}
