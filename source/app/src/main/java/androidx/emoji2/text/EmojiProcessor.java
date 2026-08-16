package androidx.emoji2.text;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.MetadataRepo;
import java.util.Arrays;

final class EmojiProcessor {
    private static final int ACTION_ADVANCE_BOTH = 1;
    private static final int ACTION_ADVANCE_END = 2;
    private static final int ACTION_FLUSH = 3;
    private final int[] mEmojiAsDefaultStyleExceptions;
    private EmojiCompat.GlyphChecker mGlyphChecker;
    private final MetadataRepo mMetadataRepo;
    private final EmojiCompat.SpanFactory mSpanFactory;
    private final boolean mUseEmojiAsDefaultStyle;

    public static final class CodepointIndexFinder {
        private static final int INVALID_INDEX = -1;

        private CodepointIndexFinder() {
        }

        public static int findIndexBackward(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    i10--;
                    if (i10 < 0) {
                        return z10 ? -1 : 0;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                    } else {
                        if (Character.isHighSurrogate(charAt)) {
                            return -1;
                        }
                        z10 = true;
                    }
                }
                return i10;
            }
        }

        public static int findIndexForward(CharSequence charSequence, int i10, int i11) {
            int length = charSequence.length();
            if (i10 < 0 || length < i10 || i11 < 0) {
                return -1;
            }
            while (true) {
                boolean z10 = false;
                while (i11 != 0) {
                    if (i10 >= length) {
                        if (z10) {
                            return -1;
                        }
                        return length;
                    }
                    char charAt = charSequence.charAt(i10);
                    if (z10) {
                        if (!Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i11--;
                        i10++;
                    } else if (!Character.isSurrogate(charAt)) {
                        i11--;
                        i10++;
                    } else {
                        if (Character.isLowSurrogate(charAt)) {
                            return -1;
                        }
                        i10++;
                        z10 = true;
                    }
                }
                return i10;
            }
        }
    }

    public static final class ProcessorSm {
        private static final int STATE_DEFAULT = 1;
        private static final int STATE_WALKING = 2;
        private int mCurrentDepth;
        private MetadataRepo.Node mCurrentNode;
        private final int[] mEmojiAsDefaultStyleExceptions;
        private MetadataRepo.Node mFlushNode;
        private int mLastCodepoint;
        private final MetadataRepo.Node mRootNode;
        private int mState = 1;
        private final boolean mUseEmojiAsDefaultStyle;

        public ProcessorSm(MetadataRepo.Node node, boolean z10, int[] iArr) {
            this.mRootNode = node;
            this.mCurrentNode = node;
            this.mUseEmojiAsDefaultStyle = z10;
            this.mEmojiAsDefaultStyleExceptions = iArr;
        }

        private static boolean isEmojiStyle(int i10) {
            return i10 == 65039;
        }

        private static boolean isTextStyle(int i10) {
            return i10 == 65038;
        }

        private int reset() {
            this.mState = 1;
            this.mCurrentNode = this.mRootNode;
            this.mCurrentDepth = 0;
            return 1;
        }

        private boolean shouldUseEmojiPresentationStyleForSingleCodepoint() {
            if (this.mCurrentNode.getData().isDefaultEmoji() || isEmojiStyle(this.mLastCodepoint)) {
                return true;
            }
            if (this.mUseEmojiAsDefaultStyle) {
                if (this.mEmojiAsDefaultStyleExceptions == null) {
                    return true;
                }
                if (Arrays.binarySearch(this.mEmojiAsDefaultStyleExceptions, this.mCurrentNode.getData().getCodepointAt(0)) < 0) {
                    return true;
                }
            }
            return false;
        }

        public int check(int i10) {
            MetadataRepo.Node node = this.mCurrentNode.get(i10);
            int i11 = 2;
            if (this.mState != 2) {
                if (node == null) {
                    i11 = reset();
                } else {
                    this.mState = 2;
                    this.mCurrentNode = node;
                    this.mCurrentDepth = 1;
                }
            } else if (node != null) {
                this.mCurrentNode = node;
                this.mCurrentDepth++;
            } else if (isTextStyle(i10)) {
                i11 = reset();
            } else if (!isEmojiStyle(i10)) {
                if (this.mCurrentNode.getData() != null) {
                    i11 = 3;
                    if (this.mCurrentDepth != 1) {
                        this.mFlushNode = this.mCurrentNode;
                        reset();
                    } else if (shouldUseEmojiPresentationStyleForSingleCodepoint()) {
                        this.mFlushNode = this.mCurrentNode;
                        reset();
                    } else {
                        i11 = reset();
                    }
                } else {
                    i11 = reset();
                }
            }
            this.mLastCodepoint = i10;
            return i11;
        }

        public EmojiMetadata getCurrentMetadata() {
            return this.mCurrentNode.getData();
        }

        public EmojiMetadata getFlushMetadata() {
            return this.mFlushNode.getData();
        }

        public boolean isInFlushableState() {
            return this.mState == 2 && this.mCurrentNode.getData() != null && (this.mCurrentDepth > 1 || shouldUseEmojiPresentationStyleForSingleCodepoint());
        }
    }

    public EmojiProcessor(MetadataRepo metadataRepo, EmojiCompat.SpanFactory spanFactory, EmojiCompat.GlyphChecker glyphChecker, boolean z10, int[] iArr) {
        this.mSpanFactory = spanFactory;
        this.mMetadataRepo = metadataRepo;
        this.mGlyphChecker = glyphChecker;
        this.mUseEmojiAsDefaultStyle = z10;
        this.mEmojiAsDefaultStyleExceptions = iArr;
    }

    private void addEmoji(Spannable spannable, EmojiMetadata emojiMetadata, int i10, int i11) {
        spannable.setSpan(this.mSpanFactory.createSpan(emojiMetadata), i10, i11, 33);
    }

    private static boolean delete(Editable editable, KeyEvent keyEvent, boolean z10) {
        EmojiSpan[] emojiSpanArr;
        if (hasModifiers(keyEvent)) {
            return false;
        }
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        if (!hasInvalidSelection(selectionStart, selectionEnd) && (emojiSpanArr = (EmojiSpan[]) editable.getSpans(selectionStart, selectionEnd, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
            for (EmojiSpan emojiSpan : emojiSpanArr) {
                int spanStart = editable.getSpanStart(emojiSpan);
                int spanEnd = editable.getSpanEnd(emojiSpan);
                if ((z10 && spanStart == selectionStart) || ((!z10 && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                    editable.delete(spanStart, spanEnd);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i10, int i11, boolean z10) {
        int max;
        int min;
        if (editable != null && inputConnection != null && i10 >= 0 && i11 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (hasInvalidSelection(selectionStart, selectionEnd)) {
                return false;
            }
            if (z10) {
                max = CodepointIndexFinder.findIndexBackward(editable, selectionStart, Math.max(i10, 0));
                min = CodepointIndexFinder.findIndexForward(editable, selectionEnd, Math.max(i11, 0));
                if (max == -1 || min == -1) {
                    return false;
                }
            } else {
                max = Math.max(selectionStart - i10, 0);
                min = Math.min(selectionEnd + i11, editable.length());
            }
            EmojiSpan[] emojiSpanArr = (EmojiSpan[]) editable.getSpans(max, min, EmojiSpan.class);
            if (emojiSpanArr != null && emojiSpanArr.length > 0) {
                for (EmojiSpan emojiSpan : emojiSpanArr) {
                    int spanStart = editable.getSpanStart(emojiSpan);
                    int spanEnd = editable.getSpanEnd(emojiSpan);
                    max = Math.min(spanStart, max);
                    min = Math.max(spanEnd, min);
                }
                int max2 = Math.max(max, 0);
                int min2 = Math.min(min, editable.length());
                inputConnection.beginBatchEdit();
                editable.delete(max2, min2);
                inputConnection.endBatchEdit();
                return true;
            }
        }
        return false;
    }

    public static boolean handleOnKeyDown(Editable editable, int i10, KeyEvent keyEvent) {
        if (!(i10 != 67 ? i10 != 112 ? false : delete(editable, keyEvent, true) : delete(editable, keyEvent, false))) {
            return false;
        }
        MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
        return true;
    }

    private boolean hasGlyph(CharSequence charSequence, int i10, int i11, EmojiMetadata emojiMetadata) {
        if (emojiMetadata.getHasGlyph() == 0) {
            emojiMetadata.setHasGlyph(this.mGlyphChecker.hasGlyph(charSequence, i10, i11, emojiMetadata.getSdkAdded()));
        }
        return emojiMetadata.getHasGlyph() == 2;
    }

    private static boolean hasInvalidSelection(int i10, int i11) {
        return i10 == -1 || i11 == -1 || i10 != i11;
    }

    private static boolean hasModifiers(KeyEvent keyEvent) {
        return !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState());
    }

    public int getEmojiMatch(CharSequence charSequence) {
        return getEmojiMatch(charSequence, this.mMetadataRepo.getMetadataVersion());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0049 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:100:0x000e, B:103:0x0013, B:105:0x0017, B:107:0x0024, B:9:0x003a, B:11:0x0042, B:13:0x0045, B:15:0x0049, B:17:0x0055, B:19:0x0058, B:23:0x0065, B:29:0x0074, B:30:0x0080, B:34:0x009b, B:60:0x00ab, B:64:0x00b7, B:65:0x00c1, B:47:0x00cb, B:50:0x00d2, B:37:0x00d7, B:39:0x00e2, B:71:0x00e9, B:75:0x00f3, B:78:0x00ff, B:79:0x0104, B:81:0x010d, B:6:0x002f), top: B:99:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ff A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:100:0x000e, B:103:0x0013, B:105:0x0017, B:107:0x0024, B:9:0x003a, B:11:0x0042, B:13:0x0045, B:15:0x0049, B:17:0x0055, B:19:0x0058, B:23:0x0065, B:29:0x0074, B:30:0x0080, B:34:0x009b, B:60:0x00ab, B:64:0x00b7, B:65:0x00c1, B:47:0x00cb, B:50:0x00d2, B:37:0x00d7, B:39:0x00e2, B:71:0x00e9, B:75:0x00f3, B:78:0x00ff, B:79:0x0104, B:81:0x010d, B:6:0x002f), top: B:99:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x010d A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #0 {all -> 0x002a, blocks: (B:100:0x000e, B:103:0x0013, B:105:0x0017, B:107:0x0024, B:9:0x003a, B:11:0x0042, B:13:0x0045, B:15:0x0049, B:17:0x0055, B:19:0x0058, B:23:0x0065, B:29:0x0074, B:30:0x0080, B:34:0x009b, B:60:0x00ab, B:64:0x00b7, B:65:0x00c1, B:47:0x00cb, B:50:0x00d2, B:37:0x00d7, B:39:0x00e2, B:71:0x00e9, B:75:0x00f3, B:78:0x00ff, B:79:0x0104, B:81:0x010d, B:6:0x002f), top: B:99:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0119  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CharSequence process(CharSequence charSequence, int i10, int i11, int i12, boolean z10) {
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable;
        ProcessorSm processorSm;
        int codePointAt;
        UnprecomputeTextOnModificationSpannable unprecomputeTextOnModificationSpannable2;
        int i13;
        int check;
        EmojiSpan[] emojiSpanArr;
        boolean z11 = charSequence instanceof SpannableBuilder;
        if (z11) {
            ((SpannableBuilder) charSequence).beginBatchEdit();
        }
        if (!z11) {
            try {
                if (!(charSequence instanceof Spannable)) {
                    unprecomputeTextOnModificationSpannable = (!(charSequence instanceof Spanned) || ((Spanned) charSequence).nextSpanTransition(i10 + (-1), i11 + 1, EmojiSpan.class) > i11) ? null : new UnprecomputeTextOnModificationSpannable(charSequence);
                    if (unprecomputeTextOnModificationSpannable != null && (emojiSpanArr = (EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(i10, i11, EmojiSpan.class)) != null && emojiSpanArr.length > 0) {
                        for (EmojiSpan emojiSpan : emojiSpanArr) {
                            int spanStart = unprecomputeTextOnModificationSpannable.getSpanStart(emojiSpan);
                            int spanEnd = unprecomputeTextOnModificationSpannable.getSpanEnd(emojiSpan);
                            if (spanStart != i11) {
                                unprecomputeTextOnModificationSpannable.removeSpan(emojiSpan);
                            }
                            i10 = Math.min(spanStart, i10);
                            i11 = Math.max(spanEnd, i11);
                        }
                    }
                    if (i10 != i11 && i10 < charSequence.length()) {
                        if (i12 != Integer.MAX_VALUE && unprecomputeTextOnModificationSpannable != null) {
                            i12 -= ((EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(0, unprecomputeTextOnModificationSpannable.length(), EmojiSpan.class)).length;
                        }
                        processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
                        codePointAt = Character.codePointAt(charSequence, i10);
                        int i14 = 0;
                        unprecomputeTextOnModificationSpannable2 = unprecomputeTextOnModificationSpannable;
                        loop1: while (true) {
                            i13 = i10;
                            while (i10 < i11 && i14 < i12) {
                                check = processorSm.check(codePointAt);
                                if (check != 1) {
                                    i13 += Character.charCount(Character.codePointAt(charSequence, i13));
                                    if (i13 < i11) {
                                        codePointAt = Character.codePointAt(charSequence, i13);
                                    }
                                    i10 = i13;
                                } else if (check == 2) {
                                    i10 += Character.charCount(codePointAt);
                                    if (i10 < i11) {
                                        codePointAt = Character.codePointAt(charSequence, i10);
                                    }
                                } else if (check == 3) {
                                    if (z10 || !hasGlyph(charSequence, i13, i10, processorSm.getFlushMetadata())) {
                                        if (unprecomputeTextOnModificationSpannable2 == null) {
                                            unprecomputeTextOnModificationSpannable2 = new UnprecomputeTextOnModificationSpannable((Spannable) new SpannableString(charSequence));
                                        }
                                        addEmoji(unprecomputeTextOnModificationSpannable2, processorSm.getFlushMetadata(), i13, i10);
                                        i14++;
                                    }
                                }
                            }
                        }
                        if (processorSm.isInFlushableState() && i14 < i12 && (z10 || !hasGlyph(charSequence, i13, i10, processorSm.getCurrentMetadata()))) {
                            if (unprecomputeTextOnModificationSpannable2 == null) {
                                unprecomputeTextOnModificationSpannable2 = new UnprecomputeTextOnModificationSpannable(charSequence);
                            }
                            addEmoji(unprecomputeTextOnModificationSpannable2, processorSm.getCurrentMetadata(), i13, i10);
                        }
                        if (unprecomputeTextOnModificationSpannable2 != null) {
                            if (z11) {
                                ((SpannableBuilder) charSequence).endBatchEdit();
                            }
                            return charSequence;
                        }
                        Spannable unwrappedSpannable = unprecomputeTextOnModificationSpannable2.getUnwrappedSpannable();
                        if (z11) {
                            ((SpannableBuilder) charSequence).endBatchEdit();
                        }
                        return unwrappedSpannable;
                    }
                    return charSequence;
                }
            } finally {
                if (z11) {
                    ((SpannableBuilder) charSequence).endBatchEdit();
                }
            }
        }
        unprecomputeTextOnModificationSpannable = new UnprecomputeTextOnModificationSpannable((Spannable) charSequence);
        if (unprecomputeTextOnModificationSpannable != null) {
            while (r6 < r5) {
            }
        }
        if (i10 != i11) {
            if (i12 != Integer.MAX_VALUE) {
                i12 -= ((EmojiSpan[]) unprecomputeTextOnModificationSpannable.getSpans(0, unprecomputeTextOnModificationSpannable.length(), EmojiSpan.class)).length;
            }
            processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
            codePointAt = Character.codePointAt(charSequence, i10);
            int i142 = 0;
            unprecomputeTextOnModificationSpannable2 = unprecomputeTextOnModificationSpannable;
            loop1: while (true) {
                i13 = i10;
                while (i10 < i11) {
                    check = processorSm.check(codePointAt);
                    if (check != 1) {
                    }
                }
            }
            if (processorSm.isInFlushableState()) {
                if (unprecomputeTextOnModificationSpannable2 == null) {
                }
                addEmoji(unprecomputeTextOnModificationSpannable2, processorSm.getCurrentMetadata(), i13, i10);
            }
            if (unprecomputeTextOnModificationSpannable2 != null) {
            }
        }
        return charSequence;
    }

    public int getEmojiMatch(CharSequence charSequence, int i10) {
        ProcessorSm processorSm = new ProcessorSm(this.mMetadataRepo.getRootNode(), this.mUseEmojiAsDefaultStyle, this.mEmojiAsDefaultStyleExceptions);
        int length = charSequence.length();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < length) {
            int codePointAt = Character.codePointAt(charSequence, i11);
            int check = processorSm.check(codePointAt);
            EmojiMetadata currentMetadata = processorSm.getCurrentMetadata();
            if (check == 1) {
                i11 += Character.charCount(codePointAt);
                i13 = 0;
            } else if (check == 2) {
                i11 += Character.charCount(codePointAt);
            } else if (check == 3) {
                currentMetadata = processorSm.getFlushMetadata();
                if (currentMetadata.getCompatAdded() <= i10) {
                    i12++;
                }
            }
            if (currentMetadata != null && currentMetadata.getCompatAdded() <= i10) {
                i13++;
            }
        }
        if (i12 != 0) {
            return 2;
        }
        if (!processorSm.isInFlushableState() || processorSm.getCurrentMetadata().getCompatAdded() > i10) {
            return i13 == 0 ? 0 : 2;
        }
        return 1;
    }
}
