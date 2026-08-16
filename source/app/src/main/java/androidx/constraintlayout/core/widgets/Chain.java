package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i10) {
        int i11;
        ChainHead[] chainHeadArr;
        int i12;
        if (i10 == 0) {
            i11 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i12 = 0;
        } else {
            i11 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i12 = 2;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            ChainHead chainHead = chainHeadArr[i13];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i10, i12, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        if (r7 == 2) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0035, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x004b, code lost:
    
        if (r7 == 2) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0261 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04dc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04e8  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04fd  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0518 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04f7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b4  */
    /* JADX WARN: Type inference failed for: r1v40, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i10, int i11, ChainHead chainHead) {
        boolean z10;
        boolean z11;
        boolean z12;
        ArrayList<ConstraintWidget> arrayList;
        ConstraintWidget constraintWidget;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintWidget constraintWidget2;
        int i12;
        ConstraintWidget constraintWidget3;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget4;
        ConstraintAnchor constraintAnchor5;
        ConstraintWidget constraintWidget5;
        SolverVariable solverVariable3;
        ConstraintWidget constraintWidget6;
        ConstraintWidget constraintWidget7;
        SolverVariable solverVariable4;
        float f10;
        int size;
        int i13;
        ArrayList<ConstraintWidget> arrayList2;
        int i14;
        boolean z13;
        boolean z14;
        ConstraintWidget constraintWidget8;
        ConstraintWidget constraintWidget9;
        int i15;
        int i16 = i10;
        ConstraintWidget constraintWidget10 = chainHead.mFirst;
        ConstraintWidget constraintWidget11 = chainHead.mLast;
        ConstraintWidget constraintWidget12 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget13 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget14 = chainHead.mHead;
        float f11 = chainHead.mTotalWeight;
        boolean z15 = constraintWidgetContainer.mListDimensionBehaviors[i16] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i16 == 0) {
            int i17 = constraintWidget14.mHorizontalChainStyle;
            z10 = i17 == 0;
            z11 = i17 == 1;
        } else {
            int i18 = constraintWidget14.mVerticalChainStyle;
            z10 = i18 == 0;
            z11 = i18 == 1;
        }
        boolean z16 = z11;
        boolean z17 = false;
        boolean z18 = z10;
        ?? r82 = constraintWidget10;
        while (true) {
            if (z17) {
                break;
            }
            ConstraintAnchor constraintAnchor6 = r82.mListAnchors[i11];
            int i19 = z12 ? 1 : 4;
            int margin = constraintAnchor6.getMargin();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r82.mListDimensionBehaviors[i16];
            float f12 = f11;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (dimensionBehaviour == dimensionBehaviour2 && r82.mResolvedMatchConstraintDefault[i16] == 0) {
                z13 = z17;
                z14 = true;
            } else {
                z13 = z17;
                z14 = false;
            }
            ConstraintAnchor constraintAnchor7 = constraintAnchor6.mTarget;
            if (constraintAnchor7 != null && r82 != constraintWidget10) {
                margin += constraintAnchor7.getMargin();
            }
            int i20 = margin;
            if (!z12 || r82 == constraintWidget10 || r82 == constraintWidget12) {
                constraintWidget8 = constraintWidget14;
            } else {
                constraintWidget8 = constraintWidget14;
                i19 = 8;
            }
            ConstraintAnchor constraintAnchor8 = constraintAnchor6.mTarget;
            if (constraintAnchor8 != null) {
                if (r82 == constraintWidget12) {
                    constraintWidget9 = constraintWidget10;
                    linearSystem.addGreaterThan(constraintAnchor6.mSolverVariable, constraintAnchor8.mSolverVariable, i20, 6);
                } else {
                    constraintWidget9 = constraintWidget10;
                    linearSystem.addGreaterThan(constraintAnchor6.mSolverVariable, constraintAnchor8.mSolverVariable, i20, 8);
                }
                if (z14 && !z12) {
                    i19 = 5;
                }
                linearSystem.addEquality(constraintAnchor6.mSolverVariable, constraintAnchor6.mTarget.mSolverVariable, i20, (r82 == constraintWidget12 && z12 && r82.isInBarrier(i16)) ? 5 : i19);
            } else {
                constraintWidget9 = constraintWidget10;
            }
            if (z15) {
                if (r82.getVisibility() == 8 || r82.mListDimensionBehaviors[i16] != dimensionBehaviour2) {
                    i15 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r82.mListAnchors;
                    i15 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr[i11 + 1].mSolverVariable, constraintAnchorArr[i11].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r82.mListAnchors[i11].mSolverVariable, constraintWidgetContainer.mListAnchors[i11].mSolverVariable, i15, 8);
            }
            ConstraintAnchor constraintAnchor9 = r82.mListAnchors[i11 + 1].mTarget;
            if (constraintAnchor9 != null) {
                ?? r12 = constraintAnchor9.mOwner;
                ConstraintAnchor constraintAnchor10 = r12.mListAnchors[i11].mTarget;
                if (constraintAnchor10 != null && constraintAnchor10.mOwner == r82) {
                    r21 = r12;
                }
            }
            if (r21 != null) {
                r82 = r21;
                z17 = z13;
            } else {
                z17 = true;
            }
            constraintWidget14 = constraintWidget8;
            f11 = f12;
            constraintWidget10 = constraintWidget9;
            r82 = r82;
        }
        ConstraintWidget constraintWidget15 = constraintWidget14;
        float f13 = f11;
        ConstraintWidget constraintWidget16 = constraintWidget10;
        if (constraintWidget13 != null) {
            int i21 = i11 + 1;
            if (constraintWidget11.mListAnchors[i21].mTarget != null) {
                ConstraintAnchor constraintAnchor11 = constraintWidget13.mListAnchors[i21];
                if (constraintWidget13.mListDimensionBehaviors[i16] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget13.mResolvedMatchConstraintDefault[i16] == 0 && !z12) {
                    ConstraintAnchor constraintAnchor12 = constraintAnchor11.mTarget;
                    if (constraintAnchor12.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor11.mSolverVariable, constraintAnchor12.mSolverVariable, -constraintAnchor11.getMargin(), 5);
                        linearSystem.addLowerThan(constraintAnchor11.mSolverVariable, constraintWidget11.mListAnchors[i21].mTarget.mSolverVariable, -constraintAnchor11.getMargin(), 6);
                        if (z15) {
                            int i22 = i11 + 1;
                            SolverVariable solverVariable5 = constraintWidgetContainer.mListAnchors[i22].mSolverVariable;
                            ConstraintAnchor constraintAnchor13 = constraintWidget11.mListAnchors[i22];
                            linearSystem.addGreaterThan(solverVariable5, constraintAnchor13.mSolverVariable, constraintAnchor13.getMargin(), 8);
                        }
                        arrayList = chainHead.mWeightedMatchConstraintsWidgets;
                        if (arrayList != null && (size = arrayList.size()) > 1) {
                            float f14 = (chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f13 : chainHead.mWidgetsMatchCount;
                            float f15 = 0.0f;
                            float f16 = 0.0f;
                            ConstraintWidget constraintWidget17 = null;
                            i13 = 0;
                            while (i13 < size) {
                                ConstraintWidget constraintWidget18 = arrayList.get(i13);
                                float f17 = constraintWidget18.mWeight[i16];
                                if (f17 < f15) {
                                    if (chainHead.mHasComplexMatchWeights) {
                                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget18.mListAnchors;
                                        linearSystem.addEquality(constraintAnchorArr2[i11 + 1].mSolverVariable, constraintAnchorArr2[i11].mSolverVariable, 0, 4);
                                        arrayList2 = arrayList;
                                        i14 = size;
                                        i13++;
                                        size = i14;
                                        arrayList = arrayList2;
                                        f15 = 0.0f;
                                    } else {
                                        f17 = 1.0f;
                                    }
                                }
                                if (f17 == 0.0f) {
                                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget18.mListAnchors;
                                    linearSystem.addEquality(constraintAnchorArr3[i11 + 1].mSolverVariable, constraintAnchorArr3[i11].mSolverVariable, 0, 8);
                                    arrayList2 = arrayList;
                                    i14 = size;
                                    i13++;
                                    size = i14;
                                    arrayList = arrayList2;
                                    f15 = 0.0f;
                                } else {
                                    if (constraintWidget17 != null) {
                                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget17.mListAnchors;
                                        SolverVariable solverVariable6 = constraintAnchorArr4[i11].mSolverVariable;
                                        int i23 = i11 + 1;
                                        SolverVariable solverVariable7 = constraintAnchorArr4[i23].mSolverVariable;
                                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget18.mListAnchors;
                                        arrayList2 = arrayList;
                                        SolverVariable solverVariable8 = constraintAnchorArr5[i11].mSolverVariable;
                                        SolverVariable solverVariable9 = constraintAnchorArr5[i23].mSolverVariable;
                                        i14 = size;
                                        ArrayRow createRow = linearSystem.createRow();
                                        createRow.createRowEqualMatchDimensions(f16, f14, f17, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                                        linearSystem.addConstraint(createRow);
                                    } else {
                                        arrayList2 = arrayList;
                                        i14 = size;
                                    }
                                    constraintWidget17 = constraintWidget18;
                                    f16 = f17;
                                    i13++;
                                    size = i14;
                                    arrayList = arrayList2;
                                    f15 = 0.0f;
                                }
                            }
                        }
                        if (constraintWidget12 == null && (constraintWidget12 == constraintWidget13 || z12)) {
                            ConstraintAnchor constraintAnchor14 = constraintWidget16.mListAnchors[i11];
                            int i24 = i11 + 1;
                            ConstraintAnchor constraintAnchor15 = constraintWidget11.mListAnchors[i24];
                            ConstraintAnchor constraintAnchor16 = constraintAnchor14.mTarget;
                            SolverVariable solverVariable10 = constraintAnchor16 != null ? constraintAnchor16.mSolverVariable : null;
                            ConstraintAnchor constraintAnchor17 = constraintAnchor15.mTarget;
                            SolverVariable solverVariable11 = constraintAnchor17 != null ? constraintAnchor17.mSolverVariable : null;
                            ConstraintAnchor constraintAnchor18 = constraintWidget12.mListAnchors[i11];
                            if (constraintWidget13 != null) {
                                constraintAnchor15 = constraintWidget13.mListAnchors[i24];
                            }
                            if (solverVariable10 != null && solverVariable11 != null) {
                                if (i16 == 0) {
                                    f10 = constraintWidget15.mHorizontalBiasPercent;
                                } else {
                                    f10 = constraintWidget15.mVerticalBiasPercent;
                                }
                                linearSystem.addCentering(constraintAnchor18.mSolverVariable, solverVariable10, constraintAnchor18.getMargin(), f10, solverVariable11, constraintAnchor15.mSolverVariable, constraintAnchor15.getMargin(), 7);
                            }
                        } else if (z18 || constraintWidget12 == null) {
                            int i25 = 8;
                            if (z16 && constraintWidget12 != null) {
                                int i26 = chainHead.mWidgetsMatchCount;
                                boolean z19 = i26 <= 0 && chainHead.mWidgetsCount == i26;
                                ConstraintWidget constraintWidget19 = constraintWidget12;
                                constraintWidget = constraintWidget19;
                                while (constraintWidget != null) {
                                    ConstraintWidget constraintWidget20 = constraintWidget.mNextChainWidget[i16];
                                    while (constraintWidget20 != null && constraintWidget20.getVisibility() == i25) {
                                        constraintWidget20 = constraintWidget20.mNextChainWidget[i16];
                                    }
                                    if (constraintWidget == constraintWidget12 || constraintWidget == constraintWidget13 || constraintWidget20 == null) {
                                        constraintWidget2 = constraintWidget19;
                                        i12 = i25;
                                    } else {
                                        ConstraintWidget constraintWidget21 = constraintWidget20 == constraintWidget13 ? null : constraintWidget20;
                                        ConstraintAnchor constraintAnchor19 = constraintWidget.mListAnchors[i11];
                                        SolverVariable solverVariable12 = constraintAnchor19.mSolverVariable;
                                        ConstraintAnchor constraintAnchor20 = constraintAnchor19.mTarget;
                                        if (constraintAnchor20 != null) {
                                            SolverVariable solverVariable13 = constraintAnchor20.mSolverVariable;
                                        }
                                        int i27 = i11 + 1;
                                        SolverVariable solverVariable14 = constraintWidget19.mListAnchors[i27].mSolverVariable;
                                        int margin2 = constraintAnchor19.getMargin();
                                        int margin3 = constraintWidget.mListAnchors[i27].getMargin();
                                        if (constraintWidget21 != null) {
                                            constraintAnchor4 = constraintWidget21.mListAnchors[i11];
                                            SolverVariable solverVariable15 = constraintAnchor4.mSolverVariable;
                                            constraintWidget3 = constraintWidget21;
                                            ConstraintAnchor constraintAnchor21 = constraintAnchor4.mTarget;
                                            solverVariable2 = constraintAnchor21 != null ? constraintAnchor21.mSolverVariable : null;
                                            solverVariable = solverVariable15;
                                        } else {
                                            constraintWidget3 = constraintWidget21;
                                            constraintAnchor4 = constraintWidget13.mListAnchors[i11];
                                            solverVariable = constraintAnchor4 != null ? constraintAnchor4.mSolverVariable : null;
                                            solverVariable2 = constraintWidget.mListAnchors[i27].mSolverVariable;
                                        }
                                        if (constraintAnchor4 != null) {
                                            margin3 += constraintAnchor4.getMargin();
                                        }
                                        int i28 = margin3;
                                        int margin4 = constraintWidget19.mListAnchors[i27].getMargin() + margin2;
                                        int i29 = z19 ? 8 : 4;
                                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                                            constraintWidget4 = constraintWidget3;
                                            constraintWidget2 = constraintWidget19;
                                            i12 = 8;
                                        } else {
                                            constraintWidget4 = constraintWidget3;
                                            constraintWidget2 = constraintWidget19;
                                            i12 = 8;
                                            linearSystem.addCentering(solverVariable12, solverVariable14, margin4, 0.5f, solverVariable, solverVariable2, i28, i29);
                                        }
                                        constraintWidget20 = constraintWidget4;
                                    }
                                    constraintWidget19 = constraintWidget.getVisibility() != i12 ? constraintWidget : constraintWidget2;
                                    constraintWidget = constraintWidget20;
                                    i25 = i12;
                                    i16 = i10;
                                }
                                ConstraintAnchor constraintAnchor22 = constraintWidget12.mListAnchors[i11];
                                constraintAnchor = constraintWidget16.mListAnchors[i11].mTarget;
                                int i30 = i11 + 1;
                                constraintAnchor2 = constraintWidget13.mListAnchors[i30];
                                constraintAnchor3 = constraintWidget11.mListAnchors[i30].mTarget;
                                if (constraintAnchor != null) {
                                    if (constraintWidget12 != constraintWidget13) {
                                        linearSystem.addEquality(constraintAnchor22.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor22.getMargin(), 5);
                                    } else if (constraintAnchor3 != null) {
                                        linearSystem.addCentering(constraintAnchor22.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor22.getMargin(), 0.5f, constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, constraintAnchor2.getMargin(), 5);
                                    }
                                }
                                if (constraintAnchor3 != null && constraintWidget12 != constraintWidget13) {
                                    linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), 5);
                                }
                            }
                        } else {
                            int i31 = chainHead.mWidgetsMatchCount;
                            boolean z20 = i31 > 0 && chainHead.mWidgetsCount == i31;
                            ConstraintWidget constraintWidget22 = constraintWidget12;
                            ConstraintWidget constraintWidget23 = constraintWidget22;
                            while (constraintWidget23 != null) {
                                ConstraintWidget constraintWidget24 = constraintWidget23.mNextChainWidget[i16];
                                while (constraintWidget24 != null && constraintWidget24.getVisibility() == 8) {
                                    constraintWidget24 = constraintWidget24.mNextChainWidget[i16];
                                }
                                if (constraintWidget24 != null || constraintWidget23 == constraintWidget13) {
                                    ConstraintAnchor constraintAnchor23 = constraintWidget23.mListAnchors[i11];
                                    SolverVariable solverVariable16 = constraintAnchor23.mSolverVariable;
                                    ConstraintAnchor constraintAnchor24 = constraintAnchor23.mTarget;
                                    SolverVariable solverVariable17 = constraintAnchor24 != null ? constraintAnchor24.mSolverVariable : null;
                                    if (constraintWidget22 != constraintWidget23) {
                                        solverVariable17 = constraintWidget22.mListAnchors[i11 + 1].mSolverVariable;
                                    } else if (constraintWidget23 == constraintWidget12) {
                                        ConstraintAnchor constraintAnchor25 = constraintWidget16.mListAnchors[i11].mTarget;
                                        solverVariable17 = constraintAnchor25 != null ? constraintAnchor25.mSolverVariable : null;
                                    }
                                    int margin5 = constraintAnchor23.getMargin();
                                    int i32 = i11 + 1;
                                    int margin6 = constraintWidget23.mListAnchors[i32].getMargin();
                                    if (constraintWidget24 != null) {
                                        constraintAnchor5 = constraintWidget24.mListAnchors[i11];
                                        solverVariable3 = constraintAnchor5.mSolverVariable;
                                    } else {
                                        constraintAnchor5 = constraintWidget11.mListAnchors[i32].mTarget;
                                        if (constraintAnchor5 != null) {
                                            solverVariable3 = constraintAnchor5.mSolverVariable;
                                        } else {
                                            constraintWidget5 = constraintWidget24;
                                            solverVariable3 = null;
                                            SolverVariable solverVariable18 = constraintWidget23.mListAnchors[i32].mSolverVariable;
                                            if (constraintAnchor5 != null) {
                                                margin6 += constraintAnchor5.getMargin();
                                            }
                                            int margin7 = margin5 + constraintWidget22.mListAnchors[i32].getMargin();
                                            if (solverVariable16 != null || solverVariable17 == null || solverVariable3 == null || solverVariable18 == null) {
                                                constraintWidget6 = constraintWidget5;
                                            } else {
                                                if (constraintWidget23 == constraintWidget12) {
                                                    margin7 = constraintWidget12.mListAnchors[i11].getMargin();
                                                }
                                                int i33 = margin7;
                                                constraintWidget6 = constraintWidget5;
                                                constraintWidget7 = constraintWidget22;
                                                linearSystem.addCentering(solverVariable16, solverVariable17, i33, 0.5f, solverVariable3, solverVariable18, constraintWidget23 == constraintWidget13 ? constraintWidget13.mListAnchors[i32].getMargin() : margin6, z20 ? 8 : 5);
                                                if (constraintWidget23.getVisibility() != 8) {
                                                    constraintWidget23 = constraintWidget7;
                                                }
                                                constraintWidget22 = constraintWidget23;
                                                constraintWidget23 = constraintWidget6;
                                            }
                                        }
                                    }
                                    constraintWidget5 = constraintWidget24;
                                    SolverVariable solverVariable182 = constraintWidget23.mListAnchors[i32].mSolverVariable;
                                    if (constraintAnchor5 != null) {
                                    }
                                    int margin72 = margin5 + constraintWidget22.mListAnchors[i32].getMargin();
                                    if (solverVariable16 != null) {
                                    }
                                    constraintWidget6 = constraintWidget5;
                                } else {
                                    constraintWidget6 = constraintWidget24;
                                }
                                constraintWidget7 = constraintWidget22;
                                if (constraintWidget23.getVisibility() != 8) {
                                }
                                constraintWidget22 = constraintWidget23;
                                constraintWidget23 = constraintWidget6;
                            }
                        }
                        if ((z18 && !z16) || constraintWidget12 == null || constraintWidget12 == constraintWidget13) {
                            return;
                        }
                        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget12.mListAnchors;
                        ConstraintAnchor constraintAnchor26 = constraintAnchorArr6[i11];
                        if (constraintWidget13 == null) {
                            constraintWidget13 = constraintWidget12;
                        }
                        int i34 = i11 + 1;
                        ConstraintAnchor constraintAnchor27 = constraintWidget13.mListAnchors[i34];
                        ConstraintAnchor constraintAnchor28 = constraintAnchor26.mTarget;
                        solverVariable4 = constraintAnchor28 != null ? constraintAnchor28.mSolverVariable : null;
                        ConstraintAnchor constraintAnchor29 = constraintAnchor27.mTarget;
                        SolverVariable solverVariable19 = constraintAnchor29 != null ? constraintAnchor29.mSolverVariable : null;
                        if (constraintWidget11 != constraintWidget13) {
                            ConstraintAnchor constraintAnchor30 = constraintWidget11.mListAnchors[i34].mTarget;
                            solverVariable19 = constraintAnchor30 != null ? constraintAnchor30.mSolverVariable : null;
                        }
                        if (constraintWidget12 == constraintWidget13) {
                            constraintAnchor27 = constraintAnchorArr6[i34];
                        }
                        if (solverVariable4 == null || solverVariable19 == null) {
                            return;
                        }
                        linearSystem.addCentering(constraintAnchor26.mSolverVariable, solverVariable4, constraintAnchor26.getMargin(), 0.5f, solverVariable19, constraintAnchor27.mSolverVariable, constraintWidget13.mListAnchors[i34].getMargin(), 5);
                        return;
                    }
                }
                if (z12) {
                    ConstraintAnchor constraintAnchor31 = constraintAnchor11.mTarget;
                    if (constraintAnchor31.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor11.mSolverVariable, constraintAnchor31.mSolverVariable, -constraintAnchor11.getMargin(), 4);
                    }
                }
                linearSystem.addLowerThan(constraintAnchor11.mSolverVariable, constraintWidget11.mListAnchors[i21].mTarget.mSolverVariable, -constraintAnchor11.getMargin(), 6);
                if (z15) {
                }
                arrayList = chainHead.mWeightedMatchConstraintsWidgets;
                if (arrayList != null) {
                    if (chainHead.mHasUndefinedWeights) {
                    }
                    float f152 = 0.0f;
                    float f162 = 0.0f;
                    ConstraintWidget constraintWidget172 = null;
                    i13 = 0;
                    while (i13 < size) {
                    }
                }
                if (constraintWidget12 == null) {
                }
                if (z18) {
                }
                int i252 = 8;
                if (z16) {
                    int i262 = chainHead.mWidgetsMatchCount;
                    if (i262 <= 0) {
                    }
                    ConstraintWidget constraintWidget192 = constraintWidget12;
                    constraintWidget = constraintWidget192;
                    while (constraintWidget != null) {
                    }
                    ConstraintAnchor constraintAnchor222 = constraintWidget12.mListAnchors[i11];
                    constraintAnchor = constraintWidget16.mListAnchors[i11].mTarget;
                    int i302 = i11 + 1;
                    constraintAnchor2 = constraintWidget13.mListAnchors[i302];
                    constraintAnchor3 = constraintWidget11.mListAnchors[i302].mTarget;
                    if (constraintAnchor != null) {
                    }
                    if (constraintAnchor3 != null) {
                        linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), 5);
                    }
                }
                if (z18) {
                }
                ConstraintAnchor[] constraintAnchorArr62 = constraintWidget12.mListAnchors;
                ConstraintAnchor constraintAnchor262 = constraintAnchorArr62[i11];
                if (constraintWidget13 == null) {
                }
                int i342 = i11 + 1;
                ConstraintAnchor constraintAnchor272 = constraintWidget13.mListAnchors[i342];
                ConstraintAnchor constraintAnchor282 = constraintAnchor262.mTarget;
                if (constraintAnchor282 != null) {
                }
                ConstraintAnchor constraintAnchor292 = constraintAnchor272.mTarget;
                if (constraintAnchor292 != null) {
                }
                if (constraintWidget11 != constraintWidget13) {
                }
                if (constraintWidget12 == constraintWidget13) {
                }
                if (solverVariable4 == null) {
                    return;
                } else {
                    return;
                }
            }
        }
        if (z15) {
        }
        arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null) {
        }
        if (constraintWidget12 == null) {
        }
        if (z18) {
        }
        int i2522 = 8;
        if (z16) {
        }
        if (z18) {
        }
        ConstraintAnchor[] constraintAnchorArr622 = constraintWidget12.mListAnchors;
        ConstraintAnchor constraintAnchor2622 = constraintAnchorArr622[i11];
        if (constraintWidget13 == null) {
        }
        int i3422 = i11 + 1;
        ConstraintAnchor constraintAnchor2722 = constraintWidget13.mListAnchors[i3422];
        ConstraintAnchor constraintAnchor2822 = constraintAnchor2622.mTarget;
        if (constraintAnchor2822 != null) {
        }
        ConstraintAnchor constraintAnchor2922 = constraintAnchor2722.mTarget;
        if (constraintAnchor2922 != null) {
        }
        if (constraintWidget11 != constraintWidget13) {
        }
        if (constraintWidget12 == constraintWidget13) {
        }
        if (solverVariable4 == null) {
        }
    }
}
