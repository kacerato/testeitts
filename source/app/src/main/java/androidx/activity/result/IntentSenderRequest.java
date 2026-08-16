package androidx.activity.result;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

public final class IntentSenderRequest implements Parcelable {
    public static final Parcelable.Creator<IntentSenderRequest> CREATOR = new Parcelable.Creator<IntentSenderRequest>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IntentSenderRequest createFromParcel(Parcel parcel) {
            return new IntentSenderRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public IntentSenderRequest[] newArray(int i10) {
            return new IntentSenderRequest[i10];
        }
    };
    private final Intent mFillInIntent;
    private final int mFlagsMask;
    private final int mFlagsValues;
    private final IntentSender mIntentSender;

    public IntentSenderRequest(IntentSender intentSender, Intent intent, int i10, int i11) {
        this.mIntentSender = intentSender;
        this.mFillInIntent = intent;
        this.mFlagsMask = i10;
        this.mFlagsValues = i11;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Intent getFillInIntent() {
        return this.mFillInIntent;
    }

    public int getFlagsMask() {
        return this.mFlagsMask;
    }

    public int getFlagsValues() {
        return this.mFlagsValues;
    }

    public IntentSender getIntentSender() {
        return this.mIntentSender;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.mIntentSender, i10);
        parcel.writeParcelable(this.mFillInIntent, i10);
        parcel.writeInt(this.mFlagsMask);
        parcel.writeInt(this.mFlagsValues);
    }

    public static final class Builder {
        private Intent mFillInIntent;
        private int mFlagsMask;
        private int mFlagsValues;
        private IntentSender mIntentSender;

        public Builder(IntentSender intentSender) {
            this.mIntentSender = intentSender;
        }

        public IntentSenderRequest build() {
            return new IntentSenderRequest(this.mIntentSender, this.mFillInIntent, this.mFlagsMask, this.mFlagsValues);
        }

        public Builder setFillInIntent(Intent intent) {
            this.mFillInIntent = intent;
            return this;
        }

        public Builder setFlags(int i10, int i11) {
            this.mFlagsValues = i10;
            this.mFlagsMask = i11;
            return this;
        }

        public Builder(PendingIntent pendingIntent) {
            this(pendingIntent.getIntentSender());
        }
    }

    public IntentSenderRequest(Parcel parcel) {
        this.mIntentSender = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.mFillInIntent = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.mFlagsMask = parcel.readInt();
        this.mFlagsValues = parcel.readInt();
    }
}
