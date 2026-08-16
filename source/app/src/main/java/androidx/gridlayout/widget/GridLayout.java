package androidx.gridlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.LogPrinter;
import android.util.Pair;
import android.util.Printer;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.gridlayout.R;
import androidx.legacy.widget.Space;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import mk.C14289h;
import org.eclipse.jdt.internal.core.JavaElement;

public class GridLayout extends ViewGroup {
    public static final int ALIGN_BOUNDS = 0;
    public static final int ALIGN_MARGINS = 1;
    public static final Alignment BASELINE;
    public static final Alignment BOTTOM;
    static final int CAN_STRETCH = 2;
    public static final Alignment CENTER;
    private static final int DEFAULT_ALIGNMENT_MODE = 1;
    static final int DEFAULT_CONTAINER_MARGIN = 0;
    private static final int DEFAULT_COUNT = Integer.MIN_VALUE;
    static final boolean DEFAULT_ORDER_PRESERVED = true;
    private static final int DEFAULT_ORIENTATION = 0;
    private static final boolean DEFAULT_USE_DEFAULT_MARGINS = false;
    public static final Alignment END;
    public static final Alignment FILL;
    public static final int HORIZONTAL = 0;
    static final int INFLEXIBLE = 0;
    private static final Alignment LEADING;
    public static final Alignment LEFT;
    static final int MAX_SIZE = 100000;
    public static final Alignment RIGHT;
    public static final Alignment START;
    public static final Alignment TOP;
    private static final Alignment TRAILING;
    public static final int UNDEFINED = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH = 0;
    public static final int VERTICAL = 1;
    int mAlignmentMode;
    int mDefaultGap;
    final Axis mHorizontalAxis;
    int mLastLayoutParamsHashCode;
    int mOrientation;
    Printer mPrinter;
    boolean mUseDefaultMargins;
    final Axis mVerticalAxis;
    static final Printer LOG_PRINTER = new LogPrinter(3, GridLayout.class.getName());
    static final Printer NO_PRINTER = new Printer() {
        @Override
        public void println(String str) {
        }
    };
    private static final int ORIENTATION = R.styleable.GridLayout_orientation;
    private static final int ROW_COUNT = R.styleable.GridLayout_rowCount;
    private static final int COLUMN_COUNT = R.styleable.GridLayout_columnCount;
    private static final int USE_DEFAULT_MARGINS = R.styleable.GridLayout_useDefaultMargins;
    private static final int ALIGNMENT_MODE = R.styleable.GridLayout_alignmentMode;
    private static final int ROW_ORDER_PRESERVED = R.styleable.GridLayout_rowOrderPreserved;
    private static final int COLUMN_ORDER_PRESERVED = R.styleable.GridLayout_columnOrderPreserved;
    static final Alignment UNDEFINED_ALIGNMENT = new Alignment() {
        @Override
        public int getAlignmentValue(View view, int i10, int i11) {
            return Integer.MIN_VALUE;
        }

        @Override
        public String getDebugString() {
            return "UNDEFINED";
        }

        @Override
        public int getGravityOffset(View view, int i10) {
            return Integer.MIN_VALUE;
        }
    };

    public static abstract class Alignment {
        public abstract int getAlignmentValue(View view, int i10, int i11);

        public Bounds getBounds() {
            return new Bounds();
        }

        public abstract String getDebugString();

        public abstract int getGravityOffset(View view, int i10);

        public int getSizeInCell(View view, int i10, int i11) {
            return i10;
        }

        public String toString() {
            return "Alignment:" + getDebugString();
        }
    }

    public static final class Arc {
        public final Interval span;
        public boolean valid = true;
        public final MutableInt value;

