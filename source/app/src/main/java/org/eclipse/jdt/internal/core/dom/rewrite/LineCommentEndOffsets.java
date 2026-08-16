package org.eclipse.jdt.internal.core.dom.rewrite;

import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.core.dom.LineComment;
import org.eclipse.jdt.core.formatter.IndentManipulation;
import org.eclipse.jdt.internal.compiler.util.Util;

public class LineCommentEndOffsets {
    private final List commentList;
    private int[] offsets = null;

    public LineCommentEndOffsets(List list) {
        this.commentList = list;
    }

    private int[] getOffsets() {
        if (this.offsets == null) {
            List list = this.commentList;
            if (list != null) {
                int size = list.size();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    if (this.commentList.get(i11) instanceof LineComment) {
                        i10++;
                    }
                }
                this.offsets = new int[i10];
                int i12 = 0;
                for (int i13 = 0; i13 < size; i13++) {
                    Object obj = this.commentList.get(i13);
                    if (obj instanceof LineComment) {
                        LineComment lineComment = (LineComment) obj;
                        this.offsets[i12] = lineComment.getStartPosition() + lineComment.getLength();
                        i12++;
                    }
                }
            } else {
                this.offsets = Util.EMPTY_INT_ARRAY;
            }
        }
        return this.offsets;
    }

    public boolean isEndOfLineComment(int i10) {
        return i10 >= 0 && Arrays.binarySearch(getOffsets(), i10) >= 0;
    }

    public boolean remove(int i10) {
        int[] offsets = getOffsets();
        int binarySearch = Arrays.binarySearch(offsets, i10);
        if (binarySearch < 0) {
            return false;
        }
        if (binarySearch > 0) {
            System.arraycopy(offsets, 0, offsets, 1, binarySearch);
        }
        offsets[0] = -1;
        return true;
    }

    public boolean isEndOfLineComment(int i10, char[] cArr) {
        return i10 >= 0 && (i10 >= cArr.length || IndentManipulation.isLineDelimiterChar(cArr[i10])) && Arrays.binarySearch(getOffsets(), i10) >= 0;
    }
}
