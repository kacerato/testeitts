package androidx.core.os;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ParcelCompat {

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static final <T extends Parcelable> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader) {
            return parcel.readParcelableList(list, classLoader);
        }
    }

    public static class Api30Impl {
        private Api30Impl() {
        }

        public static final Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader) {
            return parcel.readParcelableCreator(classLoader);
        }
    }

    public static class TiramisuImpl {
        private TiramisuImpl() {
        }

        public static <T> T[] readArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            Object[] readArray;
            readArray = parcel.readArray(classLoader, cls);
            return (T[]) readArray;
        }

        public static <T> ArrayList<T> readArrayList(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
            ArrayList<T> readArrayList;
            readArrayList = parcel.readArrayList(classLoader, cls);
            return readArrayList;
        }

        public static <V, K> HashMap<K, V> readHashMap(Parcel parcel, ClassLoader classLoader, Class<? extends K> cls, Class<? extends V> cls2) {
            HashMap<K, V> readHashMap;
            readHashMap = parcel.readHashMap(classLoader, cls, cls2);
            return readHashMap;
        }

        public static <T> void readList(Parcel parcel, List<? super T> list, ClassLoader classLoader, Class<T> cls) {
            parcel.readList(list, classLoader, cls);
        }

        public static <K, V> void readMap(Parcel parcel, Map<? super K, ? super V> map, ClassLoader classLoader, Class<K> cls, Class<V> cls2) {
            parcel.readMap(map, classLoader, cls, cls2);
        }

        public static <T extends Parcelable> T readParcelable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            Object readParcelable;
            readParcelable = parcel.readParcelable(classLoader, cls);
            return (T) readParcelable;
        }

        public static <T> T[] readParcelableArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            Object[] readParcelableArray;
            readParcelableArray = parcel.readParcelableArray(classLoader, cls);
            return (T[]) readParcelableArray;
        }

        public static <T> Parcelable.Creator<T> readParcelableCreator(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            Parcelable.Creator<T> readParcelableCreator;
            readParcelableCreator = parcel.readParcelableCreator(classLoader, cls);
            return readParcelableCreator;
        }

        public static <T> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader, Class<T> cls) {
            List<T> readParcelableList;
            readParcelableList = parcel.readParcelableList(list, classLoader, cls);
            return readParcelableList;
        }

        public static <T extends Serializable> T readSerializable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
            Object readSerializable;
            readSerializable = parcel.readSerializable(classLoader, cls);
            return (T) readSerializable;
        }

        public static <T> SparseArray<T> readSparseArray(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
            SparseArray<T> readSparseArray;
            readSparseArray = parcel.readSparseArray(classLoader, cls);
            return readSparseArray;
        }
    }

    private ParcelCompat() {
    }

    public static <T> T[] readArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? (T[]) TiramisuImpl.readArray(parcel, classLoader, cls) : (T[]) parcel.readArray(classLoader);
    }

    public static <T> ArrayList<T> readArrayList(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
        return BuildCompat.isAtLeastT() ? TiramisuImpl.readArrayList(parcel, classLoader, cls) : parcel.readArrayList(classLoader);
    }

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static <K, V> HashMap<K, V> readHashMap(Parcel parcel, ClassLoader classLoader, Class<? extends K> cls, Class<? extends V> cls2) {
        return BuildCompat.isAtLeastT() ? TiramisuImpl.readHashMap(parcel, classLoader, cls, cls2) : parcel.readHashMap(classLoader);
    }

    public static <T> void readList(Parcel parcel, List<? super T> list, ClassLoader classLoader, Class<T> cls) {
        if (BuildCompat.isAtLeastT()) {
            TiramisuImpl.readList(parcel, list, classLoader, cls);
        } else {
            parcel.readList(list, classLoader);
        }
    }

    public static <K, V> void readMap(Parcel parcel, Map<? super K, ? super V> map, ClassLoader classLoader, Class<K> cls, Class<V> cls2) {
        if (BuildCompat.isAtLeastT()) {
            TiramisuImpl.readMap(parcel, map, classLoader, cls, cls2);
        } else {
            parcel.readMap(map, classLoader);
        }
    }

    public static <T extends Parcelable> T readParcelable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? (T) TiramisuImpl.readParcelable(parcel, classLoader, cls) : (T) parcel.readParcelable(classLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] readParcelableArray(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? (T[]) TiramisuImpl.readParcelableArray(parcel, classLoader, cls) : (T[]) parcel.readParcelableArray(classLoader);
    }

    public static <T> Parcelable.Creator<T> readParcelableCreator(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? TiramisuImpl.readParcelableCreator(parcel, classLoader, cls) : (Parcelable.Creator<T>) Api30Impl.readParcelableCreator(parcel, classLoader);
    }

    public static <T> List<T> readParcelableList(Parcel parcel, List<T> list, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? TiramisuImpl.readParcelableList(parcel, list, classLoader, cls) : Api29Impl.readParcelableList(parcel, list, classLoader);
    }

    public static <T extends Serializable> T readSerializable(Parcel parcel, ClassLoader classLoader, Class<T> cls) {
        return BuildCompat.isAtLeastT() ? (T) TiramisuImpl.readSerializable(parcel, classLoader, cls) : (T) parcel.readSerializable();
    }

    public static <T> SparseArray<T> readSparseArray(Parcel parcel, ClassLoader classLoader, Class<? extends T> cls) {
        return BuildCompat.isAtLeastT() ? TiramisuImpl.readSparseArray(parcel, classLoader, cls) : parcel.readSparseArray(classLoader);
    }

    public static void writeBoolean(Parcel parcel, boolean z10) {
        parcel.writeInt(z10 ? 1 : 0);
    }
}
