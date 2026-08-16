package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import org.apache.commons.math3.geometry.VectorFormat;

public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;
    private final Compat mCompat;

    public static final class Api31Impl {
        private Api31Impl() {
        }

        public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, final Predicate<ClipData.Item> predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() != 1) {
                Objects.requireNonNull(predicate);
                Pair<ClipData, ClipData> partition = ContentInfoCompat.partition(clip, (androidx.core.util.Predicate<ClipData.Item>) new androidx.core.util.Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return Predicate.this.test((ClipData.Item) obj);
                    }
                });
                return partition.first == null ? Pair.create(null, contentInfo) : partition.second == null ? Pair.create(contentInfo, null) : Pair.create(new ContentInfo.Builder(contentInfo).setClip(partition.first).build(), new ContentInfo.Builder(contentInfo).setClip(partition.second).build());
            }
            boolean test = predicate.test(clip.getItemAt(0));
            ContentInfo contentInfo2 = test ? contentInfo : null;
            if (test) {
                contentInfo = null;
            }
            return Pair.create(contentInfo2, contentInfo);
        }
    }

    public interface BuilderCompat {
        ContentInfoCompat build();

        void setClip(ClipData clipData);

        void setExtras(Bundle bundle);

        void setFlags(int i10);

        void setLinkUri(Uri uri);

        void setSource(int i10);
    }

    public interface Compat {
        ClipData getClip();

        Bundle getExtras();

        int getFlags();

        Uri getLinkUri();

        int getSource();

        ContentInfo getWrapped();
    }

    public static final class Compat31Impl implements Compat {
        private final ContentInfo mWrapped;

        public Compat31Impl(ContentInfo contentInfo) {
            this.mWrapped = C3689a.a(Preconditions.checkNotNull(contentInfo));
        }

        @Override
        public ClipData getClip() {
            ClipData clip;
            clip = this.mWrapped.getClip();
            return clip;
        }

        @Override
        public Bundle getExtras() {
            Bundle extras;
            extras = this.mWrapped.getExtras();
            return extras;
        }

        @Override
        public int getFlags() {
            int flags;
            flags = this.mWrapped.getFlags();
            return flags;
        }

        @Override
        public Uri getLinkUri() {
            Uri linkUri;
            linkUri = this.mWrapped.getLinkUri();
            return linkUri;
        }

        @Override
        public int getSource() {
            int source;
            source = this.mWrapped.getSource();
            return source;
        }

        @Override
        public ContentInfo getWrapped() {
            return this.mWrapped;
        }

        public String toString() {
            return "ContentInfoCompat{" + ((Object) this.mWrapped) + VectorFormat.DEFAULT_SUFFIX;
        }
    }

    public static final class CompatImpl implements Compat {
        private final ClipData mClip;
        private final Bundle mExtras;
        private final int mFlags;
        private final Uri mLinkUri;
        private final int mSource;

        public CompatImpl(BuilderCompatImpl builderCompatImpl) {
            this.mClip = (ClipData) Preconditions.checkNotNull(builderCompatImpl.mClip);
            this.mSource = Preconditions.checkArgumentInRange(builderCompatImpl.mSource, 0, 5, "source");
            this.mFlags = Preconditions.checkFlagsArgument(builderCompatImpl.mFlags, 1);
            this.mLinkUri = builderCompatImpl.mLinkUri;
            this.mExtras = builderCompatImpl.mExtras;
        }

        @Override
        public ClipData getClip() {
            return this.mClip;
        }

        @Override
        public Bundle getExtras() {
            return this.mExtras;
        }

        @Override
        public int getFlags() {
            return this.mFlags;
        }

        @Override
        public Uri getLinkUri() {
            return this.mLinkUri;
        }

        @Override
        public int getSource() {
            return this.mSource;
        }

        @Override
        public ContentInfo getWrapped() {
            return null;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ContentInfoCompat{clip=");
            sb2.append((Object) this.mClip.getDescription());
            sb2.append(", source=");
            sb2.append(ContentInfoCompat.sourceToString(this.mSource));
            sb2.append(", flags=");
            sb2.append(ContentInfoCompat.flagsToString(this.mFlags));
            if (this.mLinkUri == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.mLinkUri.toString().length() + ")";
            }
            sb2.append(str);
            sb2.append(this.mExtras != null ? ", hasExtras" : "");
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return sb2.toString();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    public ContentInfoCompat(Compat compat) {
        this.mCompat = compat;
    }

    public static ClipData buildClipData(ClipDescription clipDescription, List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i10 = 1; i10 < list.size(); i10++) {
            clipData.addItem(list.get(i10));
        }
        return clipData;
    }

    public static String flagsToString(int i10) {
        return (i10 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i10);
    }

    public static String sourceToString(int i10) {
        return i10 != 0 ? i10 != 1 ? i10 != 2 ? i10 != 3 ? i10 != 4 ? i10 != 5 ? String.valueOf(i10) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP";
    }

    public static ContentInfoCompat toContentInfoCompat(ContentInfo contentInfo) {
        return new ContentInfoCompat(new Compat31Impl(contentInfo));
    }

    public ClipData getClip() {
        return this.mCompat.getClip();
    }

    public Bundle getExtras() {
        return this.mCompat.getExtras();
    }

    public int getFlags() {
        return this.mCompat.getFlags();
    }

    public Uri getLinkUri() {
        return this.mCompat.getLinkUri();
    }

    public int getSource() {
        return this.mCompat.getSource();
    }

    public Pair<ContentInfoCompat, ContentInfoCompat> partition(androidx.core.util.Predicate<ClipData.Item> predicate) {
        ClipData clip = this.mCompat.getClip();
        if (clip.getItemCount() == 1) {
            boolean test = predicate.test(clip.getItemAt(0));
            return Pair.create(test ? this : null, test ? null : this);
        }
        Pair<ClipData, ClipData> partition = partition(clip, predicate);
        if (partition.first == null) {
            return Pair.create(null, this);
        }
        if (partition.second == null) {
            return Pair.create(this, null);
        }
        return Pair.create(new Builder(this).setClip(partition.first).build(), new Builder(this).setClip(partition.second).build());
    }

    public ContentInfo toContentInfo() {
        ContentInfo wrapped = this.mCompat.getWrapped();
        Objects.requireNonNull(wrapped);
        return C3689a.a(wrapped);
    }

    public String toString() {
        return this.mCompat.toString();
    }

    public static final class BuilderCompat31Impl implements BuilderCompat {
        private final ContentInfo.Builder mPlatformBuilder;

        public BuilderCompat31Impl(ClipData clipData, int i10) {
            this.mPlatformBuilder = C3711i.a(clipData, i10);
        }

        @Override
        public ContentInfoCompat build() {
            ContentInfo build;
            build = this.mPlatformBuilder.build();
            return new ContentInfoCompat(new Compat31Impl(build));
        }

        @Override
        public void setClip(ClipData clipData) {
            this.mPlatformBuilder.setClip(clipData);
        }

        @Override
        public void setExtras(Bundle bundle) {
            this.mPlatformBuilder.setExtras(bundle);
        }

        @Override
        public void setFlags(int i10) {
            this.mPlatformBuilder.setFlags(i10);
        }

        @Override
        public void setLinkUri(Uri uri) {
            this.mPlatformBuilder.setLinkUri(uri);
        }

        @Override
        public void setSource(int i10) {
            this.mPlatformBuilder.setSource(i10);
        }

        public BuilderCompat31Impl(ContentInfoCompat contentInfoCompat) {
            C3715k.a();
            this.mPlatformBuilder = C3713j.a(contentInfoCompat.toContentInfo());
        }
    }

    public static final class BuilderCompatImpl implements BuilderCompat {
        ClipData mClip;
        Bundle mExtras;
        int mFlags;
        Uri mLinkUri;
        int mSource;

        public BuilderCompatImpl(ClipData clipData, int i10) {
            this.mClip = clipData;
            this.mSource = i10;
        }

        @Override
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new CompatImpl(this));
        }

        @Override
        public void setClip(ClipData clipData) {
            this.mClip = clipData;
        }

        @Override
        public void setExtras(Bundle bundle) {
            this.mExtras = bundle;
        }

        @Override
        public void setFlags(int i10) {
            this.mFlags = i10;
        }

        @Override
        public void setLinkUri(Uri uri) {
            this.mLinkUri = uri;
        }

        @Override
        public void setSource(int i10) {
            this.mSource = i10;
        }

        public BuilderCompatImpl(ContentInfoCompat contentInfoCompat) {
            this.mClip = contentInfoCompat.getClip();
            this.mSource = contentInfoCompat.getSource();
            this.mFlags = contentInfoCompat.getFlags();
            this.mLinkUri = contentInfoCompat.getLinkUri();
            this.mExtras = contentInfoCompat.getExtras();
        }
    }

    public static final class Builder {
        private final BuilderCompat mBuilderCompat;

        public Builder(ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new BuilderCompat31Impl(contentInfoCompat);
            } else {
                this.mBuilderCompat = new BuilderCompatImpl(contentInfoCompat);
            }
        }

        public ContentInfoCompat build() {
            return this.mBuilderCompat.build();
        }

        public Builder setClip(ClipData clipData) {
            this.mBuilderCompat.setClip(clipData);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mBuilderCompat.setExtras(bundle);
            return this;
        }

        public Builder setFlags(int i10) {
            this.mBuilderCompat.setFlags(i10);
            return this;
        }

        public Builder setLinkUri(Uri uri) {
            this.mBuilderCompat.setLinkUri(uri);
            return this;
        }

        public Builder setSource(int i10) {
            this.mBuilderCompat.setSource(i10);
            return this;
        }

        public Builder(ClipData clipData, int i10) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new BuilderCompat31Impl(clipData, i10);
            } else {
                this.mBuilderCompat = new BuilderCompatImpl(clipData, i10);
            }
        }
    }

    public static Pair<ClipData, ClipData> partition(ClipData clipData, androidx.core.util.Predicate<ClipData.Item> predicate) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
            ClipData.Item itemAt = clipData.getItemAt(i10);
            if (predicate.test(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        if (arrayList2 == null) {
            return Pair.create(clipData, null);
        }
        return Pair.create(buildClipData(clipData.getDescription(), arrayList), buildClipData(clipData.getDescription(), arrayList2));
    }

    public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, Predicate<ClipData.Item> predicate) {
        return Api31Impl.partition(contentInfo, predicate);
    }
}
