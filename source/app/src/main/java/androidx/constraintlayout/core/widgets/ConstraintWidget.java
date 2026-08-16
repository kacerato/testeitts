package androidx.constraintlayout.core.widgets;

import android.icu.text.DateFormat;
import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.exifinterface.media.ExifInterface;
import com.ardor3d.util.export.xml.XMLExporter;
import com.bumptech.glide.load.engine.GlideException;
import ei.C13155a;
import ga.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.openjdk.tools.doclint.DocLint;

public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    private boolean OPTIMIZE_WRAP;
    private boolean OPTIMIZE_WRAP_ON_RESOLVED;
    public WidgetFrame frame;
    private boolean hasBaseline;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public HorizontalWidgetRun horizontalRun;
    private boolean horizontalSolvingPass;
    private boolean inPlaceholder;
    public boolean[] isTerminalWidget;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    boolean mGroupsToSolver;
    int mHeight;
    private int mHeightOverride;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    boolean mHorizontalWrapVisited;
    private boolean mInVirtualLayout;
    public boolean mIsHeightWrapContent;
    private boolean[] mIsInBarrier;
    public boolean mIsWidthWrapContent;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    private boolean mMeasureRequested;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    public ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    boolean mResolvedHasRatio;
    public int[] mResolvedMatchConstraintDefault;
    public ConstraintAnchor mRight;
    boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWidthOverride;
    private int mWrapBehaviorInParent;
    protected int mX;
    protected int mY;
    public boolean measured;
    private boolean resolvedHorizontal;
    private boolean resolvedVertical;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;
    public VerticalWidgetRun verticalRun;
    private boolean verticalSolvingPass;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;
        static final int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour;

        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f10 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f10;
        this.mVerticalBiasPercent = f10;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03a3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0433 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x04cd A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void applyConstraints(LinearSystem linearSystem, boolean z10, boolean z11, boolean z12, boolean z13, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z14, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10, int i11, int i12, int i13, float f10, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i14, int i15, int i16, int i17, float f11, boolean z20) {
        int i18;
        boolean z21;
        int i19;
        SolverVariable solverVariable3;
        int i20;
        int i21;
        int i22;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        int i23;
        boolean z22;
        boolean z23;
        SolverVariable createObjectVariable;
        SolverVariable createObjectVariable2;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        int i24;
        SolverVariable solverVariable10;
        int i25;
        int i26;
        int i27;
        ConstraintAnchor constraintAnchor3;
        SolverVariable solverVariable11;
        int i28;
        SolverVariable solverVariable12;
        int i29;
        int i30;
        int i31;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        int i32;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        SolverVariable solverVariable13;
        SolverVariable solverVariable14;
        boolean z28;
        SolverVariable solverVariable15;
        ConstraintWidget constraintWidget3;
        int i33;
        int i34;
        int i35;
        int i36;
        boolean z29;
        int i37;
        int i38;
        int i39;
        boolean z30;
        int i40;
        boolean z31;
        ConstraintWidget constraintWidget4;
        int i41;
        SolverVariable solverVariable16;
        int i42;
        ConstraintWidget constraintWidget5;
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable createObjectVariable6 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean isConnected = constraintAnchor.isConnected();
        boolean isConnected2 = constraintAnchor2.isConnected();
        boolean isConnected3 = this.mCenter.isConnected();
        int i43 = isConnected2 ? (isConnected ? 1 : 0) + 1 : isConnected ? 1 : 0;
        if (isConnected3) {
            i43++;
        }
        int i44 = z15 ? 3 : i14;
        int i45 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour[dimensionBehaviour.ordinal()];
        if (i45 == 1 || i45 == 2 || i45 == 3 || i45 != 4) {
            i18 = i44;
        } else {
            i18 = i44;
            if (i18 != 4) {
                z21 = true;
                i19 = this.mWidthOverride;
                if (i19 == -1 && z10) {
                    this.mWidthOverride = -1;
                    solverVariable3 = createObjectVariable6;
                    z21 = false;
                } else {
                    i19 = i11;
                    solverVariable3 = createObjectVariable6;
                }
                i20 = this.mHeightOverride;
                if (i20 != -1 && !z10) {
                    this.mHeightOverride = -1;
                    i19 = i20;
                    z21 = false;
                }
                if (this.mVisibility == 8) {
                    i19 = 0;
                    z21 = false;
                }
                if (z20) {
                    if (!isConnected && !isConnected2 && !isConnected3) {
                        linearSystem.addEquality(createObjectVariable3, i10);
                    } else if (isConnected && !isConnected2) {
                        linearSystem.addEquality(createObjectVariable3, createObjectVariable5, constraintAnchor.getMargin(), 8);
                    }
                }
                if (z21) {
                    if (z14) {
                        linearSystem.addEquality(createObjectVariable4, createObjectVariable3, 0, 3);
                        if (i12 > 0) {
                            linearSystem.addGreaterThan(createObjectVariable4, createObjectVariable3, i12, 8);
                        }
                        if (i13 < Integer.MAX_VALUE) {
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i13, 8);
                        }
                    } else {
                        linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i19, 8);
                    }
                    i21 = i17;
                    i22 = i43;
                    solverVariable4 = createObjectVariable5;
                    solverVariable5 = createObjectVariable4;
                    z22 = z21;
                    solverVariable6 = solverVariable3;
                    z23 = z13;
                    i23 = i16;
                } else if (i43 == 2 || z15 || !(i18 == 1 || i18 == 0)) {
                    int i46 = i16 == -2 ? i19 : i16;
                    i21 = i17 == -2 ? i19 : i17;
                    if (i19 > 0 && i18 != 1) {
                        i19 = 0;
                    }
                    if (i46 > 0) {
                        linearSystem.addGreaterThan(createObjectVariable4, createObjectVariable3, i46, 8);
                        i19 = Math.max(i19, i46);
                    }
                    if (i21 > 0) {
                        if (!z11 || i18 != 1) {
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i21, 8);
                        }
                        i19 = Math.min(i19, i21);
                    }
                    if (i18 == 1) {
                        if (z11) {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i19, 8);
                        } else if (z17) {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i19, 5);
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i19, 8);
                        } else {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i19, 5);
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i19, 8);
                        }
                        i22 = i43;
                        solverVariable4 = createObjectVariable5;
                        solverVariable5 = createObjectVariable4;
                        z22 = z21;
                        solverVariable6 = solverVariable3;
                        z23 = z13;
                        i23 = i46;
                    } else if (i18 == 2) {
                        ConstraintAnchor.Type type = constraintAnchor.getType();
                        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                        if (type == type2 || constraintAnchor.getType() == ConstraintAnchor.Type.BOTTOM) {
                            createObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(type2));
                            createObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.BOTTOM));
                        } else {
                            createObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                            createObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.RIGHT));
                        }
                        i22 = i43;
                        solverVariable6 = solverVariable3;
                        i23 = i46;
                        solverVariable4 = createObjectVariable5;
                        solverVariable5 = createObjectVariable4;
                        linearSystem.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable4, createObjectVariable3, createObjectVariable2, createObjectVariable, f11));
                        if (z11) {
                            z21 = false;
                        }
                        z22 = z21;
                        z23 = z13;
                    } else {
                        i22 = i43;
                        solverVariable4 = createObjectVariable5;
                        solverVariable5 = createObjectVariable4;
                        solverVariable6 = solverVariable3;
                        i23 = i46;
                        z22 = z21;
                        z23 = true;
                    }
                } else {
                    int max = Math.max(i16, i19);
                    if (i17 > 0) {
                        max = Math.min(i17, max);
                    }
                    linearSystem.addEquality(createObjectVariable4, createObjectVariable3, max, 8);
                    z23 = z13;
                    i21 = i17;
                    i22 = i43;
                    solverVariable5 = createObjectVariable4;
                    z22 = false;
                    solverVariable6 = solverVariable3;
                    i23 = i16;
                    solverVariable4 = createObjectVariable5;
                }
                if (z20) {
                    solverVariable7 = solverVariable;
                    solverVariable8 = solverVariable2;
                    solverVariable9 = solverVariable5;
                    i24 = 0;
                    solverVariable10 = createObjectVariable3;
                    i25 = i22;
                    i26 = 2;
                } else if (z17) {
                    solverVariable7 = solverVariable;
                    solverVariable8 = solverVariable2;
                    i25 = i22;
                    solverVariable9 = solverVariable5;
                    i24 = 0;
                    i26 = 2;
                    solverVariable10 = createObjectVariable3;
                } else {
                    if (!isConnected && !isConnected2 && !isConnected3) {
                        solverVariable15 = solverVariable5;
                        i34 = 5;
                        i35 = 0;
                    } else if (!isConnected || isConnected2) {
                        if (!isConnected && isConnected2) {
                            linearSystem.addEquality(solverVariable5, solverVariable6, -constraintAnchor2.getMargin(), 8);
                            if (z11) {
                                if (this.OPTIMIZE_WRAP && createObjectVariable3.isFinalValue && (constraintWidget4 = this.mParent) != null) {
                                    ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget4;
                                    if (z10) {
                                        constraintWidgetContainer.addHorizontalWrapMinVariable(constraintAnchor);
                                    } else {
                                        constraintWidgetContainer.addVerticalWrapMinVariable(constraintAnchor);
                                    }
                                } else {
                                    i34 = 5;
                                    linearSystem.addGreaterThan(createObjectVariable3, solverVariable, 0, 5);
                                    i35 = 0;
                                    solverVariable15 = solverVariable5;
                                }
                            }
                        } else if (isConnected && isConnected2) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.mTarget.mOwner;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.mTarget.mOwner;
                            ConstraintWidget parent = getParent();
                            if (z22) {
                                if (i18 == 0) {
                                    if (i21 != 0 || i23 != 0) {
                                        z30 = false;
                                        i38 = 5;
                                        i40 = 5;
                                        z31 = true;
                                        z24 = true;
                                    } else if (solverVariable4.isFinalValue && solverVariable6.isFinalValue) {
                                        linearSystem.addEquality(createObjectVariable3, solverVariable4, constraintAnchor.getMargin(), 8);
                                        linearSystem.addEquality(solverVariable5, solverVariable6, -constraintAnchor2.getMargin(), 8);
                                        return;
                                    } else {
                                        z31 = false;
                                        z24 = false;
                                        i38 = 8;
                                        i40 = 8;
                                        z30 = true;
                                    }
                                    if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                        solverVariable12 = solverVariable2;
                                        i29 = i38;
                                        i30 = 6;
                                        z26 = z30;
                                        z25 = z31;
                                        i31 = 4;
                                        if (z24 || solverVariable4 != solverVariable6 || constraintWidget6 == parent) {
                                            z27 = true;
                                        } else {
                                            z24 = false;
                                            z27 = false;
                                        }
                                        if (z25) {
                                            i32 = i18;
                                            constraintWidget = parent;
                                            constraintWidget2 = constraintWidget7;
                                            solverVariable13 = solverVariable5;
                                            solverVariable14 = createObjectVariable3;
                                            z28 = z11;
                                        } else {
                                            if (z22 || z16 || z18 || solverVariable4 != solverVariable || solverVariable6 != solverVariable12) {
                                                z28 = z11;
                                                i36 = i30;
                                                z29 = z27;
                                                i37 = i29;
                                            } else {
                                                z28 = false;
                                                i37 = 8;
                                                i36 = 8;
                                                z29 = false;
                                            }
                                            i32 = i18;
                                            constraintWidget = parent;
                                            constraintWidget2 = constraintWidget7;
                                            SolverVariable solverVariable17 = solverVariable5;
                                            solverVariable13 = solverVariable5;
                                            solverVariable14 = createObjectVariable3;
                                            linearSystem.addCentering(createObjectVariable3, solverVariable4, constraintAnchor.getMargin(), f10, solverVariable6, solverVariable17, constraintAnchor2.getMargin(), i36);
                                            i29 = i37;
                                            z27 = z29;
                                        }
                                        if (this.mVisibility != 8 && !constraintAnchor2.hasDependents()) {
                                            return;
                                        }
                                        if (z24) {
                                            solverVariable15 = solverVariable13;
                                        } else {
                                            if (z28 && solverVariable4 != solverVariable6 && !z22 && ((constraintWidget6 instanceof Barrier) || (constraintWidget2 instanceof Barrier))) {
                                                i29 = 6;
                                            }
                                            linearSystem.addGreaterThan(solverVariable14, solverVariable4, constraintAnchor.getMargin(), i29);
                                            solverVariable15 = solverVariable13;
                                            linearSystem.addLowerThan(solverVariable15, solverVariable6, -constraintAnchor2.getMargin(), i29);
                                        }
                                        if (z28 || !z19 || (constraintWidget6 instanceof Barrier) || (constraintWidget2 instanceof Barrier)) {
                                            constraintWidget3 = constraintWidget;
                                        } else {
                                            constraintWidget3 = constraintWidget;
                                            if (constraintWidget2 != constraintWidget3) {
                                                i29 = 6;
                                                i33 = 6;
                                                z27 = true;
                                                if (z27) {
                                                    if (z26 && (!z18 || z12)) {
                                                        int i47 = (constraintWidget6 == constraintWidget3 || constraintWidget2 == constraintWidget3) ? 6 : i33;
                                                        if ((constraintWidget6 instanceof Guideline) || (constraintWidget2 instanceof Guideline)) {
                                                            i47 = 5;
                                                        }
                                                        if ((constraintWidget6 instanceof Barrier) || (constraintWidget2 instanceof Barrier)) {
                                                            i47 = 5;
                                                        }
                                                        if (z18) {
                                                            i47 = 5;
                                                        }
                                                        i33 = Math.max(i47, i33);
                                                    }
                                                    if (z28) {
                                                        i33 = (z15 && !z18 && (constraintWidget6 == constraintWidget3 || constraintWidget2 == constraintWidget3)) ? 4 : Math.min(i29, i33);
                                                    }
                                                    linearSystem.addEquality(solverVariable14, solverVariable4, constraintAnchor.getMargin(), i33);
                                                    linearSystem.addEquality(solverVariable15, solverVariable6, -constraintAnchor2.getMargin(), i33);
                                                }
                                                if (z28) {
                                                    int margin = solverVariable == solverVariable4 ? constraintAnchor.getMargin() : 0;
                                                    if (solverVariable4 != solverVariable) {
                                                        linearSystem.addGreaterThan(solverVariable14, solverVariable, margin, 5);
                                                    }
                                                }
                                                if (z28 || !z22 || i12 != 0 || i23 != 0) {
                                                    i34 = 5;
                                                    i35 = 0;
                                                } else if (z22 && i32 == 3) {
                                                    i35 = 0;
                                                    linearSystem.addGreaterThan(solverVariable15, solverVariable14, 0, 8);
                                                    i34 = 5;
                                                } else {
                                                    i35 = 0;
                                                    i34 = 5;
                                                    linearSystem.addGreaterThan(solverVariable15, solverVariable14, 0, 5);
                                                }
                                            }
                                        }
                                        i33 = i31;
                                        if (z27) {
                                        }
                                        if (z28) {
                                        }
                                        if (z28) {
                                        }
                                        i34 = 5;
                                        i35 = 0;
                                    } else {
                                        solverVariable12 = solverVariable2;
                                        z26 = z30;
                                        z25 = z31;
                                        i31 = i40;
                                        i29 = i38;
                                        i30 = 6;
                                        if (z24) {
                                        }
                                        z27 = true;
                                        if (z25) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z24) {
                                        }
                                        if (z28) {
                                        }
                                        constraintWidget3 = constraintWidget;
                                        i33 = i31;
                                        if (z27) {
                                        }
                                        if (z28) {
                                        }
                                        if (z28) {
                                        }
                                        i34 = 5;
                                        i35 = 0;
                                    }
                                } else if (i18 == 2) {
                                    if (!(constraintWidget6 instanceof Barrier) && !(constraintWidget7 instanceof Barrier)) {
                                        solverVariable12 = solverVariable2;
                                        i30 = 6;
                                        i29 = 5;
                                        i31 = 5;
                                        z25 = true;
                                        z24 = true;
                                        z26 = false;
                                        if (z24) {
                                        }
                                        z27 = true;
                                        if (z25) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z24) {
                                        }
                                        if (z28) {
                                        }
                                        constraintWidget3 = constraintWidget;
                                        i33 = i31;
                                        if (z27) {
                                        }
                                        if (z28) {
                                        }
                                        if (z28) {
                                        }
                                        i34 = 5;
                                        i35 = 0;
                                    }
                                } else if (i18 == 1) {
                                    solverVariable12 = solverVariable2;
                                    i30 = 6;
                                    i29 = 8;
                                    i31 = 4;
                                    z25 = true;
                                    z24 = true;
                                    z26 = false;
                                    if (z24) {
                                    }
                                    z27 = true;
                                    if (z25) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z24) {
                                    }
                                    if (z28) {
                                    }
                                    constraintWidget3 = constraintWidget;
                                    i33 = i31;
                                    if (z27) {
                                    }
                                    if (z28) {
                                    }
                                    if (z28) {
                                    }
                                    i34 = 5;
                                    i35 = 0;
                                } else if (i18 == 3) {
                                    if (this.mResolvedDimensionRatioSide == -1) {
                                        if (z18) {
                                            solverVariable12 = solverVariable2;
                                            i30 = z11 ? 5 : 4;
                                        } else {
                                            solverVariable12 = solverVariable2;
                                            i30 = 8;
                                        }
                                        i29 = 8;
                                    } else if (z15) {
                                        if (i15 == 2 || i15 == 1) {
                                            i38 = 5;
                                            i39 = 4;
                                        } else {
                                            i38 = 8;
                                            i39 = 5;
                                        }
                                        solverVariable12 = solverVariable2;
                                        i31 = i39;
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                        i29 = i38;
                                        i30 = 6;
                                        if (z24) {
                                        }
                                        z27 = true;
                                        if (z25) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z24) {
                                        }
                                        if (z28) {
                                        }
                                        constraintWidget3 = constraintWidget;
                                        i33 = i31;
                                        if (z27) {
                                        }
                                        if (z28) {
                                        }
                                        if (z28) {
                                        }
                                        i34 = 5;
                                        i35 = 0;
                                    } else if (i21 > 0) {
                                        solverVariable12 = solverVariable2;
                                        i30 = 6;
                                        i29 = 5;
                                    } else {
                                        if (i21 != 0 || i23 != 0) {
                                            solverVariable12 = solverVariable2;
                                            i30 = 6;
                                            i29 = 5;
                                        } else if (z18) {
                                            solverVariable12 = solverVariable2;
                                            i29 = (constraintWidget6 == parent || constraintWidget7 == parent) ? 5 : 4;
                                            i30 = 6;
                                        } else {
                                            solverVariable12 = solverVariable2;
                                            i30 = 6;
                                            i29 = 5;
                                            i31 = 8;
                                            z25 = true;
                                            z24 = true;
                                            z26 = true;
                                            if (z24) {
                                            }
                                            z27 = true;
                                            if (z25) {
                                            }
                                            if (this.mVisibility != 8) {
                                            }
                                            if (z24) {
                                            }
                                            if (z28) {
                                            }
                                            constraintWidget3 = constraintWidget;
                                            i33 = i31;
                                            if (z27) {
                                            }
                                            if (z28) {
                                            }
                                            if (z28) {
                                            }
                                            i34 = 5;
                                            i35 = 0;
                                        }
                                        i31 = 4;
                                        z25 = true;
                                        z24 = true;
                                        z26 = true;
                                        if (z24) {
                                        }
                                        z27 = true;
                                        if (z25) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z24) {
                                        }
                                        if (z28) {
                                        }
                                        constraintWidget3 = constraintWidget;
                                        i33 = i31;
                                        if (z27) {
                                        }
                                        if (z28) {
                                        }
                                        if (z28) {
                                        }
                                        i34 = 5;
                                        i35 = 0;
                                    }
                                    i31 = 5;
                                    z25 = true;
                                    z24 = true;
                                    z26 = true;
                                    if (z24) {
                                    }
                                    z27 = true;
                                    if (z25) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z24) {
                                    }
                                    if (z28) {
                                    }
                                    constraintWidget3 = constraintWidget;
                                    i33 = i31;
                                    if (z27) {
                                    }
                                    if (z28) {
                                    }
                                    if (z28) {
                                    }
                                    i34 = 5;
                                    i35 = 0;
                                } else {
                                    solverVariable12 = solverVariable2;
                                    i30 = 6;
                                    i29 = 5;
                                    i31 = 4;
                                    z25 = false;
                                    z24 = false;
                                    z26 = false;
                                    if (z24) {
                                    }
                                    z27 = true;
                                    if (z25) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z24) {
                                    }
                                    if (z28) {
                                    }
                                    constraintWidget3 = constraintWidget;
                                    i33 = i31;
                                    if (z27) {
                                    }
                                    if (z28) {
                                    }
                                    if (z28) {
                                    }
                                    i34 = 5;
                                    i35 = 0;
                                }
                                i41 = i34;
                                if (z28 || !z23) {
                                    return;
                                }
                                if (constraintAnchor2.mTarget != null) {
                                    i42 = constraintAnchor2.getMargin();
                                    solverVariable16 = solverVariable2;
                                } else {
                                    solverVariable16 = solverVariable2;
                                    i42 = i35;
                                }
                                if (solverVariable6 != solverVariable16) {
                                    if (!this.OPTIMIZE_WRAP || !solverVariable15.isFinalValue || (constraintWidget5 = this.mParent) == null) {
                                        linearSystem.addGreaterThan(solverVariable16, solverVariable15, i42, i41);
                                        return;
                                    }
                                    ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget5;
                                    if (z10) {
                                        constraintWidgetContainer2.addHorizontalWrapMaxVariable(constraintAnchor2);
                                        return;
                                    } else {
                                        constraintWidgetContainer2.addVerticalWrapMaxVariable(constraintAnchor2);
                                        return;
                                    }
                                }
                                return;
                            }
                            if (solverVariable4.isFinalValue && solverVariable6.isFinalValue) {
                                linearSystem.addCentering(createObjectVariable3, solverVariable4, constraintAnchor.getMargin(), f10, solverVariable6, solverVariable5, constraintAnchor2.getMargin(), 8);
                                if (z11 && z23) {
                                    if (constraintAnchor2.mTarget != null) {
                                        i28 = constraintAnchor2.getMargin();
                                        solverVariable11 = solverVariable2;
                                    } else {
                                        solverVariable11 = solverVariable2;
                                        i28 = 0;
                                    }
                                    if (solverVariable6 != solverVariable11) {
                                        linearSystem.addGreaterThan(solverVariable11, solverVariable5, i28, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            solverVariable12 = solverVariable2;
                            i30 = 6;
                            i29 = 5;
                            i31 = 4;
                            z25 = true;
                            z24 = true;
                            z26 = false;
                            if (z24) {
                            }
                            z27 = true;
                            if (z25) {
                            }
                            if (this.mVisibility != 8) {
                            }
                            if (z24) {
                            }
                            if (z28) {
                            }
                            constraintWidget3 = constraintWidget;
                            i33 = i31;
                            if (z27) {
                            }
                            if (z28) {
                            }
                            if (z28) {
                            }
                            i34 = 5;
                            i35 = 0;
                            i41 = i34;
                            if (z28) {
                                return;
                            } else {
                                return;
                            }
                        }
                        i35 = 0;
                        solverVariable15 = solverVariable5;
                        i34 = 5;
                    } else {
                        z28 = z11;
                        i35 = 0;
                        i41 = (z11 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
                        solverVariable15 = solverVariable5;
                        if (z28) {
                        }
                    }
                    z28 = z11;
                    i41 = i34;
                    if (z28) {
                    }
                }
                if (i25 >= i26 && z11 && z23) {
                    linearSystem.addGreaterThan(solverVariable10, solverVariable7, i24, 8);
                    int i48 = (z10 || this.mBaseline.mTarget == null) ? 1 : i24;
                    if (z10 || (constraintAnchor3 = this.mBaseline.mTarget) == null) {
                        i27 = i48;
                    } else {
                        ConstraintWidget constraintWidget8 = constraintAnchor3.mOwner;
                        if (constraintWidget8.mDimensionRatio != 0.0f) {
                            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget8.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i24];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                i27 = 1;
                            }
                        }
                        i27 = i24;
                    }
                    if (i27 != 0) {
                        linearSystem.addGreaterThan(solverVariable8, solverVariable9, i24, 8);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        z21 = false;
        i19 = this.mWidthOverride;
        if (i19 == -1) {
        }
        i19 = i11;
        solverVariable3 = createObjectVariable6;
        i20 = this.mHeightOverride;
        if (i20 != -1) {
            this.mHeightOverride = -1;
            i19 = i20;
            z21 = false;
        }
        if (this.mVisibility == 8) {
        }
        if (z20) {
        }
        if (z21) {
        }
        if (z20) {
        }
        if (i25 >= i26) {
        }
    }

    private boolean isChainHead(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i11 = i10 * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i11];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return (constraintAnchor4 == null || constraintAnchor4.mTarget == constraintAnchor3 || (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i11 + 1]).mTarget) == null || constraintAnchor2.mTarget != constraintAnchor) ? false : true;
    }

    private void serializeAnchor(StringBuilder sb2, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append((Object) constraintAnchor.mTarget);
        sb2.append("',");
        sb2.append(constraintAnchor.mMargin);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(constraintAnchor.mGoneMargin);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(" ] ,\n");
    }

    private void serializeAttribute(StringBuilder sb2, String str, float f10, float f11) {
        if (f10 == f11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(f10);
        sb2.append(",\n");
    }

    private void serializeCircle(StringBuilder sb2, ConstraintAnchor constraintAnchor, float f10) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb2.append("circle : [ '");
        sb2.append((Object) constraintAnchor.mTarget);
        sb2.append("',");
        sb2.append(constraintAnchor.mMargin);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(f10);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(" ] ,\n");
    }

    private void serializeDimensionRatio(StringBuilder sb2, String str, float f10, int i10) {
        if (f10 == 0.0f) {
            return;
        }
        sb2.append(str);
        sb2.append(" :  [");
        sb2.append(f10);
        sb2.append(DocLint.SEPARATOR);
        sb2.append(i10);
        sb2.append("");
        sb2.append("],\n");
    }

    private void serializeSize(StringBuilder sb2, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11) {
        sb2.append(str);
        sb2.append(" :  {\n");
        serializeAttribute(sb2, XMLExporter.ATTRIBUTE_SIZE, i10, Integer.MIN_VALUE);
        serializeAttribute(sb2, "min", i11, 0);
        serializeAttribute(sb2, "max", i12, Integer.MAX_VALUE);
        serializeAttribute(sb2, "matchMin", i14, 0);
        serializeAttribute(sb2, "matchDef", i15, 0);
        serializeAttribute(sb2, "matchPercent", i15, 1);
        sb2.append("},\n");
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i10, boolean z10) {
        if (z10) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i10 == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i10, true);
            }
        }
    }

    public boolean addFirst() {
        return (this instanceof VirtualLayout) || (this instanceof Guideline);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0563  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x05dd  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04af  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        Metrics metrics;
        boolean z14;
        boolean z15;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        float f10;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z16;
        int i22;
        boolean z17;
        DimensionBehaviour dimensionBehaviour;
        boolean z18;
        int i23;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        DimensionBehaviour dimensionBehaviour2;
        DimensionBehaviour dimensionBehaviour3;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        boolean z23;
        int i24;
        int i25;
        int i26;
        ConstraintWidget constraintWidget3;
        LinearSystem linearSystem2;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        int i27;
        SolverVariable solverVariable9;
        SolverVariable solverVariable10;
        boolean z24;
        HorizontalWidgetRun horizontalWidgetRun;
        DependencyNode dependencyNode;
        int i28;
        int i29;
        boolean isInHorizontalChain;
        boolean isInVerticalChain;
        HorizontalWidgetRun horizontalWidgetRun2;
        VerticalWidgetRun verticalWidgetRun;
        DependencyNode dependencyNode2;
        boolean[] zArr;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget4 = this.mParent;
        if (constraintWidget4 != null) {
            boolean z25 = constraintWidget4 != null && constraintWidget4.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            boolean z26 = constraintWidget4 != null && constraintWidget4.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            int i30 = this.mWrapBehaviorInParent;
            if (i30 == 1) {
                z11 = z25;
                z12 = false;
            } else if (i30 == 2) {
                z12 = z26;
                z11 = false;
            } else if (i30 != 3) {
                z12 = z26;
                z11 = z25;
            }
            if (this.mVisibility == 8 && !this.mAnimated && !hasDependencies()) {
                zArr = this.mIsInBarrier;
                if (!zArr[0] && !zArr[1]) {
                    return;
                }
            }
            z13 = this.resolvedHorizontal;
            if (!z13 || this.resolvedVertical) {
                if (z13) {
                    linearSystem.addEquality(createObjectVariable, this.mX);
                    linearSystem.addEquality(createObjectVariable2, this.mX + this.mWidth);
                    if (z11 && (constraintWidget2 = this.mParent) != null) {
                        if (this.OPTIMIZE_WRAP_ON_RESOLVED) {
                            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                            constraintWidgetContainer.addHorizontalWrapMinVariable(this.mLeft);
                            constraintWidgetContainer.addHorizontalWrapMaxVariable(this.mRight);
                        } else {
                            linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget2.mRight), createObjectVariable2, 0, 5);
                        }
                    }
                }
                if (this.resolvedVertical) {
                    linearSystem.addEquality(createObjectVariable3, this.mY);
                    linearSystem.addEquality(createObjectVariable4, this.mY + this.mHeight);
                    if (this.mBaseline.hasDependents()) {
                        linearSystem.addEquality(createObjectVariable5, this.mY + this.mBaselineDistance);
                    }
                    if (z12 && (constraintWidget = this.mParent) != null) {
                        if (this.OPTIMIZE_WRAP_ON_RESOLVED) {
                            ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget;
                            constraintWidgetContainer2.addVerticalWrapMinVariable(this.mTop);
                            constraintWidgetContainer2.addVerticalWrapMaxVariable(this.mBottom);
                        } else {
                            linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget.mBottom), createObjectVariable4, 0, 5);
                        }
                    }
                }
                if (this.resolvedHorizontal && this.resolvedVertical) {
                    this.resolvedHorizontal = false;
                    this.resolvedVertical = false;
                    return;
                }
            }
            metrics = LinearSystem.sMetrics;
            if (metrics != null) {
                metrics.widgets++;
            }
            if (z10 && (horizontalWidgetRun2 = this.horizontalRun) != null && (verticalWidgetRun = this.verticalRun) != null) {
                dependencyNode2 = horizontalWidgetRun2.start;
                if (dependencyNode2.resolved && horizontalWidgetRun2.end.resolved && verticalWidgetRun.start.resolved && verticalWidgetRun.end.resolved) {
                    if (metrics != null) {
                        metrics.graphSolved++;
                    }
                    linearSystem.addEquality(createObjectVariable, dependencyNode2.value);
                    linearSystem.addEquality(createObjectVariable2, this.horizontalRun.end.value);
                    linearSystem.addEquality(createObjectVariable3, this.verticalRun.start.value);
                    linearSystem.addEquality(createObjectVariable4, this.verticalRun.end.value);
                    linearSystem.addEquality(createObjectVariable5, this.verticalRun.baseline.value);
                    if (this.mParent != null) {
                        if (z11 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                            linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 8);
                        }
                        if (z12 && this.isTerminalWidget[1] && !isInVerticalChain()) {
                            linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), createObjectVariable4, 0, 8);
                        }
                    }
                    this.resolvedHorizontal = false;
                    this.resolvedVertical = false;
                    return;
                }
            }
            if (metrics != null) {
                metrics.linearSolved++;
            }
            if (this.mParent == null) {
                if (isChainHead(0)) {
                    ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                    isInHorizontalChain = true;
                } else {
                    isInHorizontalChain = isInHorizontalChain();
                }
                if (isChainHead(1)) {
                    ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                    isInVerticalChain = true;
                } else {
                    isInVerticalChain = isInVerticalChain();
                }
                if (!isInHorizontalChain && z11 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 1);
                }
                if (!isInVerticalChain && z12 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), createObjectVariable4, 0, 1);
                }
                z15 = isInHorizontalChain;
                z14 = isInVerticalChain;
            } else {
                z14 = false;
                z15 = false;
            }
            i10 = this.mWidth;
            i11 = this.mMinWidth;
            if (i10 >= i11) {
                i11 = i10;
            }
            i12 = this.mHeight;
            i13 = this.mMinHeight;
            if (i12 >= i13) {
                i13 = i12;
            }
            DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
            DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
            DimensionBehaviour dimensionBehaviour5 = DimensionBehaviour.MATCH_CONSTRAINT;
            i14 = i11;
            boolean z27 = dimensionBehaviour4 == dimensionBehaviour5;
            DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            i15 = i13;
            boolean z28 = dimensionBehaviour6 == dimensionBehaviour5;
            int i31 = this.mDimensionRatioSide;
            this.mResolvedDimensionRatioSide = i31;
            f10 = this.mDimensionRatio;
            this.mResolvedDimensionRatio = f10;
            i16 = this.mMatchConstraintDefaultWidth;
            i17 = this.mMatchConstraintDefaultHeight;
            if (f10 <= 0.0f && this.mVisibility != 8) {
                if (dimensionBehaviour4 == dimensionBehaviour5 && i16 == 0) {
                    i16 = 3;
                }
                if (dimensionBehaviour6 == dimensionBehaviour5 && i17 == 0) {
                    i17 = 3;
                }
                if (dimensionBehaviour4 == dimensionBehaviour5 && dimensionBehaviour6 == dimensionBehaviour5) {
                    i29 = 3;
                    if (i16 == 3 && i17 == 3) {
                        setupDimensionRatio(z11, z12, z27, z28);
                        i18 = i16;
                        i19 = i17;
                        i20 = i14;
                        i21 = i15;
                        z16 = true;
                        int[] iArr = this.mResolvedMatchConstraintDefault;
                        iArr[0] = i18;
                        iArr[1] = i19;
                        this.mResolvedHasRatio = z16;
                        if (z16) {
                            int i32 = this.mResolvedDimensionRatioSide;
                            i22 = -1;
                            if (i32 == 0 || i32 == -1) {
                                z17 = true;
                                boolean z29 = !z16 && ((i28 = this.mResolvedDimensionRatioSide) == 1 || i28 == i22);
                                DimensionBehaviour dimensionBehaviour7 = this.mListDimensionBehaviors[0];
                                dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                                z18 = dimensionBehaviour7 != dimensionBehaviour && (this instanceof ConstraintWidgetContainer);
                                i23 = !z18 ? 0 : i20;
                                z19 = !this.mCenter.isConnected();
                                boolean[] zArr2 = this.mIsInBarrier;
                                z20 = zArr2[0];
                                boolean z30 = zArr2[1];
                                if (this.mHorizontalResolution != 2 && !this.resolvedHorizontal) {
                                    if (z10 && (horizontalWidgetRun = this.horizontalRun) != null) {
                                        dependencyNode = horizontalWidgetRun.start;
                                        if (dependencyNode.resolved && horizontalWidgetRun.end.resolved) {
                                            if (!z10) {
                                                linearSystem.addEquality(createObjectVariable, dependencyNode.value);
                                                linearSystem.addEquality(createObjectVariable2, this.horizontalRun.end.value);
                                                if (this.mParent != null && z11 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 8);
                                                }
                                                z21 = z11;
                                                z22 = z12;
                                                dimensionBehaviour2 = dimensionBehaviour5;
                                                dimensionBehaviour3 = dimensionBehaviour;
                                                z23 = z16;
                                                solverVariable = createObjectVariable5;
                                                solverVariable2 = createObjectVariable4;
                                                solverVariable3 = createObjectVariable3;
                                                solverVariable4 = createObjectVariable2;
                                                solverVariable5 = createObjectVariable;
                                                if (z10) {
                                                    constraintWidget3 = this;
                                                    VerticalWidgetRun verticalWidgetRun2 = constraintWidget3.verticalRun;
                                                    if (verticalWidgetRun2 != null) {
                                                        DependencyNode dependencyNode3 = verticalWidgetRun2.start;
                                                        if (dependencyNode3.resolved && verticalWidgetRun2.end.resolved) {
                                                            linearSystem2 = linearSystem;
                                                            solverVariable8 = solverVariable3;
                                                            linearSystem2.addEquality(solverVariable8, dependencyNode3.value);
                                                            solverVariable7 = solverVariable2;
                                                            linearSystem2.addEquality(solverVariable7, constraintWidget3.verticalRun.end.value);
                                                            solverVariable6 = solverVariable;
                                                            linearSystem2.addEquality(solverVariable6, constraintWidget3.verticalRun.baseline.value);
                                                            ConstraintWidget constraintWidget5 = constraintWidget3.mParent;
                                                            if (constraintWidget5 == null || z14 || !z22) {
                                                                i24 = 8;
                                                                i25 = 0;
                                                                i26 = 1;
                                                            } else {
                                                                i26 = 1;
                                                                if (constraintWidget3.isTerminalWidget[1]) {
                                                                    i24 = 8;
                                                                    i25 = 0;
                                                                    linearSystem2.addGreaterThan(linearSystem2.createObjectVariable(constraintWidget5.mBottom), solverVariable7, 0, 8);
                                                                } else {
                                                                    i24 = 8;
                                                                    i25 = 0;
                                                                }
                                                            }
                                                            i27 = i25;
                                                            if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0 || constraintWidget3.resolvedVertical) {
                                                                solverVariable9 = solverVariable7;
                                                                solverVariable10 = solverVariable8;
                                                            } else {
                                                                boolean z31 = (constraintWidget3.mListDimensionBehaviors[i26] == dimensionBehaviour3 && (constraintWidget3 instanceof ConstraintWidgetContainer)) ? i26 : i25;
                                                                if (z31) {
                                                                    i21 = i25;
                                                                }
                                                                ConstraintWidget constraintWidget6 = constraintWidget3.mParent;
                                                                SolverVariable createObjectVariable6 = constraintWidget6 != null ? linearSystem2.createObjectVariable(constraintWidget6.mBottom) : null;
                                                                ConstraintWidget constraintWidget7 = constraintWidget3.mParent;
                                                                SolverVariable createObjectVariable7 = constraintWidget7 != null ? linearSystem2.createObjectVariable(constraintWidget7.mTop) : null;
                                                                if (constraintWidget3.mBaselineDistance > 0 || constraintWidget3.mVisibility == i24) {
                                                                    ConstraintAnchor constraintAnchor = constraintWidget3.mBaseline;
                                                                    if (constraintAnchor.mTarget != null) {
                                                                        linearSystem2.addEquality(solverVariable6, solverVariable8, getBaselineDistance(), i24);
                                                                        linearSystem2.addEquality(solverVariable6, linearSystem2.createObjectVariable(constraintWidget3.mBaseline.mTarget), constraintWidget3.mBaseline.getMargin(), i24);
                                                                        if (z22) {
                                                                            linearSystem2.addGreaterThan(createObjectVariable6, linearSystem2.createObjectVariable(constraintWidget3.mBottom), i25, 5);
                                                                        }
                                                                        z24 = i25;
                                                                        boolean z32 = constraintWidget3.isTerminalWidget[i26];
                                                                        DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget3.mListDimensionBehaviors;
                                                                        solverVariable9 = solverVariable7;
                                                                        solverVariable10 = solverVariable8;
                                                                        applyConstraints(linearSystem, false, z22, z21, z32, createObjectVariable7, createObjectVariable6, dimensionBehaviourArr2[i26], z31, constraintWidget3.mTop, constraintWidget3.mBottom, constraintWidget3.mY, i21, constraintWidget3.mMinHeight, constraintWidget3.mMaxDimension[i26], constraintWidget3.mVerticalBiasPercent, z29, dimensionBehaviourArr2[0] != dimensionBehaviour2, z14, z15, z30, i19, i18, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight, constraintWidget3.mMatchConstraintPercentHeight, z24);
                                                                    } else if (constraintWidget3.mVisibility == i24) {
                                                                        linearSystem2.addEquality(solverVariable6, solverVariable8, constraintAnchor.getMargin(), i24);
                                                                    } else {
                                                                        linearSystem2.addEquality(solverVariable6, solverVariable8, getBaselineDistance(), i24);
                                                                    }
                                                                }
                                                                z24 = z19;
                                                                boolean z322 = constraintWidget3.isTerminalWidget[i26];
                                                                DimensionBehaviour[] dimensionBehaviourArr22 = constraintWidget3.mListDimensionBehaviors;
                                                                solverVariable9 = solverVariable7;
                                                                solverVariable10 = solverVariable8;
                                                                applyConstraints(linearSystem, false, z22, z21, z322, createObjectVariable7, createObjectVariable6, dimensionBehaviourArr22[i26], z31, constraintWidget3.mTop, constraintWidget3.mBottom, constraintWidget3.mY, i21, constraintWidget3.mMinHeight, constraintWidget3.mMaxDimension[i26], constraintWidget3.mVerticalBiasPercent, z29, dimensionBehaviourArr22[0] != dimensionBehaviour2, z14, z15, z30, i19, i18, constraintWidget3.mMatchConstraintMinHeight, constraintWidget3.mMatchConstraintMaxHeight, constraintWidget3.mMatchConstraintPercentHeight, z24);
                                                            }
                                                            if (z23) {
                                                                if (this.mResolvedDimensionRatioSide == 1) {
                                                                    linearSystem.addRatio(solverVariable9, solverVariable10, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                                                                } else {
                                                                    linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable9, solverVariable10, this.mResolvedDimensionRatio, 8);
                                                                }
                                                            }
                                                            if (this.mCenter.isConnected()) {
                                                                linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                                                            }
                                                            this.resolvedHorizontal = false;
                                                            this.resolvedVertical = false;
                                                        }
                                                    }
                                                    linearSystem2 = linearSystem;
                                                    solverVariable6 = solverVariable;
                                                    solverVariable7 = solverVariable2;
                                                    solverVariable8 = solverVariable3;
                                                    i24 = 8;
                                                    i25 = 0;
                                                    i26 = 1;
                                                } else {
                                                    i24 = 8;
                                                    i25 = 0;
                                                    i26 = 1;
                                                    constraintWidget3 = this;
                                                    linearSystem2 = linearSystem;
                                                    solverVariable6 = solverVariable;
                                                    solverVariable7 = solverVariable2;
                                                    solverVariable8 = solverVariable3;
                                                }
                                                i27 = i26;
                                                if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                                                }
                                                solverVariable9 = solverVariable7;
                                                solverVariable10 = solverVariable8;
                                                if (z23) {
                                                }
                                                if (this.mCenter.isConnected()) {
                                                }
                                                this.resolvedHorizontal = false;
                                                this.resolvedVertical = false;
                                            }
                                        }
                                    }
                                    ConstraintWidget constraintWidget8 = this.mParent;
                                    SolverVariable createObjectVariable8 = constraintWidget8 == null ? linearSystem.createObjectVariable(constraintWidget8.mRight) : null;
                                    ConstraintWidget constraintWidget9 = this.mParent;
                                    SolverVariable createObjectVariable9 = constraintWidget9 == null ? linearSystem.createObjectVariable(constraintWidget9.mLeft) : null;
                                    boolean z33 = this.isTerminalWidget[0];
                                    DimensionBehaviour[] dimensionBehaviourArr3 = this.mListDimensionBehaviors;
                                    z21 = z11;
                                    z22 = z12;
                                    dimensionBehaviour2 = dimensionBehaviour5;
                                    solverVariable = createObjectVariable5;
                                    solverVariable2 = createObjectVariable4;
                                    solverVariable3 = createObjectVariable3;
                                    solverVariable4 = createObjectVariable2;
                                    dimensionBehaviour3 = dimensionBehaviour;
                                    solverVariable5 = createObjectVariable;
                                    z23 = z16;
                                    applyConstraints(linearSystem, true, z11, z12, z33, createObjectVariable9, createObjectVariable8, dimensionBehaviourArr3[0], z18, this.mLeft, this.mRight, this.mX, i23, this.mMinWidth, this.mMaxDimension[0], this.mHorizontalBiasPercent, z17, dimensionBehaviourArr3[1] != dimensionBehaviour5, z15, z14, z20, i18, i19, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z19);
                                    if (z10) {
                                    }
                                    i27 = i26;
                                    if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                                    }
                                    solverVariable9 = solverVariable7;
                                    solverVariable10 = solverVariable8;
                                    if (z23) {
                                    }
                                    if (this.mCenter.isConnected()) {
                                    }
                                    this.resolvedHorizontal = false;
                                    this.resolvedVertical = false;
                                }
                                z21 = z11;
                                z22 = z12;
                                dimensionBehaviour2 = dimensionBehaviour5;
                                dimensionBehaviour3 = dimensionBehaviour;
                                solverVariable = createObjectVariable5;
                                solverVariable2 = createObjectVariable4;
                                solverVariable3 = createObjectVariable3;
                                solverVariable4 = createObjectVariable2;
                                solverVariable5 = createObjectVariable;
                                z23 = z16;
                                if (z10) {
                                }
                                i27 = i26;
                                if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                                }
                                solverVariable9 = solverVariable7;
                                solverVariable10 = solverVariable8;
                                if (z23) {
                                }
                                if (this.mCenter.isConnected()) {
                                }
                                this.resolvedHorizontal = false;
                                this.resolvedVertical = false;
                            }
                        } else {
                            i22 = -1;
                        }
                        z17 = false;
                        if (z16) {
                        }
                        DimensionBehaviour dimensionBehaviour72 = this.mListDimensionBehaviors[0];
                        dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour72 != dimensionBehaviour) {
                        }
                        if (!z18) {
                        }
                        z19 = !this.mCenter.isConnected();
                        boolean[] zArr22 = this.mIsInBarrier;
                        z20 = zArr22[0];
                        boolean z302 = zArr22[1];
                        if (this.mHorizontalResolution != 2) {
                            if (z10) {
                                dependencyNode = horizontalWidgetRun.start;
                                if (dependencyNode.resolved) {
                                    if (!z10) {
                                    }
                                }
                            }
                            ConstraintWidget constraintWidget82 = this.mParent;
                            if (constraintWidget82 == null) {
                            }
                            ConstraintWidget constraintWidget92 = this.mParent;
                            if (constraintWidget92 == null) {
                            }
                            boolean z332 = this.isTerminalWidget[0];
                            DimensionBehaviour[] dimensionBehaviourArr32 = this.mListDimensionBehaviors;
                            z21 = z11;
                            z22 = z12;
                            dimensionBehaviour2 = dimensionBehaviour5;
                            solverVariable = createObjectVariable5;
                            solverVariable2 = createObjectVariable4;
                            solverVariable3 = createObjectVariable3;
                            solverVariable4 = createObjectVariable2;
                            dimensionBehaviour3 = dimensionBehaviour;
                            solverVariable5 = createObjectVariable;
                            z23 = z16;
                            applyConstraints(linearSystem, true, z11, z12, z332, createObjectVariable9, createObjectVariable8, dimensionBehaviourArr32[0], z18, this.mLeft, this.mRight, this.mX, i23, this.mMinWidth, this.mMaxDimension[0], this.mHorizontalBiasPercent, z17, dimensionBehaviourArr32[1] != dimensionBehaviour5, z15, z14, z20, i18, i19, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z19);
                            if (z10) {
                            }
                            i27 = i26;
                            if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                            }
                            solverVariable9 = solverVariable7;
                            solverVariable10 = solverVariable8;
                            if (z23) {
                            }
                            if (this.mCenter.isConnected()) {
                            }
                            this.resolvedHorizontal = false;
                            this.resolvedVertical = false;
                        }
                        z21 = z11;
                        z22 = z12;
                        dimensionBehaviour2 = dimensionBehaviour5;
                        dimensionBehaviour3 = dimensionBehaviour;
                        solverVariable = createObjectVariable5;
                        solverVariable2 = createObjectVariable4;
                        solverVariable3 = createObjectVariable3;
                        solverVariable4 = createObjectVariable2;
                        solverVariable5 = createObjectVariable;
                        z23 = z16;
                        if (z10) {
                        }
                        i27 = i26;
                        if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                        }
                        solverVariable9 = solverVariable7;
                        solverVariable10 = solverVariable8;
                        if (z23) {
                        }
                        if (this.mCenter.isConnected()) {
                        }
                        this.resolvedHorizontal = false;
                        this.resolvedVertical = false;
                    }
                } else {
                    i29 = 3;
                }
                if (dimensionBehaviour4 == dimensionBehaviour5 && i16 == i29) {
                    this.mResolvedDimensionRatioSide = 0;
                    int i33 = (int) (f10 * i12);
                    if (dimensionBehaviour6 != dimensionBehaviour5) {
                        i18 = 4;
                        i19 = i17;
                        i21 = i15;
                        z16 = false;
                        i20 = i33;
                        int[] iArr2 = this.mResolvedMatchConstraintDefault;
                        iArr2[0] = i18;
                        iArr2[1] = i19;
                        this.mResolvedHasRatio = z16;
                        if (z16) {
                        }
                        z17 = false;
                        if (z16) {
                        }
                        DimensionBehaviour dimensionBehaviour722 = this.mListDimensionBehaviors[0];
                        dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour722 != dimensionBehaviour) {
                        }
                        if (!z18) {
                        }
                        z19 = !this.mCenter.isConnected();
                        boolean[] zArr222 = this.mIsInBarrier;
                        z20 = zArr222[0];
                        boolean z3022 = zArr222[1];
                        if (this.mHorizontalResolution != 2) {
                        }
                        z21 = z11;
                        z22 = z12;
                        dimensionBehaviour2 = dimensionBehaviour5;
                        dimensionBehaviour3 = dimensionBehaviour;
                        solverVariable = createObjectVariable5;
                        solverVariable2 = createObjectVariable4;
                        solverVariable3 = createObjectVariable3;
                        solverVariable4 = createObjectVariable2;
                        solverVariable5 = createObjectVariable;
                        z23 = z16;
                        if (z10) {
                        }
                        i27 = i26;
                        if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                        }
                        solverVariable9 = solverVariable7;
                        solverVariable10 = solverVariable8;
                        if (z23) {
                        }
                        if (this.mCenter.isConnected()) {
                        }
                        this.resolvedHorizontal = false;
                        this.resolvedVertical = false;
                    }
                    i20 = i33;
                    i18 = i16;
                    i19 = i17;
                    i21 = i15;
                    z16 = true;
                    int[] iArr22 = this.mResolvedMatchConstraintDefault;
                    iArr22[0] = i18;
                    iArr22[1] = i19;
                    this.mResolvedHasRatio = z16;
                    if (z16) {
                    }
                    z17 = false;
                    if (z16) {
                    }
                    DimensionBehaviour dimensionBehaviour7222 = this.mListDimensionBehaviors[0];
                    dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                    if (dimensionBehaviour7222 != dimensionBehaviour) {
                    }
                    if (!z18) {
                    }
                    z19 = !this.mCenter.isConnected();
                    boolean[] zArr2222 = this.mIsInBarrier;
                    z20 = zArr2222[0];
                    boolean z30222 = zArr2222[1];
                    if (this.mHorizontalResolution != 2) {
                    }
                    z21 = z11;
                    z22 = z12;
                    dimensionBehaviour2 = dimensionBehaviour5;
                    dimensionBehaviour3 = dimensionBehaviour;
                    solverVariable = createObjectVariable5;
                    solverVariable2 = createObjectVariable4;
                    solverVariable3 = createObjectVariable3;
                    solverVariable4 = createObjectVariable2;
                    solverVariable5 = createObjectVariable;
                    z23 = z16;
                    if (z10) {
                    }
                    i27 = i26;
                    if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                    }
                    solverVariable9 = solverVariable7;
                    solverVariable10 = solverVariable8;
                    if (z23) {
                    }
                    if (this.mCenter.isConnected()) {
                    }
                    this.resolvedHorizontal = false;
                    this.resolvedVertical = false;
                }
                if (dimensionBehaviour6 == dimensionBehaviour5 && i17 == i29) {
                    this.mResolvedDimensionRatioSide = 1;
                    if (i31 == -1) {
                        this.mResolvedDimensionRatio = 1.0f / f10;
                    }
                    int i34 = (int) (this.mResolvedDimensionRatio * i10);
                    if (dimensionBehaviour4 == dimensionBehaviour5) {
                        i21 = i34;
                        i18 = i16;
                        i19 = i17;
                        i20 = i14;
                        z16 = true;
                        int[] iArr222 = this.mResolvedMatchConstraintDefault;
                        iArr222[0] = i18;
                        iArr222[1] = i19;
                        this.mResolvedHasRatio = z16;
                        if (z16) {
                        }
                        z17 = false;
                        if (z16) {
                        }
                        DimensionBehaviour dimensionBehaviour72222 = this.mListDimensionBehaviors[0];
                        dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour72222 != dimensionBehaviour) {
                        }
                        if (!z18) {
                        }
                        z19 = !this.mCenter.isConnected();
                        boolean[] zArr22222 = this.mIsInBarrier;
                        z20 = zArr22222[0];
                        boolean z302222 = zArr22222[1];
                        if (this.mHorizontalResolution != 2) {
                        }
                        z21 = z11;
                        z22 = z12;
                        dimensionBehaviour2 = dimensionBehaviour5;
                        dimensionBehaviour3 = dimensionBehaviour;
                        solverVariable = createObjectVariable5;
                        solverVariable2 = createObjectVariable4;
                        solverVariable3 = createObjectVariable3;
                        solverVariable4 = createObjectVariable2;
                        solverVariable5 = createObjectVariable;
                        z23 = z16;
                        if (z10) {
                        }
                        i27 = i26;
                        if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                        }
                        solverVariable9 = solverVariable7;
                        solverVariable10 = solverVariable8;
                        if (z23) {
                        }
                        if (this.mCenter.isConnected()) {
                        }
                        this.resolvedHorizontal = false;
                        this.resolvedVertical = false;
                    }
                    i19 = 4;
                    i21 = i34;
                    i18 = i16;
                    i20 = i14;
                }
                i18 = i16;
                i19 = i17;
                i20 = i14;
                i21 = i15;
                z16 = true;
                int[] iArr2222 = this.mResolvedMatchConstraintDefault;
                iArr2222[0] = i18;
                iArr2222[1] = i19;
                this.mResolvedHasRatio = z16;
                if (z16) {
                }
                z17 = false;
                if (z16) {
                }
                DimensionBehaviour dimensionBehaviour722222 = this.mListDimensionBehaviors[0];
                dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour722222 != dimensionBehaviour) {
                }
                if (!z18) {
                }
                z19 = !this.mCenter.isConnected();
                boolean[] zArr222222 = this.mIsInBarrier;
                z20 = zArr222222[0];
                boolean z3022222 = zArr222222[1];
                if (this.mHorizontalResolution != 2) {
                }
                z21 = z11;
                z22 = z12;
                dimensionBehaviour2 = dimensionBehaviour5;
                dimensionBehaviour3 = dimensionBehaviour;
                solverVariable = createObjectVariable5;
                solverVariable2 = createObjectVariable4;
                solverVariable3 = createObjectVariable3;
                solverVariable4 = createObjectVariable2;
                solverVariable5 = createObjectVariable;
                z23 = z16;
                if (z10) {
                }
                i27 = i26;
                if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
                }
                solverVariable9 = solverVariable7;
                solverVariable10 = solverVariable8;
                if (z23) {
                }
                if (this.mCenter.isConnected()) {
                }
                this.resolvedHorizontal = false;
                this.resolvedVertical = false;
            }
            i18 = i16;
            i19 = i17;
            i20 = i14;
            i21 = i15;
            z16 = false;
            int[] iArr22222 = this.mResolvedMatchConstraintDefault;
            iArr22222[0] = i18;
            iArr22222[1] = i19;
            this.mResolvedHasRatio = z16;
            if (z16) {
            }
            z17 = false;
            if (z16) {
            }
            DimensionBehaviour dimensionBehaviour7222222 = this.mListDimensionBehaviors[0];
            dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
            if (dimensionBehaviour7222222 != dimensionBehaviour) {
            }
            if (!z18) {
            }
            z19 = !this.mCenter.isConnected();
            boolean[] zArr2222222 = this.mIsInBarrier;
            z20 = zArr2222222[0];
            boolean z30222222 = zArr2222222[1];
            if (this.mHorizontalResolution != 2) {
            }
            z21 = z11;
            z22 = z12;
            dimensionBehaviour2 = dimensionBehaviour5;
            dimensionBehaviour3 = dimensionBehaviour;
            solverVariable = createObjectVariable5;
            solverVariable2 = createObjectVariable4;
            solverVariable3 = createObjectVariable3;
            solverVariable4 = createObjectVariable2;
            solverVariable5 = createObjectVariable;
            z23 = z16;
            if (z10) {
            }
            i27 = i26;
            if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
            }
            solverVariable9 = solverVariable7;
            solverVariable10 = solverVariable8;
            if (z23) {
            }
            if (this.mCenter.isConnected()) {
            }
            this.resolvedHorizontal = false;
            this.resolvedVertical = false;
        }
        z11 = false;
        z12 = false;
        if (this.mVisibility == 8) {
            zArr = this.mIsInBarrier;
            if (!zArr[0]) {
                return;
            }
        }
        z13 = this.resolvedHorizontal;
        if (!z13) {
        }
        if (z13) {
        }
        if (this.resolvedVertical) {
        }
        if (this.resolvedHorizontal) {
            this.resolvedHorizontal = false;
            this.resolvedVertical = false;
            return;
        }
        metrics = LinearSystem.sMetrics;
        if (metrics != null) {
        }
        if (z10) {
            dependencyNode2 = horizontalWidgetRun2.start;
            if (dependencyNode2.resolved) {
                if (metrics != null) {
                }
                linearSystem.addEquality(createObjectVariable, dependencyNode2.value);
                linearSystem.addEquality(createObjectVariable2, this.horizontalRun.end.value);
                linearSystem.addEquality(createObjectVariable3, this.verticalRun.start.value);
                linearSystem.addEquality(createObjectVariable4, this.verticalRun.end.value);
                linearSystem.addEquality(createObjectVariable5, this.verticalRun.baseline.value);
                if (this.mParent != null) {
                }
                this.resolvedHorizontal = false;
                this.resolvedVertical = false;
                return;
            }
        }
        if (metrics != null) {
        }
        if (this.mParent == null) {
        }
        i10 = this.mWidth;
        i11 = this.mMinWidth;
        if (i10 >= i11) {
        }
        i12 = this.mHeight;
        i13 = this.mMinHeight;
        if (i12 >= i13) {
        }
        DimensionBehaviour[] dimensionBehaviourArr4 = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour42 = dimensionBehaviourArr4[0];
        DimensionBehaviour dimensionBehaviour52 = DimensionBehaviour.MATCH_CONSTRAINT;
        i14 = i11;
        if (dimensionBehaviour42 == dimensionBehaviour52) {
        }
        DimensionBehaviour dimensionBehaviour62 = dimensionBehaviourArr4[1];
        i15 = i13;
        if (dimensionBehaviour62 == dimensionBehaviour52) {
        }
        int i312 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i312;
        f10 = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f10;
        i16 = this.mMatchConstraintDefaultWidth;
        i17 = this.mMatchConstraintDefaultHeight;
        if (f10 <= 0.0f) {
        }
        i18 = i16;
        i19 = i17;
        i20 = i14;
        i21 = i15;
        z16 = false;
        int[] iArr222222 = this.mResolvedMatchConstraintDefault;
        iArr222222[0] = i18;
        iArr222222[1] = i19;
        this.mResolvedHasRatio = z16;
        if (z16) {
        }
        z17 = false;
        if (z16) {
        }
        DimensionBehaviour dimensionBehaviour72222222 = this.mListDimensionBehaviors[0];
        dimensionBehaviour = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour72222222 != dimensionBehaviour) {
        }
        if (!z18) {
        }
        z19 = !this.mCenter.isConnected();
        boolean[] zArr22222222 = this.mIsInBarrier;
        z20 = zArr22222222[0];
        boolean z302222222 = zArr22222222[1];
        if (this.mHorizontalResolution != 2) {
        }
        z21 = z11;
        z22 = z12;
        dimensionBehaviour2 = dimensionBehaviour52;
        dimensionBehaviour3 = dimensionBehaviour;
        solverVariable = createObjectVariable5;
        solverVariable2 = createObjectVariable4;
        solverVariable3 = createObjectVariable3;
        solverVariable4 = createObjectVariable2;
        solverVariable5 = createObjectVariable;
        z23 = z16;
        if (z10) {
        }
        i27 = i26;
        if ((constraintWidget3.mVerticalResolution != 2 ? i25 : i27) != 0) {
        }
        solverVariable9 = solverVariable7;
        solverVariable10 = solverVariable8;
        if (z23) {
        }
        if (this.mCenter.isConnected()) {
        }
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i10);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f10, int i10) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i10, 0);
        this.mCircleConstraintAngle = f10;
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
        this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
        int[] iArr3 = constraintWidget.mMaxDimension;
        this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
        this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
        this.hasBaseline = constraintWidget.hasBaseline;
        this.inPlaceholder = constraintWidget.inPlaceholder;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        this.mParent = this.mParent == null ? null : hashMap.get(constraintWidget.mParent);
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
        this.mRelX = constraintWidget.mRelX;
        this.mRelY = constraintWidget.mRelY;
        this.mOffsetX = constraintWidget.mOffsetX;
        this.mOffsetY = constraintWidget.mOffsetY;
        this.mBaselineDistance = constraintWidget.mBaselineDistance;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
        this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
        this.mCompanionWidget = constraintWidget.mCompanionWidget;
        this.mContainerItemSkip = constraintWidget.mContainerItemSkip;
        this.mVisibility = constraintWidget.mVisibility;
        this.mAnimated = constraintWidget.mAnimated;
        this.mDebugName = constraintWidget.mDebugName;
        this.mType = constraintWidget.mType;
        this.mDistToTop = constraintWidget.mDistToTop;
        this.mDistToLeft = constraintWidget.mDistToLeft;
        this.mDistToRight = constraintWidget.mDistToRight;
        this.mDistToBottom = constraintWidget.mDistToBottom;
        this.mLeftHasCentered = constraintWidget.mLeftHasCentered;
        this.mRightHasCentered = constraintWidget.mRightHasCentered;
        this.mTopHasCentered = constraintWidget.mTopHasCentered;
        this.mBottomHasCentered = constraintWidget.mBottomHasCentered;
        this.mHorizontalWrapVisited = constraintWidget.mHorizontalWrapVisited;
        this.mVerticalWrapVisited = constraintWidget.mVerticalWrapVisited;
        this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
        this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
        this.mHorizontalChainFixedPosition = constraintWidget.mHorizontalChainFixedPosition;
        this.mVerticalChainFixedPosition = constraintWidget.mVerticalChainFixedPosition;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget2 = constraintWidget.mHorizontalNextWidget;
        this.mHorizontalNextWidget = constraintWidget2 == null ? null : hashMap.get(constraintWidget2);
        ConstraintWidget constraintWidget3 = constraintWidget.mVerticalNextWidget;
        this.mVerticalNextWidget = constraintWidget3 != null ? hashMap.get(constraintWidget3) : null;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public void ensureMeasureRequested() {
        this.mMeasureRequested = true;
    }

    public void ensureWidgetRuns() {
        if (this.horizontalRun == null) {
            this.horizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.verticalRun == null) {
            this.verticalRun = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return null;
            default:
                throw new AssertionError((Object) type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public float getBiasPercent(int i10) {
        if (i10 == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i10 == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public DimensionBehaviour getDimensionBehaviour(int i10) {
        if (i10 == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i10 == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public boolean getHasBaseline() {
        return this.hasBaseline;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getHorizontalMargin() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        int i10 = constraintAnchor != null ? constraintAnchor.mMargin : 0;
        ConstraintAnchor constraintAnchor2 = this.mRight;
        return constraintAnchor2 != null ? i10 + constraintAnchor2.mMargin : i10;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.mLastHorizontalMeasureSpec;
    }

    public int getLastVerticalMeasureSpec() {
        return this.mLastVerticalMeasureSpec;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i10) {
        if (i10 == 0) {
            return getWidth();
        }
        if (i10 == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public ConstraintWidget getNextChainMember(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getOptimizerWrapHeight() {
        int i10;
        int i11 = this.mHeight;
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i11;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            i10 = Math.max(this.mMatchConstraintMinHeight, i11);
        } else {
            i10 = this.mMatchConstraintMinHeight;
            if (i10 > 0) {
                this.mHeight = i10;
            } else {
                i10 = 0;
            }
        }
        int i12 = this.mMatchConstraintMaxHeight;
        return (i12 <= 0 || i12 >= i10) ? i10 : i12;
    }

    public int getOptimizerWrapWidth() {
        int i10;
        int i11 = this.mWidth;
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i11;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            i10 = Math.max(this.mMatchConstraintMinWidth, i11);
        } else {
            i10 = this.mMatchConstraintMinWidth;
            if (i10 > 0) {
                this.mWidth = i10;
            } else {
                i10 = 0;
            }
        }
        int i12 = this.mMatchConstraintMaxWidth;
        return (i12 <= 0 || i12 >= i10) ? i10 : i12;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public ConstraintWidget getPreviousChainMember(int i10) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 != 0) {
            if (i10 == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
                return constraintAnchor2.mOwner;
            }
            return null;
        }
        ConstraintAnchor constraintAnchor3 = this.mLeft;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mTarget != constraintAnchor3) {
            return null;
        }
        return constraintAnchor4.mOwner;
    }

    public int getRelativePositioning(int i10) {
        if (i10 == 0) {
            return this.mRelX;
        }
        if (i10 == 1) {
            return this.mRelY;
        }
        return 0;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getRootX() {
        return this.mX + this.mOffsetX;
    }

    public int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public WidgetRun getRun(int i10) {
        if (i10 == 0) {
            return this.horizontalRun;
        }
        if (i10 == 1) {
            return this.verticalRun;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb2) {
        sb2.append(GlideException.a.f59088e + this.stringId + ":{\n");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("    actualWidth:");
        sb3.append(this.mWidth);
        sb2.append(sb3.toString());
        sb2.append("\n");
        sb2.append("    actualHeight:" + this.mHeight);
        sb2.append("\n");
        sb2.append("    actualLeft:" + this.mX);
        sb2.append("\n");
        sb2.append("    actualTop:" + this.mY);
        sb2.append("\n");
        getSceneString(sb2, m.f88234c, this.mLeft);
        getSceneString(sb2, "top", this.mTop);
        getSceneString(sb2, "right", this.mRight);
        getSceneString(sb2, "bottom", this.mBottom);
        getSceneString(sb2, "baseline", this.mBaseline);
        getSceneString(sb2, "centerX", this.mCenterX);
        getSceneString(sb2, "centerY", this.mCenterY);
        getSceneString(sb2, "    width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        getSceneString(sb2, "    height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        serializeDimensionRatio(sb2, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb2, "    horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb2, "    verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb2, "    horizontalChainStyle", this.mHorizontalChainStyle, 0);
        serializeAttribute(sb2, "    verticalChainStyle", this.mVerticalChainStyle, 0);
        sb2.append("  }");
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.mType;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            ConstraintAnchor target = anchor == null ? null : anchor.getTarget();
            ConstraintWidget owner = target == null ? null : target.getOwner();
            if (owner == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor target2 = owner == null ? null : owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            if (target2 == null || target2.getOwner() == constraintWidget) {
                constraintWidget = owner;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVerticalMargin() {
        int i10 = this.mLeft != null ? this.mTop.mMargin : 0;
        return this.mRight != null ? i10 + this.mBottom.mMargin : i10;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapBehaviorInParent() {
        return this.mWrapBehaviorInParent;
    }

    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mX : ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
    }

    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        return (constraintWidget == null || !(constraintWidget instanceof ConstraintWidgetContainer)) ? this.mY : ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
    }

    public boolean hasBaseline() {
        return this.hasBaseline;
    }

    public boolean hasDanglingDimension(int i10) {
        if (i10 == 0) {
            return (this.mLeft.mTarget != null ? 1 : 0) + (this.mRight.mTarget != null ? 1 : 0) < 2;
        }
        return ((this.mTop.mTarget != null ? 1 : 0) + (this.mBottom.mTarget != null ? 1 : 0)) + (this.mBaseline.mTarget != null ? 1 : 0) < 2;
    }

    public boolean hasDependencies() {
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.mAnchors.get(i10).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        return (this.mWidthOverride == -1 && this.mHeightOverride == -1) ? false : true;
    }

    public boolean hasResolvedTargets(int i10, int i11) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i10 == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            return constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue() && (this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.mTarget.getFinalValue() + this.mLeft.getMargin()) >= i11;
        }
        ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue() && (this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.mTarget.getFinalValue() + this.mTop.getMargin()) >= i11;
        return false;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10, int i11) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i10, i11, true);
    }

    public boolean isAnimated() {
        return this.mAnimated;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.horizontalSolvingPass;
    }

    public boolean isInBarrier(int i10) {
        return this.mIsInBarrier[i10];
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mRight;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInPlaceholder() {
        return this.inPlaceholder;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.mBottom;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        return constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3;
    }

    public boolean isInVirtualLayout() {
        return this.mInVirtualLayout;
    }

    public boolean isMeasureRequested() {
        return this.mMeasureRequested && this.mVisibility != 8;
    }

    public boolean isResolvedHorizontally() {
        return this.resolvedHorizontal || (this.mLeft.hasFinalValue() && this.mRight.hasFinalValue());
    }

    public boolean isResolvedVertically() {
        return this.resolvedVertical || (this.mTop.hasFinalValue() && this.mBottom.hasFinalValue());
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isVerticalSolvingPassDone() {
        return this.verticalSolvingPass;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void markHorizontalSolvingPassDone() {
        this.horizontalSolvingPass = true;
    }

    public void markVerticalSolvingPassDone() {
        this.verticalSolvingPass = true;
    }

    public boolean oppositeDimensionDependsOn(int i10) {
        char c10 = i10 == 0 ? (char) 1 : (char) 0;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i10];
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c10];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour3 && dimensionBehaviour2 == dimensionBehaviour3;
    }

    public boolean oppositeDimensionsTied() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        return dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviourArr[1] == dimensionBehaviour2;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = 0.0f;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f10 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f10;
        this.mVerticalBiasPercent = f10;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedHasRatio = false;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mGroupsToSolver = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.mInVirtualLayout = false;
        boolean[] zArr2 = this.mIsInBarrier;
        zArr2[0] = false;
        zArr2[1] = false;
        this.mMeasureRequested = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor || constraintAnchor == anchor2) {
            if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor5.reset();
            }
        } else if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mAnchors.get(i10).reset();
        }
    }

    public void resetFinalResolution() {
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mAnchors.get(i10).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resetSolvingPassFlag() {
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
    }

    public StringBuilder serialize(StringBuilder sb2) {
        sb2.append("{\n");
        serializeAnchor(sb2, m.f88234c, this.mLeft);
        serializeAnchor(sb2, "top", this.mTop);
        serializeAnchor(sb2, "right", this.mRight);
        serializeAnchor(sb2, "bottom", this.mBottom);
        serializeAnchor(sb2, "baseline", this.mBaseline);
        serializeAnchor(sb2, "centerX", this.mCenterX);
        serializeAnchor(sb2, "centerY", this.mCenterY);
        serializeCircle(sb2, this.mCenter, this.mCircleConstraintAngle);
        serializeSize(sb2, "width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        serializeSize(sb2, "height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        serializeDimensionRatio(sb2, "dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb2, "horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb2, "verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        sb2.append("}\n");
        return sb2;
    }

    public void setAnimated(boolean z10) {
        this.mAnimated = z10;
    }

    public void setBaselineDistance(int i10) {
        this.mBaselineDistance = i10;
        this.hasBaseline = i10 > 0;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i10) {
        if (i10 >= 0) {
            this.mContainerItemSkip = i10;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        createObjectVariable.setName(str + ".left");
        createObjectVariable2.setName(str + ".top");
        createObjectVariable3.setName(str + ".right");
        createObjectVariable4.setName(str + ".bottom");
        linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
    }

    public void setDimension(int i10, int i11) {
        this.mWidth = i10;
        int i12 = this.mMinWidth;
        if (i10 < i12) {
            this.mWidth = i12;
        }
        this.mHeight = i11;
        int i13 = this.mMinHeight;
        if (i11 < i13) {
            this.mHeight = i13;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:31:0x0087). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float f10;
        int i10 = 0;
        if (str != null && str.length() != 0) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i11 = 0;
            int i12 = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (!substring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                    i11 = substring.equalsIgnoreCase(DateFormat.HOUR24) ? 1 : -1;
                }
                i12 = i11;
                i11 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                String substring2 = str.substring(i11, indexOf2);
                String substring3 = str.substring(indexOf2 + 1);
                if (substring2.length() > 0 && substring3.length() > 0) {
                    float parseFloat = Float.parseFloat(substring2);
                    float parseFloat2 = Float.parseFloat(substring3);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        if (i12 == 1) {
                            f10 = Math.abs(parseFloat2 / parseFloat);
                        } else {
                            f10 = Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
                f10 = i10;
            } else {
                String substring4 = str.substring(i11);
                if (substring4.length() > 0) {
                    f10 = Float.parseFloat(substring4);
                }
                f10 = i10;
            }
            i10 = (f10 > i10 ? 1 : (f10 == i10 ? 0 : -1));
            if (i10 > 0) {
                this.mDimensionRatio = f10;
                this.mDimensionRatioSide = i12;
                return;
            }
            return;
        }
        this.mDimensionRatio = 0.0f;
    }

    public void setFinalBaseline(int i10) {
        if (this.hasBaseline) {
            int i11 = i10 - this.mBaselineDistance;
            int i12 = this.mHeight + i11;
            this.mY = i11;
            this.mTop.setFinalValue(i11);
            this.mBottom.setFinalValue(i12);
            this.mBaseline.setFinalValue(i10);
            this.resolvedVertical = true;
        }
    }

    public void setFinalFrame(int i10, int i11, int i12, int i13, int i14, int i15) {
        setFrame(i10, i11, i12, i13);
        setBaselineDistance(i14);
        if (i15 == 0) {
            this.resolvedHorizontal = true;
            this.resolvedVertical = false;
        } else if (i15 == 1) {
            this.resolvedHorizontal = false;
            this.resolvedVertical = true;
        } else if (i15 == 2) {
            this.resolvedHorizontal = true;
            this.resolvedVertical = true;
        } else {
            this.resolvedHorizontal = false;
            this.resolvedVertical = false;
        }
    }

    public void setFinalHorizontal(int i10, int i11) {
        if (this.resolvedHorizontal) {
            return;
        }
        this.mLeft.setFinalValue(i10);
        this.mRight.setFinalValue(i11);
        this.mX = i10;
        this.mWidth = i11 - i10;
        this.resolvedHorizontal = true;
    }

    public void setFinalLeft(int i10) {
        this.mLeft.setFinalValue(i10);
        this.mX = i10;
    }

    public void setFinalTop(int i10) {
        this.mTop.setFinalValue(i10);
        this.mY = i10;
    }

    public void setFinalVertical(int i10, int i11) {
        if (this.resolvedVertical) {
            return;
        }
        this.mTop.setFinalValue(i10);
        this.mBottom.setFinalValue(i11);
        this.mY = i10;
        this.mHeight = i11 - i10;
        if (this.hasBaseline) {
            this.mBaseline.setFinalValue(i10 + this.mBaselineDistance);
        }
        this.resolvedVertical = true;
    }

    public void setFrame(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        this.mX = i10;
        this.mY = i11;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i16 < (i15 = this.mWidth)) {
            i16 = i15;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i17 < (i14 = this.mHeight)) {
            i17 = i14;
        }
        this.mWidth = i16;
        this.mHeight = i17;
        int i18 = this.mMinHeight;
        if (i17 < i18) {
            this.mHeight = i18;
        }
        int i19 = this.mMinWidth;
        if (i16 < i19) {
            this.mWidth = i19;
        }
        int i20 = this.mMatchConstraintMaxWidth;
        if (i20 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mWidth = Math.min(this.mWidth, i20);
        }
        int i21 = this.mMatchConstraintMaxHeight;
        if (i21 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mHeight = Math.min(this.mHeight, i21);
        }
        int i22 = this.mWidth;
        if (i16 != i22) {
            this.mWidthOverride = i22;
        }
        int i23 = this.mHeight;
        if (i17 != i23) {
            this.mHeightOverride = i23;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i10) {
        int i11 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i11 == 1) {
            this.mLeft.mGoneMargin = i10;
            return;
        }
        if (i11 == 2) {
            this.mTop.mGoneMargin = i10;
            return;
        }
        if (i11 == 3) {
            this.mRight.mGoneMargin = i10;
        } else if (i11 == 4) {
            this.mBottom.mGoneMargin = i10;
        } else {
            if (i11 != 5) {
                return;
            }
            this.mBaseline.mGoneMargin = i10;
        }
    }

    public void setHasBaseline(boolean z10) {
        this.hasBaseline = z10;
    }

    public void setHeight(int i10) {
        this.mHeight = i10;
        int i11 = this.mMinHeight;
        if (i10 < i11) {
            this.mHeight = i11;
        }
    }

    public void setHeightWrapContent(boolean z10) {
        this.mIsHeightWrapContent = z10;
    }

    public void setHorizontalBiasPercent(float f10) {
        this.mHorizontalBiasPercent = f10;
    }

    public void setHorizontalChainStyle(int i10) {
        this.mHorizontalChainStyle = i10;
    }

    public void setHorizontalDimension(int i10, int i11) {
        this.mX = i10;
        int i12 = i11 - i10;
        this.mWidth = i12;
        int i13 = this.mMinWidth;
        if (i12 < i13) {
            this.mWidth = i13;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i10, int i11, int i12, float f10) {
        this.mMatchConstraintDefaultWidth = i10;
        this.mMatchConstraintMinWidth = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.mMatchConstraintMaxWidth = i12;
        this.mMatchConstraintPercentWidth = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.mMatchConstraintDefaultWidth = 2;
    }

    public void setHorizontalWeight(float f10) {
        this.mWeight[0] = f10;
    }

    public void setInBarrier(int i10, boolean z10) {
        this.mIsInBarrier[i10] = z10;
    }

    public void setInPlaceholder(boolean z10) {
        this.inPlaceholder = z10;
    }

    public void setInVirtualLayout(boolean z10) {
        this.mInVirtualLayout = z10;
    }

    public void setLastMeasureSpec(int i10, int i11) {
        this.mLastHorizontalMeasureSpec = i10;
        this.mLastVerticalMeasureSpec = i11;
        setMeasureRequested(false);
    }

    public void setLength(int i10, int i11) {
        if (i11 == 0) {
            setWidth(i10);
        } else if (i11 == 1) {
            setHeight(i10);
        }
    }

    public void setMaxHeight(int i10) {
        this.mMaxDimension[1] = i10;
    }

    public void setMaxWidth(int i10) {
        this.mMaxDimension[0] = i10;
    }

    public void setMeasureRequested(boolean z10) {
        this.mMeasureRequested = z10;
    }

    public void setMinHeight(int i10) {
        if (i10 < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i10;
        }
    }

    public void setMinWidth(int i10) {
        if (i10 < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i10;
        }
    }

    public void setOffset(int i10, int i11) {
        this.mOffsetX = i10;
        this.mOffsetY = i11;
    }

    public void setOrigin(int i10, int i11) {
        this.mX = i10;
        this.mY = i11;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setRelativePositioning(int i10, int i11) {
        if (i11 == 0) {
            this.mRelX = i10;
        } else if (i11 == 1) {
            this.mRelY = i10;
        }
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVerticalBiasPercent(float f10) {
        this.mVerticalBiasPercent = f10;
    }

    public void setVerticalChainStyle(int i10) {
        this.mVerticalChainStyle = i10;
    }

    public void setVerticalDimension(int i10, int i11) {
        this.mY = i10;
        int i12 = i11 - i10;
        this.mHeight = i12;
        int i13 = this.mMinHeight;
        if (i12 < i13) {
            this.mHeight = i13;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i10, int i11, int i12, float f10) {
        this.mMatchConstraintDefaultHeight = i10;
        this.mMatchConstraintMinHeight = i11;
        if (i12 == Integer.MAX_VALUE) {
            i12 = 0;
        }
        this.mMatchConstraintMaxHeight = i12;
        this.mMatchConstraintPercentHeight = f10;
        if (f10 <= 0.0f || f10 >= 1.0f || i10 != 0) {
            return;
        }
        this.mMatchConstraintDefaultHeight = 2;
    }

    public void setVerticalWeight(float f10) {
        this.mWeight[1] = f10;
    }

    public void setVisibility(int i10) {
        this.mVisibility = i10;
    }

    public void setWidth(int i10) {
        this.mWidth = i10;
        int i11 = this.mMinWidth;
        if (i10 < i11) {
            this.mWidth = i11;
        }
    }

    public void setWidthWrapContent(boolean z10) {
        this.mIsWidthWrapContent = z10;
    }

    public void setWrapBehaviorInParent(int i10) {
        if (i10 < 0 || i10 > 3) {
            return;
        }
        this.mWrapBehaviorInParent = i10;
    }

    public void setX(int i10) {
        this.mX = i10;
    }

    public void setY(int i10) {
        this.mY = i10;
    }

    public void setupDimensionRatio(boolean z10, boolean z11, boolean z12, boolean z13) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z12 && !z13) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z12 && z13) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            int i10 = this.mMatchConstraintMinWidth;
            if (i10 > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else {
                if (i10 != 0 || this.mMatchConstraintMinHeight <= 0) {
                    return;
                }
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (this.mType != null) {
            str = "type: " + this.mType + " ";
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.mDebugName != null) {
            str2 = "id: " + this.mDebugName + " ";
        }
        sb2.append(str2);
        sb2.append("(");
        sb2.append(this.mX);
        sb2.append(", ");
        sb2.append(this.mY);
        sb2.append(") - (");
        sb2.append(this.mWidth);
        sb2.append(" x ");
        sb2.append(this.mHeight);
        sb2.append(")");
        return sb2.toString();
    }

    public void updateFromRuns(boolean z10, boolean z11) {
        int i10;
        int i11;
        boolean isResolved = z10 & this.horizontalRun.isResolved();
        boolean isResolved2 = z11 & this.verticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.horizontalRun;
        int i12 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.verticalRun;
        int i13 = verticalWidgetRun.start.value;
        int i14 = horizontalWidgetRun.end.value;
        int i15 = verticalWidgetRun.end.value;
        int i16 = i15 - i13;
        if (i14 - i12 < 0 || i16 < 0 || i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE || i13 == Integer.MIN_VALUE || i13 == Integer.MAX_VALUE || i14 == Integer.MIN_VALUE || i14 == Integer.MAX_VALUE || i15 == Integer.MIN_VALUE || i15 == Integer.MAX_VALUE) {
            i14 = 0;
            i12 = 0;
            i15 = 0;
            i13 = 0;
        }
        int i17 = i14 - i12;
        int i18 = i15 - i13;
        if (isResolved) {
            this.mX = i12;
        }
        if (isResolved2) {
            this.mY = i13;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (isResolved) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i17 < (i11 = this.mWidth)) {
                i17 = i11;
            }
            this.mWidth = i17;
            int i19 = this.mMinWidth;
            if (i17 < i19) {
                this.mWidth = i19;
            }
        }
        if (isResolved2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i18 < (i10 = this.mHeight)) {
                i18 = i10;
            }
            this.mHeight = i18;
            int i20 = this.mMinHeight;
            if (i18 < i20) {
                this.mHeight = i20;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z10) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z10 && (horizontalWidgetRun = this.horizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z10 && (verticalWidgetRun = this.verticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i10 = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i10 < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i10) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z10;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 == type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                ConstraintAnchor anchor = getAnchor(type6);
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                ConstraintAnchor anchor2 = getAnchor(type7);
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.TOP;
                ConstraintAnchor anchor3 = getAnchor(type8);
                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
                ConstraintAnchor anchor4 = getAnchor(type9);
                boolean z11 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(type6, constraintWidget, type6, 0);
                    connect(type7, constraintWidget, type7, 0);
                    z10 = true;
                } else {
                    z10 = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(type8, constraintWidget, type8, 0);
                    connect(type9, constraintWidget, type9, 0);
                } else {
                    z11 = false;
                }
                if (z10 && z11) {
                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                    return;
                }
                if (z10) {
                    ConstraintAnchor.Type type10 = ConstraintAnchor.Type.CENTER_X;
                    getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0);
                    return;
                } else {
                    if (z11) {
                        ConstraintAnchor.Type type11 = ConstraintAnchor.Type.CENTER_Y;
                        getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor.Type type12 = ConstraintAnchor.Type.LEFT;
            if (type2 != type12 && type2 != ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                if (type2 == type13 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(type13, constraintWidget, type2, 0);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                }
                return;
            }
            connect(type12, constraintWidget, type2, 0);
            connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
            getAnchor(type15).connect(anchor8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
            getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
            getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (type != ConstraintAnchor.Type.TOP && type != ConstraintAnchor.Type.BOTTOM) {
                if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor13 = getAnchor(type5);
                    if (anchor13.getTarget() != anchor10) {
                        anchor13.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor14 = getAnchor(type14);
                    if (anchor14.isConnected()) {
                        opposite.reset();
                        anchor14.reset();
                    }
                }
            } else {
                ConstraintAnchor anchor15 = getAnchor(type20);
                if (anchor15 != null) {
                    anchor15.reset();
                }
                ConstraintAnchor anchor16 = getAnchor(type5);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(type15);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i10);
        }
    }

    private void serializeAttribute(StringBuilder sb2, String str, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        sb2.append(str);
        sb2.append(" :   ");
        sb2.append(i10);
        sb2.append(",\n");
    }

    public void setDimensionRatio(float f10, int i10) {
        this.mDimensionRatio = f10;
        this.mDimensionRatioSide = i10;
    }

    public void setFrame(int i10, int i11, int i12) {
        if (i12 == 0) {
            setHorizontalDimension(i10, i11);
        } else if (i12 == 1) {
            setVerticalDimension(i10, i11);
        }
    }

    private void getSceneString(StringBuilder sb2, String str, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11) {
        sb2.append(str);
        sb2.append(" :  {\n");
        serializeAttribute(sb2, "      size", i10, 0);
        serializeAttribute(sb2, "      min", i11, 0);
        serializeAttribute(sb2, "      max", i12, Integer.MAX_VALUE);
        serializeAttribute(sb2, "      matchMin", i14, 0);
        serializeAttribute(sb2, "      matchDef", i15, 0);
        serializeAttribute(sb2, "      matchPercent", f10, 1.0f);
        sb2.append("    },\n");
    }

    private void getSceneString(StringBuilder sb2, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb2.append(C13155a.f85806a);
        sb2.append(str);
        sb2.append(" : [ '");
        sb2.append((Object) constraintAnchor.mTarget);
        sb2.append("'");
        if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb2.append(DocLint.SEPARATOR);
            sb2.append(constraintAnchor.mMargin);
            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                sb2.append(DocLint.SEPARATOR);
                sb2.append(constraintAnchor.mGoneMargin);
                sb2.append(DocLint.SEPARATOR);
            }
        }
        sb2.append(" ] ,\n");
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f10 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f10;
        this.mVerticalBiasPercent = f10;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
        setDebugName(str);
    }

    public ConstraintWidget(int i10, int i11, int i12, int i13) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.horizontalRun = null;
        this.verticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.OPTIMIZE_WRAP = false;
        this.OPTIMIZE_WRAP_ON_RESOLVED = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.resolvedHorizontal = false;
        this.resolvedVertical = false;
        this.horizontalSolvingPass = false;
        this.verticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = 0.0f;
        this.hasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f10 = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f10;
        this.mVerticalBiasPercent = f10;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.mX = i10;
        this.mY = i11;
        this.mWidth = i12;
        this.mHeight = i13;
        addAnchors();
    }

    public ConstraintWidget(String str, int i10, int i11, int i12, int i13) {
        this(i10, i11, i12, i13);
        setDebugName(str);
    }

    public ConstraintWidget(int i10, int i11) {
        this(0, 0, i10, i11);
    }

    public ConstraintWidget(String str, int i10, int i11) {
        this(i10, i11);
        setDebugName(str);
    }
}
