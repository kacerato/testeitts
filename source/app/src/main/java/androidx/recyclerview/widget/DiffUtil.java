package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class DiffUtil {
    private static final Comparator<Snake> SNAKE_COMPARATOR = new Comparator<Snake>() {
        @Override
        public int compare(Snake snake, Snake snake2) {
            int i10 = snake.f32690x - snake2.f32690x;
            return i10 == 0 ? snake.f32691y - snake2.f32691y : i10;
        }
    };

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i10, int i11);

        public abstract boolean areItemsTheSame(int i10, int i11);

        public Object getChangePayload(int i10, int i11) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_IGNORE = 16;
        private static final int FLAG_MASK = 31;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 5;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List<Snake> mSnakes;

        public DiffResult(Callback callback, List<Snake> list, int[] iArr, int[] iArr2, boolean z10) {
            this.mSnakes = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z10;
            addRootSnake();
            findMatchingItems();
        }

        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
            if (snake != null && snake.f32690x == 0 && snake.f32691y == 0) {
                return;
            }
            Snake snake2 = new Snake();
            snake2.f32690x = 0;
            snake2.f32691y = 0;
            snake2.removal = false;
            snake2.size = 0;
            snake2.reverse = false;
            this.mSnakes.add(0, snake2);
        }

        private void dispatchAdditions(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i10, int i11, int i12) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(i10, i11);
                return;
            }
            for (int i13 = i11 - 1; i13 >= 0; i13--) {
                int i14 = i12 + i13;
                int i15 = this.mNewItemStatuses[i14];
                int i16 = i15 & 31;
                if (i16 == 0) {
                    listUpdateCallback.onInserted(i10, 1);
                    Iterator<PostponedUpdate> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().currentPos++;
                    }
                } else if (i16 == 4 || i16 == 8) {
                    int i17 = i15 >> 5;
                    listUpdateCallback.onMoved(removePostponedUpdate(list, i17, true).currentPos, i10);
                    if (i16 == 4) {
                        listUpdateCallback.onChanged(i10, 1, this.mCallback.getChangePayload(i17, i14));
                    }
                } else {
                    if (i16 != 16) {
                        throw new IllegalStateException("unknown flag for pos " + i14 + " " + Long.toBinaryString(i16));
                    }
                    list.add(new PostponedUpdate(i14, i10, false));
                }
            }
        }

        private void dispatchRemovals(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int i10, int i11, int i12) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(i10, i11);
                return;
            }
            for (int i13 = i11 - 1; i13 >= 0; i13--) {
                int i14 = i12 + i13;
                int i15 = this.mOldItemStatuses[i14];
                int i16 = i15 & 31;
                if (i16 == 0) {
                    listUpdateCallback.onRemoved(i10 + i13, 1);
                    Iterator<PostponedUpdate> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().currentPos--;
                    }
                } else if (i16 == 4 || i16 == 8) {
                    int i17 = i15 >> 5;
                    PostponedUpdate removePostponedUpdate = removePostponedUpdate(list, i17, false);
                    listUpdateCallback.onMoved(i10 + i13, removePostponedUpdate.currentPos - 1);
                    if (i16 == 4) {
                        listUpdateCallback.onChanged(removePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(i14, i17));
                    }
                } else {
                    if (i16 != 16) {
                        throw new IllegalStateException("unknown flag for pos " + i14 + " " + Long.toBinaryString(i16));
                    }
                    list.add(new PostponedUpdate(i14, i10 + i13, true));
                }
            }
        }

        private void findAddition(int i10, int i11, int i12) {
            if (this.mOldItemStatuses[i10 - 1] != 0) {
                return;
            }
            findMatchingItem(i10, i11, i12, false);
        }

        private boolean findMatchingItem(int i10, int i11, int i12, boolean z10) {
            int i13;
            int i14;
            int i15;
            if (z10) {
                i11--;
                i14 = i10;
                i13 = i11;
            } else {
                i13 = i10 - 1;
                i14 = i13;
            }
            while (i12 >= 0) {
                Snake snake = this.mSnakes.get(i12);
                int i16 = snake.f32690x;
                int i17 = snake.size;
                int i18 = i16 + i17;
                int i19 = snake.f32691y + i17;
                if (z10) {
                    for (int i20 = i14 - 1; i20 >= i18; i20--) {
                        if (this.mCallback.areItemsTheSame(i20, i13)) {
                            i15 = this.mCallback.areContentsTheSame(i20, i13) ? 8 : 4;
                            this.mNewItemStatuses[i13] = (i20 << 5) | 16;
                            this.mOldItemStatuses[i20] = (i13 << 5) | i15;
                            return true;
                        }
                    }
                } else {
                    for (int i21 = i11 - 1; i21 >= i19; i21--) {
                        if (this.mCallback.areItemsTheSame(i13, i21)) {
                            i15 = this.mCallback.areContentsTheSame(i13, i21) ? 8 : 4;
                            int i22 = i10 - 1;
                            this.mOldItemStatuses[i22] = (i21 << 5) | 16;
                            this.mNewItemStatuses[i21] = (i22 << 5) | i15;
                            return true;
                        }
                    }
                }
                i14 = snake.f32690x;
                i11 = snake.f32691y;
                i12--;
            }
            return false;
        }

        private void findMatchingItems() {
            int i10 = this.mOldListSize;
            int i11 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int i12 = snake.f32690x;
                int i13 = snake.size;
                int i14 = i12 + i13;
                int i15 = snake.f32691y + i13;
                if (this.mDetectMoves) {
                    while (i10 > i14) {
                        findAddition(i10, i11, size);
                        i10--;
                    }
                    while (i11 > i15) {
                        findRemoval(i10, i11, size);
                        i11--;
                    }
                }
                for (int i16 = 0; i16 < snake.size; i16++) {
                    int i17 = snake.f32690x + i16;
                    int i18 = snake.f32691y + i16;
                    int i19 = this.mCallback.areContentsTheSame(i17, i18) ? 1 : 2;
                    this.mOldItemStatuses[i17] = (i18 << 5) | i19;
                    this.mNewItemStatuses[i18] = (i17 << 5) | i19;
                }
                i10 = snake.f32690x;
                i11 = snake.f32691y;
            }
        }

        private void findRemoval(int i10, int i11, int i12) {
            if (this.mNewItemStatuses[i11 - 1] != 0) {
                return;
            }
            findMatchingItem(i10, i11, i12, true);
        }

        private static PostponedUpdate removePostponedUpdate(List<PostponedUpdate> list, int i10, boolean z10) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = list.get(size);
                if (postponedUpdate.posInOwnerList == i10 && postponedUpdate.removal == z10) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).currentPos += z10 ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        public int convertNewPositionToOld(int i10) {
            if (i10 >= 0 && i10 < this.mNewListSize) {
                int i11 = this.mNewItemStatuses[i10];
                if ((i11 & 31) == 0) {
                    return -1;
                }
                return i11 >> 5;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i10 + ", new list size = " + this.mNewListSize);
        }

        public int convertOldPositionToNew(int i10) {
            if (i10 >= 0 && i10 < this.mOldListSize) {
                int i11 = this.mOldItemStatuses[i10];
                if ((i11 & 31) == 0) {
                    return -1;
                }
                return i11 >> 5;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i10 + ", old list size = " + this.mOldListSize);
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public List<Snake> getSnakes() {
            return this.mSnakes;
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            ArrayList arrayList = new ArrayList();
            int i10 = this.mOldListSize;
            int i11 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int i12 = snake.size;
                int i13 = snake.f32690x + i12;
                int i14 = snake.f32691y + i12;
                if (i13 < i10) {
                    dispatchRemovals(arrayList, batchingListUpdateCallback, i13, i10 - i13, i13);
                }
                if (i14 < i11) {
                    dispatchAdditions(arrayList, batchingListUpdateCallback, i13, i11 - i14, i14);
                }
                for (int i15 = i12 - 1; i15 >= 0; i15--) {
                    int[] iArr = this.mOldItemStatuses;
                    int i16 = snake.f32690x;
                    if ((iArr[i16 + i15] & 31) == 2) {
                        batchingListUpdateCallback.onChanged(i16 + i15, 1, this.mCallback.getChangePayload(i16 + i15, snake.f32691y + i15));
                    }
                }
                i10 = snake.f32690x;
                i11 = snake.f32691y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(T t10, T t11);

        public abstract boolean areItemsTheSame(T t10, T t11);

        public Object getChangePayload(T t10, T t11) {
            return null;
        }
    }

    public static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int i10, int i11, boolean z10) {
            this.posInOwnerList = i10;
            this.currentPos = i11;
            this.removal = z10;
        }
    }

    public static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int i10, int i11, int i12, int i13) {
            this.oldListStart = i10;
            this.oldListEnd = i11;
            this.newListStart = i12;
            this.newListEnd = i13;
        }
    }

    public static class Snake {
        boolean removal;
        boolean reverse;
        int size;

        int f32690x;

        int f32691y;
    }

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0042, code lost:
    
        if (r24[r13 - 1] < r24[r13 + r5]) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b5, code lost:
    
        if (r25[r12 - 1] < r25[r12 + 1]) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de A[LOOP:4: B:54:0x00ca->B:58:0x00de, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e9 A[EDGE_INSN: B:59:0x00e9->B:60:0x00e9 BREAK  A[LOOP:4: B:54:0x00ca->B:58:0x00de], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Snake diffPartial(Callback callback, int i10, int i11, int i12, int i13, int[] iArr, int[] iArr2, int i14) {
        int i15;
        int i16;
        boolean z10;
        int i17;
        int i18;
        int i19;
        boolean z11;
        int i20;
        int i21 = i11 - i10;
        int i22 = i13 - i12;
        int i23 = 1;
        if (i21 < 1 || i22 < 1) {
            return null;
        }
        int i24 = i21 - i22;
        int i25 = ((i21 + i22) + 1) / 2;
        int i26 = (i14 - i25) - 1;
        int i27 = i14 + i25 + 1;
        boolean z12 = false;
        Arrays.fill(iArr, i26, i27, 0);
        Arrays.fill(iArr2, i26 + i24, i27 + i24, i21);
        boolean z13 = i24 % 2 != 0;
        int i28 = 0;
        while (i28 <= i25) {
            int i29 = -i28;
            int i30 = i29;
            while (i30 <= i28) {
                if (i30 != i29) {
                    if (i30 != i28) {
                        int i31 = i14 + i30;
                    }
                    i19 = iArr[(i14 + i30) - i23] + i23;
                    z11 = i23;
                    for (i20 = i19 - i30; i19 < i21 && i20 < i22 && callback.areItemsTheSame(i10 + i19, i12 + i20); i20++) {
                        i19++;
                    }
                    int i32 = i14 + i30;
                    iArr[i32] = i19;
                    if (!z13 && i30 >= (i24 - i28) + 1 && i30 <= (i24 + i28) - 1 && i19 >= iArr2[i32]) {
                        Snake snake = new Snake();
                        int i33 = iArr2[i32];
                        snake.f32690x = i33;
                        snake.f32691y = i33 - i30;
                        snake.size = iArr[i32] - i33;
                        snake.removal = z11;
                        snake.reverse = false;
                        return snake;
                    }
                    i30 += 2;
                    z12 = false;
                    i23 = 1;
                }
                i19 = iArr[i14 + i30 + i23];
                z11 = z12;
                while (i19 < i21) {
                    i19++;
                }
                int i322 = i14 + i30;
                iArr[i322] = i19;
                if (!z13) {
                }
                i30 += 2;
                z12 = false;
                i23 = 1;
            }
            boolean z14 = z12;
            int i34 = i29;
            while (i34 <= i28) {
                int i35 = i34 + i24;
                if (i35 != i28 + i24) {
                    if (i35 != i29 + i24) {
                        int i36 = i14 + i35;
                        i15 = 1;
                    } else {
                        i15 = 1;
                    }
                    i16 = iArr2[(i14 + i35) + i15] - i15;
                    z10 = i15;
                    i17 = i16 - i35;
                    while (i16 > 0 && i17 > 0) {
                        i18 = i21;
                        if (callback.areItemsTheSame((i10 + i16) - 1, (i12 + i17) - 1)) {
                            break;
                        }
                        i16--;
                        i17--;
                        i21 = i18;
                    }
                    i18 = i21;
                    int i37 = i14 + i35;
                    iArr2[i37] = i16;
                    if (z13 && i35 >= i29 && i35 <= i28 && iArr[i37] >= i16) {
                        Snake snake2 = new Snake();
                        int i38 = iArr2[i37];
                        snake2.f32690x = i38;
                        snake2.f32691y = i38 - i35;
                        snake2.size = iArr[i37] - i38;
                        snake2.removal = z10;
                        snake2.reverse = true;
                        return snake2;
                    }
                    i34 += 2;
                    i21 = i18;
                    z14 = false;
                } else {
                    i15 = 1;
                }
                i16 = iArr2[(i14 + i35) - i15];
                z10 = z14;
                i17 = i16 - i35;
                while (i16 > 0) {
                    i18 = i21;
                    if (callback.areItemsTheSame((i10 + i16) - 1, (i12 + i17) - 1)) {
                    }
                }
                i18 = i21;
                int i372 = i14 + i35;
                iArr2[i372] = i16;
                if (z13) {
                }
                i34 += 2;
                i21 = i18;
                z14 = false;
            }
            i28++;
            i23 = 1;
            i21 = i21;
            z12 = false;
        }
        throw new IllegalStateException("DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DiffResult calculateDiff(Callback callback, boolean z10) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int abs = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int i10 = abs * 2;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake diffPartial = diffPartial(callback, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, iArr, iArr2, abs);
            if (diffPartial != null) {
                if (diffPartial.size > 0) {
                    arrayList.add(diffPartial);
                }
                diffPartial.f32690x += range.oldListStart;
                diffPartial.f32691y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (diffPartial.reverse) {
                    range2.oldListEnd = diffPartial.f32690x;
                    range2.newListEnd = diffPartial.f32691y;
                } else if (diffPartial.removal) {
                    range2.oldListEnd = diffPartial.f32690x - 1;
                    range2.newListEnd = diffPartial.f32691y;
                } else {
                    range2.oldListEnd = diffPartial.f32690x;
                    range2.newListEnd = diffPartial.f32691y - 1;
                }
                arrayList2.add(range2);
                if (diffPartial.reverse) {
                    if (diffPartial.removal) {
                        int i11 = diffPartial.f32690x;
                        int i12 = diffPartial.size;
                        range.oldListStart = i11 + i12 + 1;
                        range.newListStart = diffPartial.f32691y + i12;
                    } else {
                        int i13 = diffPartial.f32690x;
                        int i14 = diffPartial.size;
                        range.oldListStart = i13 + i14;
                        range.newListStart = diffPartial.f32691y + i14 + 1;
                    }
                } else {
                    int i15 = diffPartial.f32690x;
                    int i16 = diffPartial.size;
                    range.oldListStart = i15 + i16;
                    range.newListStart = diffPartial.f32691y + i16;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffResult(callback, arrayList, iArr, iArr2, z10);
    }
}
