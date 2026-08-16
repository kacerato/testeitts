package org.eclipse.jdt.internal.core.jdom;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.core.jdom.IDOMMember;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;
import w2.C15883c;

public abstract class DOMMember extends DOMNode implements IDOMMember {
    protected String fComment;
    protected int[] fCommentRange;
    protected int fFlags;
    protected int[] fModifierRange;
    protected char[] fModifiers;

    public DOMMember() {
        this.fFlags = 0;
        this.fComment = null;
        this.fModifiers = null;
    }

    @Override
    public void appendFragmentedContents(CharArrayBuffer charArrayBuffer) {
        if (!isDetailed()) {
            appendSimpleContents(charArrayBuffer);
            return;
        }
        appendMemberHeaderFragment(charArrayBuffer);
        appendMemberDeclarationContents(charArrayBuffer);
        appendMemberBodyContents(charArrayBuffer);
    }

    public abstract void appendMemberBodyContents(CharArrayBuffer charArrayBuffer);

    public abstract void appendMemberDeclarationContents(CharArrayBuffer charArrayBuffer);

    public void appendMemberHeaderFragment(CharArrayBuffer charArrayBuffer) {
        if (hasComment()) {
            int i10 = this.fSourceRange[0];
            int i11 = this.fCommentRange[0];
            if (i11 > 0) {
                charArrayBuffer.append(this.fDocument, i10, i11 - i10);
            }
        }
        String comment = getComment();
        if (comment != null) {
            charArrayBuffer.append(comment);
        }
        int i12 = this.fCommentRange[1];
        int i13 = i12 >= 0 ? i12 + 1 : this.fSourceRange[0];
        int i14 = this.fModifierRange[0];
        if (i14 < 0) {
            i14 = getMemberDeclarationStartPosition();
        }
        int i15 = i14 - 1;
        if (i15 >= i13) {
            charArrayBuffer.append(this.fDocument, i13, (i15 + 1) - i13);
        }
        charArrayBuffer.append(getModifiersText());
    }

    public abstract void appendSimpleContents(CharArrayBuffer charArrayBuffer);

    public String[] appendString(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr.length] = str;
        return strArr2;
    }

    public char[] generateFlags() {
        char[] charArray = Flags.toString(getFlags()).toCharArray();
        return charArray.length == 0 ? charArray : CharOperation.concat(charArray, new char[]{C15883c.f126249O});
    }

    @Override
    public String getComment() {
        becomeDetailed();
        if (!hasComment()) {
            return null;
        }
        String str = this.fComment;
        if (str != null) {
            return str;
        }
        char[] cArr = this.fDocument;
        int[] iArr = this.fCommentRange;
        int i10 = iArr[0];
        return new String(cArr, i10, (iArr[1] + 1) - i10);
    }

    @Override
    public int getFlags() {
        return this.fFlags;
    }

    public abstract int getMemberDeclarationStartPosition();

    public char[] getModifiersText() {
        char[] cArr = this.fModifiers;
        if (cArr != null) {
            return cArr;
        }
        int[] iArr = this.fModifierRange;
        int i10 = iArr[0];
        if (i10 < 0) {
            return null;
        }
        return CharOperation.subarray(this.fDocument, i10, iArr[1] + 1);
    }

    public boolean hasBody() {
        return getMask(16);
    }

    public boolean hasComment() {
        return getMask(32);
    }

    @Override
    public void offset(int i10) {
        super.offset(i10);
        offsetRange(this.fCommentRange, i10);
        offsetRange(this.fModifierRange, i10);
    }

    public void setComment(String str) {
        becomeDetailed();
        this.fComment = str;
        fragment();
        setHasComment(str != null);
        if (str == null || str.indexOf(TagElement.TAG_DEPRECATED) < 0) {
            this.fFlags &= -1048577;
        } else {
            this.fFlags |= 1048576;
        }
    }

    public void setFlags(int i10) {
        becomeDetailed();
        if (Flags.isDeprecated(this.fFlags)) {
            this.fFlags = i10 | 1048576;
        } else {
            this.fFlags = i10 & (-1048577);
        }
        fragment();
        this.fModifiers = generateFlags();
    }

    public void setHasBody(boolean z10) {
        setMask(16, z10);
    }

    public void setHasComment(boolean z10) {
        setMask(32, z10);
    }

    @Override
    public void setStartPosition(int i10) {
        int[] iArr = this.fCommentRange;
        if (iArr[0] >= 0) {
            iArr[0] = i10;
        }
        super.setStartPosition(i10);
    }

    @Override
    public void shareContents(DOMNode dOMNode) {
        super.shareContents(dOMNode);
        DOMMember dOMMember = (DOMMember) dOMNode;
        this.fComment = dOMMember.fComment;
        this.fCommentRange = rangeCopy(dOMMember.fCommentRange);
        this.fFlags = dOMMember.fFlags;
        this.fModifiers = dOMMember.fModifiers;
        this.fModifierRange = rangeCopy(dOMMember.fModifierRange);
    }

    public DOMMember(char[] cArr, int[] iArr, String str, int[] iArr2, int[] iArr3, int i10, int[] iArr4) {
        super(cArr, iArr, str, iArr2);
        this.fModifiers = null;
        this.fFlags = i10;
        this.fComment = null;
        this.fCommentRange = iArr3;
        this.fModifierRange = iArr4;
        setHasComment(iArr3[0] >= 0);
    }
}
