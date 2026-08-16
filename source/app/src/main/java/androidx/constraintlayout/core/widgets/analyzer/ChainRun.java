package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets;

    public ChainRun(ConstraintWidget constraintWidget, int i10) {
        super(constraintWidget);
        this.widgets = new ArrayList<>();
        this.orientation = i10;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2 = this.widget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            int i10 = this.orientation;
            if (i10 == 0) {
                next.widget.horizontalChainRun = this;
            } else if (i10 == 1) {
                next.widget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl() && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            WidgetRun widgetRun = this.widgets.get(i10);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override
    public void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.widgets.get(0).widget;
        ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override
    public void applyToWidget() {
        for (int i10 = 0; i10 < this.widgets.size(); i10++) {
            this.widgets.get(i10).applyToWidget();
        }
    }

    @Override
    public void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override
    public long getWrapDimension() {
        int size = this.widgets.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            j10 = j10 + r4.start.margin + this.widgets.get(i10).getWrapDimension() + r4.end.margin;
        }
        return j10;
    }

    @Override
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override
    public boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.widgets.get(i10).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb2.append("<");
            sb2.append((Object) next);
            sb2.append("> ");
        }
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x03fe, code lost:
    
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(Dependency dependency) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        boolean z10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        float f11;
        boolean z11;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean isRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i26 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i27 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i27 >= size) {
                    i27 = -1;
                    break;
                } else if (this.widgets.get(i27).widget.getVisibility() != 8) {
                    break;
                } else {
                    i27++;
                }
            }
            int i28 = size - 1;
            int i29 = i28;
            while (true) {
                if (i29 < 0) {
                    break;
                }
                if (this.widgets.get(i29).widget.getVisibility() != 8) {
                    i10 = i29;
                    break;
                }
                i29--;
            }
            int i30 = 0;
            while (i30 < 2) {
                int i31 = 0;
                i13 = 0;
                i14 = 0;
                int i32 = 0;
                f10 = 0.0f;
                while (i31 < size) {
                    WidgetRun widgetRun = this.widgets.get(i31);
                    if (widgetRun.widget.getVisibility() != i11) {
                        i32++;
                        if (i31 > 0 && i31 >= i27) {
                            i13 += widgetRun.start.margin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.dimension;
                        int i33 = dimensionDependency.value;
                        boolean z12 = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z12) {
                            int i34 = this.orientation;
                            if (i34 == 0 && !widgetRun.widget.horizontalRun.dimension.resolved) {
                                return;
                            }
                            if (i34 == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            } else {
                                i24 = i33;
                            }
                        } else {
                            i24 = i33;
                            if (widgetRun.matchConstraintsType == 1 && i30 == 0) {
                                i25 = dimensionDependency.wrapValue;
                                i14++;
                            } else if (dimensionDependency.resolved) {
                                i25 = i24;
                            }
                            z12 = true;
                            if (z12) {
                                i14++;
                                float f12 = widgetRun.widget.mWeight[this.orientation];
                                if (f12 >= 0.0f) {
                                    f10 += f12;
                                }
                            } else {
                                i13 += i25;
                            }
                            if (i31 < i28 && i31 < i10) {
                                i13 += -widgetRun.end.margin;
                            }
                        }
                        i25 = i24;
                        if (z12) {
                        }
                        if (i31 < i28) {
                            i13 += -widgetRun.end.margin;
                        }
                    }
                    i31++;
                    i11 = 8;
                }
                if (i13 < i26 || i14 == 0) {
                    i12 = i32;
                    break;
                } else {
                    i30++;
                    i11 = 8;
                }
            }
            i12 = 0;
            i13 = 0;
            i14 = 0;
            f10 = 0.0f;
            int i35 = this.start.value;
            if (isRtl) {
                i35 = this.end.value;
            }
            if (i13 > i26) {
                i35 = isRtl ? i35 + ((int) (((i13 - i26) / 2.0f) + 0.5f)) : i35 - ((int) (((i13 - i26) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f13 = i26 - i13;
                int i36 = (int) ((f13 / i14) + 0.5f);
                int i37 = 0;
                int i38 = 0;
                while (i37 < size) {
                    WidgetRun widgetRun2 = this.widgets.get(i37);
                    int i39 = i36;
                    int i40 = i13;
                    if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.dimension;
                        if (!dimensionDependency2.resolved) {
                            if (f10 > 0.0f) {
                                i19 = i35;
                                i20 = (int) (((widgetRun2.widget.mWeight[this.orientation] * f13) / f10) + 0.5f);
                            } else {
                                i19 = i35;
                                i20 = i39;
                            }
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.widget;
                                f11 = f13;
                                i22 = constraintWidget.mMatchConstraintMaxWidth;
                                i21 = constraintWidget.mMatchConstraintMinWidth;
                                z11 = isRtl;
                            } else {
                                f11 = f13;
                                ConstraintWidget constraintWidget2 = widgetRun2.widget;
                                int i41 = constraintWidget2.mMatchConstraintMaxHeight;
                                z11 = isRtl;
                                i21 = constraintWidget2.mMatchConstraintMinHeight;
                                i22 = i41;
                            }
                            i23 = i12;
                            int max = Math.max(i21, widgetRun2.matchConstraintsType == 1 ? Math.min(i20, dimensionDependency2.wrapValue) : i20);
                            if (i22 > 0) {
                                max = Math.min(i22, max);
                            }
                            if (max != i20) {
                                i38++;
                                i20 = max;
                            }
                            widgetRun2.dimension.resolve(i20);
                            i37++;
                            i36 = i39;
                            i13 = i40;
                            i35 = i19;
                            f13 = f11;
                            isRtl = z11;
                            i12 = i23;
                        }
                    }
                    z11 = isRtl;
                    i23 = i12;
                    i19 = i35;
                    f11 = f13;
                    i37++;
                    i36 = i39;
                    i13 = i40;
                    i35 = i19;
                    f13 = f11;
                    isRtl = z11;
                    i12 = i23;
                }
                z10 = isRtl;
                i15 = i12;
                i16 = i35;
                int i42 = i13;
                if (i38 > 0) {
                    i14 -= i38;
                    i13 = 0;
                    for (int i43 = 0; i43 < size; i43++) {
                        WidgetRun widgetRun3 = this.widgets.get(i43);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i43 > 0 && i43 >= i27) {
                                i13 += widgetRun3.start.margin;
                            }
                            i13 += widgetRun3.dimension.value;
                            if (i43 < i28 && i43 < i10) {
                                i13 += -widgetRun3.end.margin;
                            }
                        }
                    }
                } else {
                    i13 = i42;
                }
                i18 = 2;
                if (this.chainStyle == 2 && i38 == 0) {
                    i17 = 0;
                    this.chainStyle = 0;
                } else {
                    i17 = 0;
                }
            } else {
                z10 = isRtl;
                i15 = i12;
                i16 = i35;
                i17 = 0;
                i18 = 2;
            }
            if (i13 > i26) {
                this.chainStyle = i18;
            }
            if (i15 > 0 && i14 == 0 && i27 == i10) {
                this.chainStyle = i18;
            }
            int i44 = this.chainStyle;
            if (i44 == 1) {
                int i45 = i15;
                int i46 = i45 > 1 ? (i26 - i13) / (i45 - 1) : i45 == 1 ? (i26 - i13) / 2 : i17;
                if (i14 > 0) {
                    i46 = i17;
                }
                int i47 = i16;
                for (int i48 = i17; i48 < size; i48++) {
                    WidgetRun widgetRun4 = this.widgets.get(z10 ? size - (i48 + 1) : i48);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i47);
                        widgetRun4.end.resolve(i47);
                    } else {
                        if (i48 > 0) {
                            i47 = z10 ? i47 - i46 : i47 + i46;
                        }
                        if (i48 > 0 && i48 >= i27) {
                            i47 = z10 ? i47 - widgetRun4.start.margin : i47 + widgetRun4.start.margin;
                        }
                        if (z10) {
                            widgetRun4.end.resolve(i47);
                        } else {
                            widgetRun4.start.resolve(i47);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.dimension;
                        int i49 = dimensionDependency3.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i49 = dimensionDependency3.wrapValue;
                        }
                        i47 = z10 ? i47 - i49 : i47 + i49;
                        if (z10) {
                            widgetRun4.start.resolve(i47);
                        } else {
                            widgetRun4.end.resolve(i47);
                        }
                        widgetRun4.resolved = true;
                        if (i48 < i28 && i48 < i10) {
                            i47 = z10 ? i47 - (-widgetRun4.end.margin) : i47 + (-widgetRun4.end.margin);
                        }
                    }
                }
                return;
            }
            int i50 = i15;
            if (i44 == 0) {
                int i51 = (i26 - i13) / (i50 + 1);
                if (i14 > 0) {
                    i51 = i17;
                }
                int i52 = i16;
                for (int i53 = i17; i53 < size; i53++) {
                    WidgetRun widgetRun5 = this.widgets.get(z10 ? size - (i53 + 1) : i53);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i52);
                        widgetRun5.end.resolve(i52);
                    } else {
                        int i54 = z10 ? i52 - i51 : i52 + i51;
                        if (i53 > 0 && i53 >= i27) {
                            i54 = z10 ? i54 - widgetRun5.start.margin : i54 + widgetRun5.start.margin;
                        }
                        if (z10) {
                            widgetRun5.end.resolve(i54);
                        } else {
                            widgetRun5.start.resolve(i54);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.dimension;
                        int i55 = dimensionDependency4.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            i55 = Math.min(i55, dimensionDependency4.wrapValue);
                        }
                        i52 = z10 ? i54 - i55 : i54 + i55;
                        if (z10) {
                            widgetRun5.start.resolve(i52);
                        } else {
                            widgetRun5.end.resolve(i52);
                        }
                        if (i53 < i28 && i53 < i10) {
                            i52 = z10 ? i52 - (-widgetRun5.end.margin) : i52 + (-widgetRun5.end.margin);
                        }
                    }
                }
                return;
            }
            if (i44 == 2) {
                float horizontalBiasPercent = this.orientation == 0 ? this.widget.getHorizontalBiasPercent() : this.widget.getVerticalBiasPercent();
                if (z10) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i56 = (int) (((i26 - i13) * horizontalBiasPercent) + 0.5f);
                if (i56 < 0 || i14 > 0) {
                    i56 = i17;
                }
                int i57 = z10 ? i16 - i56 : i16 + i56;
                for (int i58 = i17; i58 < size; i58++) {
                    WidgetRun widgetRun6 = this.widgets.get(z10 ? size - (i58 + 1) : i58);
                    if (widgetRun6.widget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i57);
                        widgetRun6.end.resolve(i57);
                    } else {
                        if (i58 > 0 && i58 >= i27) {
                            i57 = z10 ? i57 - widgetRun6.start.margin : i57 + widgetRun6.start.margin;
                        }
                        if (z10) {
                            widgetRun6.end.resolve(i57);
                        } else {
                            widgetRun6.start.resolve(i57);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.dimension;
                        int i59 = dimensionDependency5.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i59 = dimensionDependency5.wrapValue;
                        }
                        i57 += i59;
                        if (z10) {
                            widgetRun6.start.resolve(i57);
                        } else {
                            widgetRun6.end.resolve(i57);
                        }
                        if (i58 < i28 && i58 < i10) {
                            i57 = z10 ? i57 - (-widgetRun6.end.margin) : i57 + (-widgetRun6.end.margin);
                        }
                    }
                }
            }
        }
    }
}