        public Arc(Interval interval, MutableInt mutableInt) {
            this.span = interval;
            this.value = mutableInt;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) this.span);
            sb2.append(" ");
            sb2.append(!this.valid ? "+>" : "->");
            sb2.append(" ");
            sb2.append((Object) this.value);
            return sb2.toString();
        }
    }

    public static final class Assoc<K, V> extends ArrayList<Pair<K, V>> {
        private final Class<K> keyType;
        private final Class<V> valueType;

        private Assoc(Class<K> cls, Class<V> cls2) {
            this.keyType = cls;
            this.valueType = cls2;
        }

        public static <K, V> Assoc<K, V> of(Class<K> cls, Class<V> cls2) {
            return new Assoc<>(cls, cls2);
        }

        public PackedMap<K, V> pack() {
            int size = size();
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.keyType, size);
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) this.valueType, size);
            for (int i10 = 0; i10 < size; i10++) {
                objArr[i10] = get(i10).first;
                objArr2[i10] = get(i10).second;
            }
            return new PackedMap<>(objArr, objArr2);
        }

        public void put(K k10, V v10) {
            add(Pair.create(k10, v10));
        }
    }

    public final class Axis {
        static final boolean $assertionsDisabled = false;
        static final int COMPLETE = 2;
        static final int NEW = 0;
        static final int PENDING = 1;
        public Arc[] arcs;
        PackedMap<Interval, MutableInt> backwardLinks;
        public int[] deltas;
        PackedMap<Interval, MutableInt> forwardLinks;
        PackedMap<Spec, Bounds> groupBounds;
        public boolean hasWeights;
        public final boolean horizontal;
        public int[] leadingMargins;
        public int[] locations;
        public int[] trailingMargins;
        public int definedCount = Integer.MIN_VALUE;
        private int maxIndex = Integer.MIN_VALUE;
        public boolean groupBoundsValid = false;
        public boolean forwardLinksValid = false;
        public boolean backwardLinksValid = false;
        public boolean leadingMarginsValid = false;
        public boolean trailingMarginsValid = false;
        public boolean arcsValid = false;
        public boolean locationsValid = false;
        public boolean hasWeightsValid = false;
        boolean orderPreserved = true;
        private MutableInt parentMin = new MutableInt(0);
        private MutableInt parentMax = new MutableInt(-100000);

        public Axis(boolean z10) {
            this.horizontal = z10;
        }

        private void addComponentSizes(List<Arc> list, PackedMap<Interval, MutableInt> packedMap) {
            int i10 = 0;
            while (true) {
                Interval[] intervalArr = packedMap.keys;
                if (i10 >= intervalArr.length) {
                    return;
                }
                include(list, intervalArr[i10], packedMap.values[i10], false);
                i10++;
            }
        }

        private String arcsToString(List<Arc> list) {
            StringBuilder sb2;
            String str = this.horizontal ? "x" : "y";
            StringBuilder sb3 = new StringBuilder();
            boolean z10 = true;
            for (Arc arc : list) {
                if (z10) {
                    z10 = false;
                } else {
                    sb3.append(", ");
                }
                Interval interval = arc.span;
                int i10 = interval.min;
                int i11 = interval.max;
                int i12 = arc.value.value;
                if (i10 < i11) {
                    sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(i11);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i10);
                    sb2.append(">=");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(i10);
                    sb2.append("-");
                    sb2.append(str);
                    sb2.append(i11);
                    sb2.append("<=");
                    i12 = -i12;
                }
                sb2.append(i12);
                sb3.append(sb2.toString());
            }
            return sb3.toString();
        }

        private int calculateMaxIndex() {
            int childCount = GridLayout.this.getChildCount();
            int i10 = -1;
            for (int i11 = 0; i11 < childCount; i11++) {
                LayoutParams layoutParams = GridLayout.this.getLayoutParams(GridLayout.this.getChildAt(i11));
                Interval interval = (this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).span;
                i10 = Math.max(Math.max(Math.max(i10, interval.min), interval.max), interval.size());
            }
            if (i10 == -1) {
                return Integer.MIN_VALUE;
            }
            return i10;
        }

        private float calculateTotalWeight() {
            int childCount = GridLayout.this.getChildCount();
            float f10 = 0.0f;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = GridLayout.this.getChildAt(i10);
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams = GridLayout.this.getLayoutParams(childAt);
                    f10 += (this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).weight;
                }
            }
            return f10;
        }

        private void computeArcs() {
            getForwardLinks();
            getBackwardLinks();
        }

        private void computeGroupBounds() {
            for (Bounds bounds : this.groupBounds.values) {
                bounds.reset();
            }
            int childCount = GridLayout.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = GridLayout.this.getChildAt(i10);
                LayoutParams layoutParams = GridLayout.this.getLayoutParams(childAt);
                boolean z10 = this.horizontal;
                Spec spec = z10 ? layoutParams.columnSpec : layoutParams.rowSpec;
                this.groupBounds.getValue(i10).include(GridLayout.this, childAt, spec, this, GridLayout.this.getMeasurementIncludingMargin(childAt, z10) + (spec.weight == 0.0f ? 0 : getDeltas()[i10]));
            }
        }

        private boolean computeHasWeights() {
            int childCount = GridLayout.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = GridLayout.this.getChildAt(i10);
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams = GridLayout.this.getLayoutParams(childAt);
                    if ((this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).weight != 0.0f) {
                        return true;
                    }
                }
            }
            return false;
        }

        private void computeLinks(PackedMap<Interval, MutableInt> packedMap, boolean z10) {
            for (MutableInt mutableInt : packedMap.values) {
                mutableInt.reset();
            }
            Bounds[] boundsArr = getGroupBounds().values;
            for (int i10 = 0; i10 < boundsArr.length; i10++) {
                int size = boundsArr[i10].size(z10);
                MutableInt value = packedMap.getValue(i10);
                int i11 = value.value;
                if (!z10) {
                    size = -size;
                }
                value.value = Math.max(i11, size);
            }
        }

        private void computeLocations(int[] iArr) {
            if (hasWeights()) {
                solveAndDistributeSpace(iArr);
            } else {
                solve(iArr);
            }
            if (this.orderPreserved) {
                return;
            }
            int i10 = iArr[0];
            int length = iArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                iArr[i11] = iArr[i11] - i10;
            }
        }

        private void computeMargins(boolean z10) {
            int[] iArr = z10 ? this.leadingMargins : this.trailingMargins;
            int childCount = GridLayout.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = GridLayout.this.getChildAt(i10);
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams = GridLayout.this.getLayoutParams(childAt);
                    boolean z11 = this.horizontal;
                    Interval interval = (z11 ? layoutParams.columnSpec : layoutParams.rowSpec).span;
                    int i11 = z10 ? interval.min : interval.max;
                    iArr[i11] = Math.max(iArr[i11], GridLayout.this.getMargin1(childAt, z11, z10));
                }
            }
        }

        private Arc[] createArcs() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            addComponentSizes(arrayList, getForwardLinks());
            addComponentSizes(arrayList2, getBackwardLinks());
            if (this.orderPreserved) {
                int i10 = 0;
                while (i10 < getCount()) {
                    int i11 = i10 + 1;
                    include(arrayList, new Interval(i10, i11), new MutableInt(0));
                    i10 = i11;
                }
            }
            int count = getCount();
            include(arrayList, new Interval(0, count), this.parentMin, false);
            include(arrayList2, new Interval(count, 0), this.parentMax, false);
            return (Arc[]) GridLayout.append(topologicalSort(arrayList), topologicalSort(arrayList2));
        }

        private PackedMap<Spec, Bounds> createGroupBounds() {
            Assoc of2 = Assoc.of(Spec.class, Bounds.class);
            int childCount = GridLayout.this.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                LayoutParams layoutParams = GridLayout.this.getLayoutParams(GridLayout.this.getChildAt(i10));
                boolean z10 = this.horizontal;
                Spec spec = z10 ? layoutParams.columnSpec : layoutParams.rowSpec;
                of2.put(spec, spec.getAbsoluteAlignment(z10).getBounds());
            }
            return of2.pack();
        }

        private PackedMap<Interval, MutableInt> createLinks(boolean z10) {
            Assoc of2 = Assoc.of(Interval.class, MutableInt.class);
            Spec[] specArr = getGroupBounds().keys;
            int length = specArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                of2.put(z10 ? specArr[i10].span : specArr[i10].span.inverse(), new MutableInt());
            }
            return of2.pack();
        }

        private PackedMap<Interval, MutableInt> getBackwardLinks() {
            if (this.backwardLinks == null) {
                this.backwardLinks = createLinks(false);
            }
            if (!this.backwardLinksValid) {
                computeLinks(this.backwardLinks, false);
                this.backwardLinksValid = true;
            }
            return this.backwardLinks;
        }

        private PackedMap<Interval, MutableInt> getForwardLinks() {
            if (this.forwardLinks == null) {
                this.forwardLinks = createLinks(true);
            }
            if (!this.forwardLinksValid) {
                computeLinks(this.forwardLinks, true);
                this.forwardLinksValid = true;
            }
            return this.forwardLinks;
        }

        private int getMaxIndex() {
            if (this.maxIndex == Integer.MIN_VALUE) {
                this.maxIndex = Math.max(0, calculateMaxIndex());
            }
            return this.maxIndex;
        }

        private int getMeasure(int i10, int i11) {
            setParentConstraints(i10, i11);
            return size(getLocations());
        }

        private boolean hasWeights() {
            if (!this.hasWeightsValid) {
                this.hasWeights = computeHasWeights();
                this.hasWeightsValid = true;
            }
            return this.hasWeights;
        }

        private void include(List<Arc> list, Interval interval, MutableInt mutableInt, boolean z10) {
            if (interval.size() == 0) {
                return;
            }
            if (z10) {
                Iterator<Arc> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().span.equals(interval)) {
                        return;
                    }
                }
            }
            list.add(new Arc(interval, mutableInt));
        }

        private void init(int[] iArr) {
            Arrays.fill(iArr, 0);
        }

        private void logError(String str, Arc[] arcArr, boolean[] zArr) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i10 = 0; i10 < arcArr.length; i10++) {
                Arc arc = arcArr[i10];
                if (zArr[i10]) {
                    arrayList.add(arc);
                }
                if (!arc.valid) {
                    arrayList2.add(arc);
                }
            }
            GridLayout.this.mPrinter.println(str + " constraints: " + arcsToString(arrayList) + " are inconsistent; permanently removing: " + arcsToString(arrayList2) + ". ");
        }

        private boolean relax(int[] iArr, Arc arc) {
            if (!arc.valid) {
                return false;
            }
            Interval interval = arc.span;
            int i10 = interval.min;
            int i11 = interval.max;
            int i12 = iArr[i10] + arc.value.value;
            if (i12 <= iArr[i11]) {
                return false;
            }
            iArr[i11] = i12;
            return true;
        }

        private void setParentConstraints(int i10, int i11) {
            this.parentMin.value = i10;
            this.parentMax.value = -i11;
            this.locationsValid = false;
        }

        private void shareOutDelta(int i10, float f10) {
            Arrays.fill(this.deltas, 0);
            int childCount = GridLayout.this.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = GridLayout.this.getChildAt(i11);
                if (childAt.getVisibility() != 8) {
                    LayoutParams layoutParams = GridLayout.this.getLayoutParams(childAt);
                    float f11 = (this.horizontal ? layoutParams.columnSpec : layoutParams.rowSpec).weight;
                    if (f11 != 0.0f) {
                        int round = Math.round((i10 * f11) / f10);
                        this.deltas[i11] = round;
                        i10 -= round;
                        f10 -= f11;
                    }
                }
            }
        }

        private int size(int[] iArr) {
            return iArr[getCount()];
        }

        private boolean solve(Arc[] arcArr, int[] iArr) {
            return solve(arcArr, iArr, true);
        }

        private void solveAndDistributeSpace(int[] iArr) {
            Arrays.fill(getDeltas(), 0);
            solve(iArr);
            boolean z10 = true;
            int childCount = (this.parentMin.value * GridLayout.this.getChildCount()) + 1;
            if (childCount < 2) {
                return;
            }
            float calculateTotalWeight = calculateTotalWeight();
            int i10 = -1;
            int i11 = 0;
            while (i11 < childCount) {
                int i12 = (int) ((i11 + childCount) / 2);
                invalidateValues();
                shareOutDelta(i12, calculateTotalWeight);
                boolean solve = solve(getArcs(), iArr, false);
                if (solve) {
                    i11 = i12 + 1;
                    i10 = i12;
                } else {
                    childCount = i12;
                }
                z10 = solve;
            }
            if (i10 <= 0 || z10) {
                return;
            }
            invalidateValues();
            shareOutDelta(i10, calculateTotalWeight);
            solve(iArr);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.gridlayout.widget.GridLayout$Axis$1] */
        private Arc[] topologicalSort(Arc[] arcArr) {
            return new Object(arcArr) {
                static final boolean $assertionsDisabled = false;
                Arc[][] arcsByVertex;
                int cursor;
                Arc[] result;
                final Arc[] val$arcs;
                int[] visited;

                {
                    this.val$arcs = arcArr;
                    this.result = new Arc[arcArr.length];
                    this.cursor = r0.length - 1;
                    this.arcsByVertex = Axis.this.groupArcsByFirstVertex(arcArr);
                    this.visited = new int[Axis.this.getCount() + 1];
                }

                public Arc[] sort() {
                    int length = this.arcsByVertex.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        walk(i10);
                    }
                    return this.result;
                }

                public void walk(int i10) {
                    int[] iArr = this.visited;
                    if (iArr[i10] != 0) {
                        return;
                    }
                    iArr[i10] = 1;
                    for (Arc arc : this.arcsByVertex[i10]) {
                        walk(arc.span.max);
                        Arc[] arcArr2 = this.result;
                        int i11 = this.cursor;
                        this.cursor = i11 - 1;
                        arcArr2[i11] = arc;
                    }
                    this.visited[i10] = 2;
                }
            }.sort();
        }

        public Arc[] getArcs() {
            if (this.arcs == null) {
                this.arcs = createArcs();
            }
            if (!this.arcsValid) {
                computeArcs();
                this.arcsValid = true;
            }
            return this.arcs;
        }

        public int getCount() {
            return Math.max(this.definedCount, getMaxIndex());
        }

        public int[] getDeltas() {
            if (this.deltas == null) {
                this.deltas = new int[GridLayout.this.getChildCount()];
            }
            return this.deltas;
        }

        public PackedMap<Spec, Bounds> getGroupBounds() {
            if (this.groupBounds == null) {
                this.groupBounds = createGroupBounds();
            }
            if (!this.groupBoundsValid) {
                computeGroupBounds();
                this.groupBoundsValid = true;
            }
            return this.groupBounds;
        }

        public int[] getLeadingMargins() {
            if (this.leadingMargins == null) {
                this.leadingMargins = new int[getCount() + 1];
            }
            if (!this.leadingMarginsValid) {
                computeMargins(true);
                this.leadingMarginsValid = true;
            }
            return this.leadingMargins;
        }

        public int[] getLocations() {
            if (this.locations == null) {
                this.locations = new int[getCount() + 1];
            }
            if (!this.locationsValid) {
                computeLocations(this.locations);
                this.locationsValid = true;
            }
            return this.locations;
        }

        public int[] getTrailingMargins() {
            if (this.trailingMargins == null) {
                this.trailingMargins = new int[getCount() + 1];
            }
            if (!this.trailingMarginsValid) {
                computeMargins(false);
                this.trailingMarginsValid = true;
            }
            return this.trailingMargins;
        }

        public Arc[][] groupArcsByFirstVertex(Arc[] arcArr) {
            int count = getCount() + 1;
            Arc[][] arcArr2 = new Arc[count];
            int[] iArr = new int[count];
            for (Arc arc : arcArr) {
                int i10 = arc.span.min;
                iArr[i10] = iArr[i10] + 1;
            }
            for (int i11 = 0; i11 < count; i11++) {
                arcArr2[i11] = new Arc[iArr[i11]];
            }
            Arrays.fill(iArr, 0);
            for (Arc arc2 : arcArr) {
                int i12 = arc2.span.min;
                Arc[] arcArr3 = arcArr2[i12];
                int i13 = iArr[i12];
                iArr[i12] = i13 + 1;
                arcArr3[i13] = arc2;
            }
            return arcArr2;
        }

        public void invalidateStructure() {
            this.maxIndex = Integer.MIN_VALUE;
            this.groupBounds = null;
            this.forwardLinks = null;
            this.backwardLinks = null;
            this.leadingMargins = null;
            this.trailingMargins = null;
            this.arcs = null;
            this.locations = null;
            this.deltas = null;
            this.hasWeightsValid = false;
            invalidateValues();
        }

        public void invalidateValues() {
            this.groupBoundsValid = false;
            this.forwardLinksValid = false;
            this.backwardLinksValid = false;
            this.leadingMarginsValid = false;
            this.trailingMarginsValid = false;
            this.arcsValid = false;
            this.locationsValid = false;
        }

        public boolean isOrderPreserved() {
            return this.orderPreserved;
        }

        public void layout(int i10) {
            setParentConstraints(i10, i10);
            getLocations();
        }

        public void setCount(int i10) {
            if (i10 != Integer.MIN_VALUE && i10 < getMaxIndex()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.horizontal ? "column" : "row");
                sb2.append("Count must be greater than or equal to the maximum of all grid indices ");
                sb2.append("(and spans) defined in the LayoutParams of each child");
                GridLayout.handleInvalidParams(sb2.toString());
            }
            this.definedCount = i10;
        }

        public void setOrderPreserved(boolean z10) {
            this.orderPreserved = z10;
            invalidateStructure();
        }

        private boolean solve(Arc[] arcArr, int[] iArr, boolean z10) {
            String str = this.horizontal ? "horizontal" : "vertical";
            int count = getCount() + 1;
            boolean[] zArr = null;
            for (int i10 = 0; i10 < arcArr.length; i10++) {
                init(iArr);
                for (int i11 = 0; i11 < count; i11++) {
                    boolean z11 = false;
                    for (Arc arc : arcArr) {
                        z11 |= relax(iArr, arc);
                    }
                    if (!z11) {
                        if (zArr != null) {
                            logError(str, arcArr, zArr);
                        }
                        return true;
                    }
                }
                if (!z10) {
                    return false;
                }
                boolean[] zArr2 = new boolean[arcArr.length];
                for (int i12 = 0; i12 < count; i12++) {
                    int length = arcArr.length;
                    for (int i13 = 0; i13 < length; i13++) {
                        zArr2[i13] = zArr2[i13] | relax(iArr, arcArr[i13]);
                    }
                }
                if (i10 == 0) {
                    zArr = zArr2;
                }
                int i14 = 0;
                while (true) {
                    if (i14 >= arcArr.length) {
                        break;
                    }
                    if (zArr2[i14]) {
                        Arc arc2 = arcArr[i14];
                        Interval interval = arc2.span;
                        if (interval.min >= interval.max) {
                            arc2.valid = false;
                            break;
                        }
                    }
                    i14++;
                }
            }
            return true;
        }

        private Arc[] topologicalSort(List<Arc> list) {
            return topologicalSort((Arc[]) list.toArray(new Arc[list.size()]));
        }

        public int getMeasure(int i10) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            if (mode == Integer.MIN_VALUE) {
                return getMeasure(0, size);
            }
            if (mode == 0) {
                return getMeasure(0, 100000);
            }
            if (mode != 1073741824) {
                return 0;
            }
            return getMeasure(size, size);
        }

        private void include(List<Arc> list, Interval interval, MutableInt mutableInt) {
            include(list, interval, mutableInt, true);
        }

        private boolean solve(int[] iArr) {
            return solve(getArcs(), iArr);
        }
    }

    public static final class Interval {
        public final int max;
        public final int min;

        public Interval(int i10, int i11) {
            this.min = i10;
            this.max = i11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Interval.class != obj.getClass()) {
                return false;
            }
            Interval interval = (Interval) obj;
            return this.max == interval.max && this.min == interval.min;
        }

        public int hashCode() {
            return (this.min * 31) + this.max;
        }

        public Interval inverse() {
            return new Interval(this.max, this.min);
        }

        public int size() {
            return this.max - this.min;
        }

        public String toString() {
            return "[" + this.min + ", " + this.max + "]";
        }
    }

    public static final class PackedMap<K, V> {
        public final int[] index;
        public final K[] keys;
        public final V[] values;

        public PackedMap(K[] kArr, V[] vArr) {
            int[] createIndex = createIndex(kArr);
            this.index = createIndex;
            this.keys = (K[]) compact(kArr, createIndex);
            this.values = (V[]) compact(vArr, createIndex);
        }

        private static <K> K[] compact(K[] kArr, int[] iArr) {
            int length = kArr.length;
            K[] kArr2 = (K[]) ((Object[]) Array.newInstance(kArr.getClass().getComponentType(), GridLayout.max2(iArr, -1) + 1));
            for (int i10 = 0; i10 < length; i10++) {
                kArr2[iArr[i10]] = kArr[i10];
            }
            return kArr2;
        }

        private static <K> int[] createIndex(K[] kArr) {
            int length = kArr.length;
            int[] iArr = new int[length];
            HashMap hashMap = new HashMap();
            for (int i10 = 0; i10 < length; i10++) {
                K k10 = kArr[i10];
                Integer num = (Integer) hashMap.get(k10);
                if (num == null) {
                    num = Integer.valueOf(hashMap.size());
                    hashMap.put(k10, num);
                }
                iArr[i10] = num.intValue();
            }
            return iArr;
        }

        public V getValue(int i10) {
            return this.values[this.index[i10]];
        }
    }

    static {
        Alignment alignment = new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                return 0;
            }

            @Override
            public String getDebugString() {
                return "LEADING";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return 0;
            }
        };
        LEADING = alignment;
        Alignment alignment2 = new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                return i10;
            }

            @Override
            public String getDebugString() {
                return "TRAILING";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return i10;
            }
        };
        TRAILING = alignment2;
        TOP = alignment;
        BOTTOM = alignment2;
        START = alignment;
        END = alignment2;
        LEFT = createSwitchingAlignment(alignment, alignment2);
        RIGHT = createSwitchingAlignment(alignment2, alignment);
        CENTER = new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                return i10 >> 1;
            }

            @Override
            public String getDebugString() {
                return "CENTER";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return i10 >> 1;
            }
        };
        BASELINE = new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                if (view.getVisibility() == 8) {
                    return 0;
                }
                int baseline = view.getBaseline();
                if (baseline == -1) {
                    return Integer.MIN_VALUE;
                }
                return baseline;
            }

            @Override
            public Bounds getBounds() {
                return new Bounds() {
                    private int size;

                    @Override
                    public int getOffset(GridLayout gridLayout, View view, Alignment alignment3, int i10, boolean z10) {
                        return Math.max(0, super.getOffset(gridLayout, view, alignment3, i10, z10));
                    }

                    @Override
                    public void include(int i10, int i11) {
                        super.include(i10, i11);
                        this.size = Math.max(this.size, i10 + i11);
                    }

                    @Override
                    public void reset() {
                        super.reset();
                        this.size = Integer.MIN_VALUE;
                    }

                    @Override
                    public int size(boolean z10) {
                        return Math.max(super.size(z10), this.size);
                    }
                };
            }

            @Override
            public String getDebugString() {
                return "BASELINE";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return 0;
            }
        };
        FILL = new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                return Integer.MIN_VALUE;
            }

            @Override
            public String getDebugString() {
                return "FILL";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return 0;
            }

            @Override
            public int getSizeInCell(View view, int i10, int i11) {
                return i11;
            }
        };
    }

    public GridLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mHorizontalAxis = new Axis(true);
        this.mVerticalAxis = new Axis(false);
        this.mOrientation = 0;
        this.mUseDefaultMargins = false;
        this.mAlignmentMode = 1;
        this.mLastLayoutParamsHashCode = 0;
        this.mPrinter = LOG_PRINTER;
        this.mDefaultGap = context.getResources().getDimensionPixelOffset(R.dimen.default_gap);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GridLayout);
        try {
            setRowCount(obtainStyledAttributes.getInt(ROW_COUNT, Integer.MIN_VALUE));
            setColumnCount(obtainStyledAttributes.getInt(COLUMN_COUNT, Integer.MIN_VALUE));
            setOrientation(obtainStyledAttributes.getInt(ORIENTATION, 0));
            setUseDefaultMargins(obtainStyledAttributes.getBoolean(USE_DEFAULT_MARGINS, false));
            setAlignmentMode(obtainStyledAttributes.getInt(ALIGNMENT_MODE, 1));
            setRowOrderPreserved(obtainStyledAttributes.getBoolean(ROW_ORDER_PRESERVED, true));
            setColumnOrderPreserved(obtainStyledAttributes.getBoolean(COLUMN_ORDER_PRESERVED, true));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int adjust(int i10, int i11) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i11 + i10), View.MeasureSpec.getMode(i10));
    }

    public static <T> T[] append(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static boolean canStretch(int i10) {
        return (i10 & 2) != 0;
    }

    private void checkLayoutParams(LayoutParams layoutParams, boolean z10) {
        String str = z10 ? "column" : "row";
        Interval interval = (z10 ? layoutParams.columnSpec : layoutParams.rowSpec).span;
        int i10 = interval.min;
        if (i10 != Integer.MIN_VALUE && i10 < 0) {
            handleInvalidParams(str + " indices must be positive");
        }
        int i11 = (z10 ? this.mHorizontalAxis : this.mVerticalAxis).definedCount;
        if (i11 != Integer.MIN_VALUE) {
            if (interval.max > i11) {
                handleInvalidParams(str + " indices (start + span) mustn't exceed the " + str + " count");
            }
            if (interval.size() > i11) {
                handleInvalidParams(str + " span mustn't exceed the " + str + " count");
            }
        }
    }

    private static int clip(Interval interval, boolean z10, int i10) {
        int size = interval.size();
        if (i10 == 0) {
            return size;
        }
        return Math.min(size, i10 - (z10 ? Math.min(interval.min, i10) : 0));
    }

    private int computeLayoutParamsHashCode() {
        int childCount = getChildCount();
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                i10 = (i10 * 31) + ((LayoutParams) childAt.getLayoutParams()).hashCode();
            }
        }
        return i10;
    }

    private void consistencyCheck() {
        int i10 = this.mLastLayoutParamsHashCode;
        if (i10 == 0) {
            validateLayoutParams();
            this.mLastLayoutParamsHashCode = computeLayoutParamsHashCode();
        } else if (i10 != computeLayoutParamsHashCode()) {
            this.mPrinter.println("The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec.");
            invalidateStructure();
            consistencyCheck();
        }
    }

    private static Alignment createSwitchingAlignment(final Alignment alignment, final Alignment alignment2) {
        return new Alignment() {
            @Override
            public int getAlignmentValue(View view, int i10, int i11) {
                return (ViewCompat.getLayoutDirection(view) == 1 ? alignment2 : Alignment.this).getAlignmentValue(view, i10, i11);
            }

            @Override
            public String getDebugString() {
                return "SWITCHING[L:" + Alignment.this.getDebugString() + ", R:" + alignment2.getDebugString() + "]";
            }

            @Override
            public int getGravityOffset(View view, int i10) {
                return (ViewCompat.getLayoutDirection(view) == 1 ? alignment2 : Alignment.this).getGravityOffset(view, i10);
            }
        };
    }

    private void drawLine(Canvas canvas, int i10, int i11, int i12, int i13, Paint paint) {
        if (!isLayoutRtlCompat()) {
            canvas.drawLine(i10, i11, i12, i13, paint);
        } else {
            int width = getWidth();
            canvas.drawLine(width - i10, i11, width - i12, i13, paint);
        }
    }

    private static boolean fits(int[] iArr, int i10, int i11, int i12) {
        if (i12 > iArr.length) {
            return false;
        }
        while (i11 < i12) {
            if (iArr[i11] > i10) {
                return false;
            }
            i11++;
        }
        return true;
    }

    public static Alignment getAlignment(int i10, boolean z10) {
        int i11 = (i10 & (z10 ? 7 : 112)) >> (z10 ? 0 : 4);
        return i11 != 1 ? i11 != 3 ? i11 != 5 ? i11 != 7 ? i11 != 8388611 ? i11 != 8388613 ? UNDEFINED_ALIGNMENT : END : START : FILL : z10 ? RIGHT : BOTTOM : z10 ? LEFT : TOP : CENTER;
    }

    private int getDefaultMargin(View view, boolean z10, boolean z11) {
        if (view.getClass() == Space.class || view.getClass() == android.widget.Space.class) {
            return 0;
        }
        return this.mDefaultGap / 2;
    }

    private int getMargin(View view, boolean z10, boolean z11) {
        if (this.mAlignmentMode == 1) {
            return getMargin1(view, z10, z11);
        }
        Axis axis = z10 ? this.mHorizontalAxis : this.mVerticalAxis;
        int[] leadingMargins = z11 ? axis.getLeadingMargins() : axis.getTrailingMargins();
        LayoutParams layoutParams = getLayoutParams(view);
        Interval interval = (z10 ? layoutParams.columnSpec : layoutParams.rowSpec).span;
        return leadingMargins[z11 ? interval.min : interval.max];
    }

    private int getMeasurement(View view, boolean z10) {
        return z10 ? view.getMeasuredWidth() : view.getMeasuredHeight();
    }

    private int getTotalMargin(View view, boolean z10) {
        return getMargin(view, z10, true) + getMargin(view, z10, false);
    }

    public static void handleInvalidParams(String str) {
        throw new IllegalArgumentException(str + ". ");
    }

    private void invalidateStructure() {
        this.mLastLayoutParamsHashCode = 0;
        Axis axis = this.mHorizontalAxis;
        if (axis != null) {
            axis.invalidateStructure();
        }
        Axis axis2 = this.mVerticalAxis;
        if (axis2 != null) {
            axis2.invalidateStructure();
        }
        invalidateValues();
    }

    private void invalidateValues() {
        Axis axis = this.mHorizontalAxis;
        if (axis == null || this.mVerticalAxis == null) {
            return;
        }
        axis.invalidateValues();
        this.mVerticalAxis.invalidateValues();
    }

    private boolean isLayoutRtlCompat() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public static int max2(int[] iArr, int i10) {
        for (int i11 : iArr) {
            i10 = Math.max(i10, i11);
        }
        return i10;
    }

    private void measureChildWithMargins2(View view, int i10, int i11, int i12, int i13) {
        view.measure(ViewGroup.getChildMeasureSpec(i10, getTotalMargin(view, true), i12), ViewGroup.getChildMeasureSpec(i11, getTotalMargin(view, false), i13));
    }

    private void measureChildrenWithMargins(int i10, int i11, boolean z10) {
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = getLayoutParams(childAt);
                if (z10) {
                    measureChildWithMargins2(childAt, i10, i11, layoutParams.width, layoutParams.height);
                } else {
                    boolean z11 = this.mOrientation == 0;
                    Spec spec = z11 ? layoutParams.columnSpec : layoutParams.rowSpec;
                    if (spec.getAbsoluteAlignment(z11) == FILL) {
                        Interval interval = spec.span;
                        int[] locations = (z11 ? this.mHorizontalAxis : this.mVerticalAxis).getLocations();
                        int totalMargin = (locations[interval.max] - locations[interval.min]) - getTotalMargin(childAt, z11);
                        if (z11) {
                            measureChildWithMargins2(childAt, i10, i11, totalMargin, layoutParams.height);
                        } else {
                            measureChildWithMargins2(childAt, i10, i11, layoutParams.width, totalMargin);
                        }
                    }
                }
            }
        }
    }

    private static void procrusteanFill(int[] iArr, int i10, int i11, int i12) {
        int length = iArr.length;
        Arrays.fill(iArr, Math.min(i10, length), Math.min(i11, length), i12);
    }

    private static void setCellGroup(LayoutParams layoutParams, int i10, int i11, int i12, int i13) {
        layoutParams.setRowSpecSpan(new Interval(i10, i11 + i10));
        layoutParams.setColumnSpecSpan(new Interval(i12, i13 + i12));
    }

    public static Spec spec(int i10, int i11, Alignment alignment, float f10) {
        return new Spec(i10 != Integer.MIN_VALUE, i10, i11, alignment, f10);
    }

    private void validateLayoutParams() {
        boolean z10 = this.mOrientation == 0;
        int i10 = (z10 ? this.mHorizontalAxis : this.mVerticalAxis).definedCount;
        if (i10 == Integer.MIN_VALUE) {
            i10 = 0;
        }
        int[] iArr = new int[i10];
        int childCount = getChildCount();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i13).getLayoutParams();
            Spec spec = z10 ? layoutParams.rowSpec : layoutParams.columnSpec;
            Interval interval = spec.span;
            boolean z11 = spec.startDefined;
            int size = interval.size();
            if (z11) {
                i11 = interval.min;
            }
            Spec spec2 = z10 ? layoutParams.columnSpec : layoutParams.rowSpec;
            Interval interval2 = spec2.span;
            boolean z12 = spec2.startDefined;
            int clip = clip(interval2, z12, i10);
            if (z12) {
                i12 = interval2.min;
            }
            if (i10 != 0) {
                if (!z11 || !z12) {
                    while (true) {
                        int i14 = i12 + clip;
                        if (fits(iArr, i11, i12, i14)) {
                            break;
                        }
                        if (z12) {
                            i11++;
                        } else if (i14 <= i10) {
                            i12++;
                        } else {
                            i11++;
                            i12 = 0;
                        }
                    }
                }
                procrusteanFill(iArr, i12, i12 + clip, i11 + size);
            }
            if (z10) {
                setCellGroup(layoutParams, i11, size, i12, clip);
            } else {
                setCellGroup(layoutParams, i12, clip, i11, size);
            }
            i12 += clip;
        }
    }

    public int getAlignmentMode() {
        return this.mAlignmentMode;
    }

    public int getColumnCount() {
        return this.mHorizontalAxis.getCount();
    }

    public final LayoutParams getLayoutParams(View view) {
        return (LayoutParams) view.getLayoutParams();
    }

    public int getMargin1(View view, boolean z10, boolean z11) {
        LayoutParams layoutParams = getLayoutParams(view);
        int i10 = z10 ? z11 ? layoutParams.leftMargin : layoutParams.rightMargin : z11 ? layoutParams.topMargin : layoutParams.bottomMargin;
        return i10 == Integer.MIN_VALUE ? getDefaultMargin(view, layoutParams, z10, z11) : i10;
    }

    public final int getMeasurementIncludingMargin(View view, boolean z10) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return getMeasurement(view, z10) + getTotalMargin(view, z10);
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public Printer getPrinter() {
        return this.mPrinter;
    }

    public int getRowCount() {
        return this.mVerticalAxis.getCount();
    }

    public boolean getUseDefaultMargins() {
        return this.mUseDefaultMargins;
    }

    public boolean isColumnOrderPreserved() {
        return this.mHorizontalAxis.isOrderPreserved();
    }

    public boolean isRowOrderPreserved() {
        return this.mVerticalAxis.isOrderPreserved();
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int[] iArr;
        GridLayout gridLayout = this;
        consistencyCheck();
        int i14 = i12 - i10;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        gridLayout.mHorizontalAxis.layout((i14 - paddingLeft) - paddingRight);
        gridLayout.mVerticalAxis.layout(((i13 - i11) - paddingTop) - paddingBottom);
        int[] locations = gridLayout.mHorizontalAxis.getLocations();
        int[] locations2 = gridLayout.mVerticalAxis.getLocations();
        int childCount = getChildCount();
        boolean z11 = false;
        int i15 = 0;
        while (i15 < childCount) {
            View childAt = gridLayout.getChildAt(i15);
            if (childAt.getVisibility() == 8) {
                iArr = locations;
            } else {
                LayoutParams layoutParams = gridLayout.getLayoutParams(childAt);
                Spec spec = layoutParams.columnSpec;
                Spec spec2 = layoutParams.rowSpec;
                Interval interval = spec.span;
                Interval interval2 = spec2.span;
                int i16 = locations[interval.min];
                int i17 = locations2[interval2.min];
                int i18 = locations[interval.max] - i16;
                int i19 = locations2[interval2.max] - i17;
                int measurement = gridLayout.getMeasurement(childAt, true);
                int measurement2 = gridLayout.getMeasurement(childAt, z11);
                Alignment absoluteAlignment = spec.getAbsoluteAlignment(true);
                Alignment absoluteAlignment2 = spec2.getAbsoluteAlignment(z11);
                Bounds value = gridLayout.mHorizontalAxis.getGroupBounds().getValue(i15);
                Bounds value2 = gridLayout.mVerticalAxis.getGroupBounds().getValue(i15);
                iArr = locations;
                int gravityOffset = absoluteAlignment.getGravityOffset(childAt, i18 - value.size(true));
                int gravityOffset2 = absoluteAlignment2.getGravityOffset(childAt, i19 - value2.size(true));
                int margin = gridLayout.getMargin(childAt, true, true);
                int margin2 = gridLayout.getMargin(childAt, false, true);
                int margin3 = gridLayout.getMargin(childAt, true, false);
                int i20 = margin + margin3;
                int margin4 = margin2 + gridLayout.getMargin(childAt, false, false);
                int offset = value.getOffset(this, childAt, absoluteAlignment, measurement + i20, true);
                int offset2 = value2.getOffset(this, childAt, absoluteAlignment2, measurement2 + margin4, false);
                int sizeInCell = absoluteAlignment.getSizeInCell(childAt, measurement, i18 - i20);
                int sizeInCell2 = absoluteAlignment2.getSizeInCell(childAt, measurement2, i19 - margin4);
                int i21 = i16 + gravityOffset + offset;
                int i22 = !isLayoutRtlCompat() ? paddingLeft + margin + i21 : (((i14 - sizeInCell) - paddingRight) - margin3) - i21;
                int i23 = paddingTop + i17 + gravityOffset2 + offset2 + margin2;
                if (sizeInCell != childAt.getMeasuredWidth() || sizeInCell2 != childAt.getMeasuredHeight()) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(sizeInCell, 1073741824), View.MeasureSpec.makeMeasureSpec(sizeInCell2, 1073741824));
                }
                childAt.layout(i22, i23, sizeInCell + i22, sizeInCell2 + i23);
            }
            i15++;
            z11 = false;
            gridLayout = this;
            locations = iArr;
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int measure;
        int i12;
        consistencyCheck();
        invalidateValues();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int adjust = adjust(i10, -paddingLeft);
        int adjust2 = adjust(i11, -paddingTop);
        measureChildrenWithMargins(adjust, adjust2, true);
        if (this.mOrientation == 0) {
            measure = this.mHorizontalAxis.getMeasure(adjust);
            measureChildrenWithMargins(adjust, adjust2, false);
            i12 = this.mVerticalAxis.getMeasure(adjust2);
        } else {
            int measure2 = this.mVerticalAxis.getMeasure(adjust2);
            measureChildrenWithMargins(adjust, adjust2, false);
            measure = this.mHorizontalAxis.getMeasure(adjust);
            i12 = measure2;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(measure + paddingLeft, getSuggestedMinimumWidth()), i10, 0), View.resolveSizeAndState(Math.max(i12 + paddingTop, getSuggestedMinimumHeight()), i11, 0));
    }

    @Override
    public void requestLayout() {
        super.requestLayout();
        invalidateStructure();
    }

    public void setAlignmentMode(int i10) {
        this.mAlignmentMode = i10;
        requestLayout();
    }

    public void setColumnCount(int i10) {
        this.mHorizontalAxis.setCount(i10);
        invalidateStructure();
        requestLayout();
    }

    public void setColumnOrderPreserved(boolean z10) {
        this.mHorizontalAxis.setOrderPreserved(z10);
        invalidateStructure();
        requestLayout();
    }

    public void setOrientation(int i10) {
        if (this.mOrientation != i10) {
            this.mOrientation = i10;
            invalidateStructure();
            requestLayout();
        }
    }

    public void setPrinter(Printer printer) {
        if (printer == null) {
            printer = NO_PRINTER;
        }
        this.mPrinter = printer;
    }

    public void setRowCount(int i10) {
        this.mVerticalAxis.setCount(i10);
        invalidateStructure();
        requestLayout();
    }

    public void setRowOrderPreserved(boolean z10) {
        this.mVerticalAxis.setOrderPreserved(z10);
        invalidateStructure();
        requestLayout();
    }

    public void setUseDefaultMargins(boolean z10) {
        this.mUseDefaultMargins = z10;
        requestLayout();
    }

    public static class Bounds {
        public int after;
        public int before;
        public int flexibility;

        public Bounds() {
            reset();
        }

        public int getOffset(GridLayout gridLayout, View view, Alignment alignment, int i10, boolean z10) {
            return this.before - alignment.getAlignmentValue(view, i10, ViewGroupCompat.getLayoutMode(gridLayout));
        }

        public void include(int i10, int i11) {
            this.before = Math.max(this.before, i10);
            this.after = Math.max(this.after, i11);
        }

        public void reset() {
            this.before = Integer.MIN_VALUE;
            this.after = Integer.MIN_VALUE;
            this.flexibility = 2;
        }

        public int size(boolean z10) {
            if (z10 || !GridLayout.canStretch(this.flexibility)) {
                return this.before + this.after;
            }
            return 100000;
        }

        public String toString() {
            return "Bounds{before=" + this.before + ", after=" + this.after + JavaElement.JEM_ANNOTATION;
        }

        public final void include(GridLayout gridLayout, View view, Spec spec, Axis axis, int i10) {
            this.flexibility &= spec.getFlexibility();
            int alignmentValue = spec.getAbsoluteAlignment(axis.horizontal).getAlignmentValue(view, i10, ViewGroupCompat.getLayoutMode(gridLayout));
            include(alignmentValue, i10 - alignmentValue);
        }
    }

    public static final class MutableInt {
        public int value;

        public MutableInt() {
            reset();
        }

        public void reset() {
            this.value = Integer.MIN_VALUE;
        }

        public String toString() {
            return Integer.toString(this.value);
        }

        public MutableInt(int i10) {
            this.value = i10;
        }
    }

    public static Spec spec(int i10, Alignment alignment, float f10) {
        return spec(i10, 1, alignment, f10);
    }

    @Override
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public static Spec spec(int i10, int i11, float f10) {
        return spec(i10, i11, UNDEFINED_ALIGNMENT, f10);
    }

    @Override
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    private int getDefaultMargin(View view, boolean z10, boolean z11, boolean z12) {
        return getDefaultMargin(view, z11, z12);
    }

    public static Spec spec(int i10, float f10) {
        return spec(i10, 1, f10);
    }

    @Override
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public static class Spec {
        static final float DEFAULT_WEIGHT = 0.0f;
        static final Spec UNDEFINED = GridLayout.spec(Integer.MIN_VALUE);
        final Alignment alignment;
        final Interval span;
        final boolean startDefined;
        final float weight;

        private Spec(boolean z10, Interval interval, Alignment alignment, float f10) {
            this.startDefined = z10;
            this.span = interval;
            this.alignment = alignment;
            this.weight = f10;
        }

        public final Spec copyWriteAlignment(Alignment alignment) {
            return new Spec(this.startDefined, this.span, alignment, this.weight);
        }

        public final Spec copyWriteSpan(Interval interval) {
            return new Spec(this.startDefined, interval, this.alignment, this.weight);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Spec spec = (Spec) obj;
            return this.alignment.equals(spec.alignment) && this.span.equals(spec.span);
        }

        public Alignment getAbsoluteAlignment(boolean z10) {
            Alignment alignment = this.alignment;
            return alignment != GridLayout.UNDEFINED_ALIGNMENT ? alignment : this.weight == 0.0f ? z10 ? GridLayout.START : GridLayout.BASELINE : GridLayout.FILL;
        }

        public final int getFlexibility() {
            return (this.alignment == GridLayout.UNDEFINED_ALIGNMENT && this.weight == 0.0f) ? 0 : 2;
        }

        public int hashCode() {
            return (this.span.hashCode() * 31) + this.alignment.hashCode();
        }

        public Spec(boolean z10, int i10, int i11, Alignment alignment, float f10) {
            this(z10, new Interval(i10, i11 + i10), alignment, f10);
        }
    }

    private int getDefaultMargin(View view, LayoutParams layoutParams, boolean z10, boolean z11) {
        boolean z12 = false;
        if (!this.mUseDefaultMargins) {
            return 0;
        }
        Spec spec = z10 ? layoutParams.columnSpec : layoutParams.rowSpec;
        Axis axis = z10 ? this.mHorizontalAxis : this.mVerticalAxis;
        Interval interval = spec.span;
        if (!((z10 && isLayoutRtlCompat()) ? !z11 : z11) ? interval.max == axis.getCount() : interval.min == 0) {
            z12 = true;
        }
        return getDefaultMargin(view, z12, z10, z11);
    }

    public static Spec spec(int i10, int i11, Alignment alignment) {
        return spec(i10, i11, alignment, 0.0f);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int BOTTOM_MARGIN;
        private static final int COLUMN;
        private static final int COLUMN_SPAN;
        private static final int COLUMN_WEIGHT;
        private static final int DEFAULT_COLUMN = Integer.MIN_VALUE;
        private static final int DEFAULT_HEIGHT = -2;
        private static final int DEFAULT_MARGIN = Integer.MIN_VALUE;
        private static final int DEFAULT_ROW = Integer.MIN_VALUE;
        private static final Interval DEFAULT_SPAN;
        private static final int DEFAULT_SPAN_SIZE;
        private static final int DEFAULT_WIDTH = -2;
        private static final int GRAVITY;
        private static final int LEFT_MARGIN;
        private static final int MARGIN;
        private static final int RIGHT_MARGIN;
        private static final int ROW;
        private static final int ROW_SPAN;
        private static final int ROW_WEIGHT;
        private static final int TOP_MARGIN;
        public Spec columnSpec;
        public Spec rowSpec;

        static {
            Interval interval = new Interval(Integer.MIN_VALUE, C14289h.f97343g);
            DEFAULT_SPAN = interval;
            DEFAULT_SPAN_SIZE = interval.size();
            MARGIN = R.styleable.GridLayout_Layout_android_layout_margin;
            LEFT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginLeft;
            TOP_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginTop;
            RIGHT_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginRight;
            BOTTOM_MARGIN = R.styleable.GridLayout_Layout_android_layout_marginBottom;
            COLUMN = R.styleable.GridLayout_Layout_layout_column;
            COLUMN_SPAN = R.styleable.GridLayout_Layout_layout_columnSpan;
            COLUMN_WEIGHT = R.styleable.GridLayout_Layout_layout_columnWeight;
            ROW = R.styleable.GridLayout_Layout_layout_row;
            ROW_SPAN = R.styleable.GridLayout_Layout_layout_rowSpan;
            ROW_WEIGHT = R.styleable.GridLayout_Layout_layout_rowWeight;
            GRAVITY = R.styleable.GridLayout_Layout_layout_gravity;
        }

        private LayoutParams(int i10, int i11, int i12, int i13, int i14, int i15, Spec spec, Spec spec2) {
            super(i10, i11);
            Spec spec3 = Spec.UNDEFINED;
            this.rowSpec = spec3;
            this.columnSpec = spec3;
            setMargins(i12, i13, i14, i15);
            this.rowSpec = spec;
            this.columnSpec = spec2;
        }

        private void init(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GridLayout_Layout);
            try {
                int i10 = obtainStyledAttributes.getInt(GRAVITY, 0);
                int i11 = obtainStyledAttributes.getInt(COLUMN, Integer.MIN_VALUE);
                int i12 = COLUMN_SPAN;
                int i13 = DEFAULT_SPAN_SIZE;
                this.columnSpec = GridLayout.spec(i11, obtainStyledAttributes.getInt(i12, i13), GridLayout.getAlignment(i10, true), obtainStyledAttributes.getFloat(COLUMN_WEIGHT, 0.0f));
                this.rowSpec = GridLayout.spec(obtainStyledAttributes.getInt(ROW, Integer.MIN_VALUE), obtainStyledAttributes.getInt(ROW_SPAN, i13), GridLayout.getAlignment(i10, false), obtainStyledAttributes.getFloat(ROW_WEIGHT, 0.0f));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        private void reInitSuper(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GridLayout_Layout);
            try {
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(MARGIN, Integer.MIN_VALUE);
                this.leftMargin = obtainStyledAttributes.getDimensionPixelSize(LEFT_MARGIN, dimensionPixelSize);
                this.topMargin = obtainStyledAttributes.getDimensionPixelSize(TOP_MARGIN, dimensionPixelSize);
                this.rightMargin = obtainStyledAttributes.getDimensionPixelSize(RIGHT_MARGIN, dimensionPixelSize);
                this.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(BOTTOM_MARGIN, dimensionPixelSize);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            LayoutParams layoutParams = (LayoutParams) obj;
            return this.columnSpec.equals(layoutParams.columnSpec) && this.rowSpec.equals(layoutParams.rowSpec);
        }

        public int hashCode() {
            return (this.rowSpec.hashCode() * 31) + this.columnSpec.hashCode();
        }

        @Override
        public void setBaseAttributes(TypedArray typedArray, int i10, int i11) {
            this.width = typedArray.getLayoutDimension(i10, -2);
            this.height = typedArray.getLayoutDimension(i11, -2);
        }

        public final void setColumnSpecSpan(Interval interval) {
            this.columnSpec = this.columnSpec.copyWriteSpan(interval);
        }

        public void setGravity(int i10) {
            this.rowSpec = this.rowSpec.copyWriteAlignment(GridLayout.getAlignment(i10, false));
            this.columnSpec = this.columnSpec.copyWriteAlignment(GridLayout.getAlignment(i10, true));
        }

        public final void setRowSpecSpan(Interval interval) {
            this.rowSpec = this.rowSpec.copyWriteSpan(interval);
        }

        public LayoutParams(Spec spec, Spec spec2) {
            this(-2, -2, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, spec, spec2);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public LayoutParams() {
            this(r0, r0);
            Spec spec = Spec.UNDEFINED;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
            this.rowSpec = layoutParams.rowSpec;
            this.columnSpec = layoutParams.columnSpec;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            Spec spec = Spec.UNDEFINED;
            this.rowSpec = spec;
            this.columnSpec = spec;
            reInitSuper(context, attributeSet);
            init(context, attributeSet);
        }
    }

    public static Spec spec(int i10, Alignment alignment) {
        return spec(i10, 1, alignment);
    }

    public static Spec spec(int i10, int i11) {
        return spec(i10, i11, UNDEFINED_ALIGNMENT);
    }

    public static Spec spec(int i10) {
        return spec(i10, 1);
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (!(layoutParams instanceof LayoutParams)) {
            return false;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        checkLayoutParams(layoutParams2, true);
        checkLayoutParams(layoutParams2, false);
        return true;
    }

    public GridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GridLayout(Context context) {
        this(context, null);
    }
}
