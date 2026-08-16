package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class EmojiMetadata {
    public static final int HAS_GLYPH_ABSENT = 1;
    public static final int HAS_GLYPH_EXISTS = 2;
    public static final int HAS_GLYPH_UNKNOWN = 0;
    private static final ThreadLocal<MetadataItem> sMetadataItem = new ThreadLocal<>();
    private volatile int mHasGlyph = 0;
    private final int mIndex;
    private final MetadataRepo mMetadataRepo;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HasGlyph {
    }

    public EmojiMetadata(MetadataRepo metadataRepo, int i10) {
        this.mMetadataRepo = metadataRepo;
        this.mIndex = i10;
    }

    private MetadataItem getMetadataItem() {
        ThreadLocal<MetadataItem> threadLocal = sMetadataItem;
        MetadataItem metadataItem = threadLocal.get();
        if (metadataItem == null) {
            metadataItem = new MetadataItem();
            threadLocal.set(metadataItem);
        }
        this.mMetadataRepo.getMetadataList().list(metadataItem, this.mIndex);
        return metadataItem;
    }

    public void draw(Canvas canvas, float f10, float f11, Paint paint) {
        Typeface typeface = this.mMetadataRepo.getTypeface();
        Typeface typeface2 = paint.getTypeface();
        paint.setTypeface(typeface);
        canvas.drawText(this.mMetadataRepo.getEmojiCharArray(), this.mIndex * 2, 2, f10, f11, paint);
        paint.setTypeface(typeface2);
    }

    public int getCodepointAt(int i10) {
        return getMetadataItem().codepoints(i10);
    }

    public int getCodepointsLength() {
        return getMetadataItem().codepointsLength();
    }

    public short getCompatAdded() {
        return getMetadataItem().compatAdded();
    }

    public int getHasGlyph() {
        return this.mHasGlyph;
    }

    public short getHeight() {
        return getMetadataItem().height();
    }

    public int getId() {
        return getMetadataItem().id();
    }

    public short getSdkAdded() {
        return getMetadataItem().sdkAdded();
    }

    public Typeface getTypeface() {
        return this.mMetadataRepo.getTypeface();
    }

    public short getWidth() {
        return getMetadataItem().width();
    }

    public boolean isDefaultEmoji() {
        return getMetadataItem().emojiStyle();
    }

    public void resetHasGlyphCache() {
        this.mHasGlyph = 0;
    }

    public void setHasGlyph(boolean z10) {
        this.mHasGlyph = z10 ? 2 : 1;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(", id:");
        sb2.append(Integer.toHexString(getId()));
        sb2.append(", codepoints:");
        int codepointsLength = getCodepointsLength();
        for (int i10 = 0; i10 < codepointsLength; i10++) {
            sb2.append(Integer.toHexString(getCodepointAt(i10)));
            sb2.append(" ");
        }
        return sb2.toString();
    }
}
