package android.os;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Parcelable.class
 */
public interface Parcelable {
    public static final int CONTENTS_FILE_DESCRIPTOR = 1;
    public static final int PARCELABLE_WRITE_RETURN_VALUE = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Parcelable$ClassLoaderCreator.class
 */
    public interface ClassLoaderCreator<T> extends Creator<T> {
        T createFromParcel(Parcel parcel, ClassLoader classLoader);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Parcelable$Creator.class
 */
    public interface Creator<T> {
        T createFromParcel(Parcel parcel);

        T[] newArray(int i10);
    }

    int describeContents();

    void writeToParcel(Parcel parcel, int i10);
}
