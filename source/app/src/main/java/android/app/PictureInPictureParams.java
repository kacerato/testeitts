package android.app;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Rational;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/PictureInPictureParams.class
 */
public final class PictureInPictureParams implements Parcelable {
    public static final Parcelable.Creator<PictureInPictureParams> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/PictureInPictureParams$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setAspectRatio(Rational aspectRatio) {
            throw new RuntimeException("Stub!");
        }

        public Builder setActions(List<RemoteAction> actions) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSourceRectHint(Rect launchBounds) {
            throw new RuntimeException("Stub!");
        }

        public PictureInPictureParams build() {
            throw new RuntimeException("Stub!");
        }
    }

    PictureInPictureParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
