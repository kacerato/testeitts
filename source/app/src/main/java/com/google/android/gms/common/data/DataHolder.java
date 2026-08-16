package com.google.android.gms.common.data;

import F0.m;
import F0.o;
import G0.A;
import G0.C2560d;
import I0.c;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@C0.a
@c.a(creator = "DataHolderCreator", validate = true)
@KeepName
public final class DataHolder extends I0.a implements Closeable {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<DataHolder> CREATOR = new o();

    public static final a f61312l = new b(new String[0], null);

    @c.h(id = 1000)
    public final int f61313b;

    @c.InterfaceC0186c(getter = "getColumns", id = 1)
    public final String[] f61314c;

    public Bundle f61315d;

    @c.InterfaceC0186c(getter = "getWindows", id = 2)
    public final CursorWindow[] f61316e;

    @c.InterfaceC0186c(getter = "getStatusCode", id = 3)
    public final int f61317f;

    @Nullable
    @c.InterfaceC0186c(getter = "getMetadata", id = 4)
    public final Bundle f61318g;

    public int[] f61319h;

    public int f61320i;

    public boolean f61321j;

    public boolean f61322k;

    @C0.a
    public static class a {

        public final String[] f61323a;

        public final ArrayList f61324b = new ArrayList();

        public final HashMap f61325c = new HashMap();

        public a(String[] strArr, String str, m mVar) {
            this.f61323a = (String[]) A.r(strArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NonNull
        @C0.a
        public DataHolder a(int i10) {
            return new DataHolder(this, i10);
        }

        @NonNull
        @C0.a
        public DataHolder b(int i10, @NonNull Bundle bundle) {
            return new DataHolder(this, i10, bundle);
        }

        @I2.a
        @NonNull
        @C0.a
        public a c(@NonNull ContentValues contentValues) {
            C2560d.c(contentValues);
            HashMap hashMap = new HashMap(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return d(hashMap);
        }

        @I2.a
        @NonNull
        public a d(@NonNull HashMap hashMap) {
            C2560d.c(hashMap);
            this.f61324b.add(hashMap);
            return this;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0136, code lost:
    
        if (r5 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0138, code lost:
    
        android.util.Log.d("DataHolder", "Couldn't populate window data for row " + r4 + " - allocating new window.");
        r2.freeLastRow();
        r2 = new android.database.CursorWindow(false);
        r2.setStartPosition(r4);
        r2.setNumColumns(r13.f61323a.length);
        r3.add(r2);
        r4 = r4 - 1;
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x016a, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0174, code lost:
    
        throw new com.google.android.gms.common.data.zad("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CursorWindow[] E0(a aVar, int i10) {
        if (aVar.f61323a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = aVar.f61324b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(aVar.f61323a.length);
        int i11 = 0;
        boolean z10 = false;
        while (i11 < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    Log.d("DataHolder", "Allocating additional cursor window for large data set (row " + i11 + ")");
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i11);
                    cursorWindow.setNumColumns(aVar.f61323a.length);
                    arrayList2.add(cursorWindow);
                    if (!cursorWindow.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i11);
                int i12 = 0;
                boolean z11 = true;
                while (true) {
                    if (i12 < aVar.f61323a.length) {
                        if (!z11) {
                            break;
                        }
                        String str = aVar.f61323a[i12];
                        Object obj = map.get(str);
                        if (obj == null) {
                            z11 = cursorWindow.putNull(i11, i12);
                        } else if (obj instanceof String) {
                            z11 = cursorWindow.putString((String) obj, i11, i12);
                        } else if (obj instanceof Long) {
                            z11 = cursorWindow.putLong(((Long) obj).longValue(), i11, i12);
                        } else if (obj instanceof Integer) {
                            z11 = cursorWindow.putLong(((Integer) obj).intValue(), i11, i12);
                        } else if (obj instanceof Boolean) {
                            z11 = cursorWindow.putLong(true != ((Boolean) obj).booleanValue() ? 0L : 1L, i11, i12);
                        } else if (obj instanceof byte[]) {
                            z11 = cursorWindow.putBlob((byte[]) obj, i11, i12);
                        } else if (obj instanceof Double) {
                            z11 = cursorWindow.putDouble(((Double) obj).doubleValue(), i11, i12);
                        } else {
                            if (!(obj instanceof Float)) {
                                throw new IllegalArgumentException("Unsupported object for column " + str + ": " + obj.toString());
                            }
                            z11 = cursorWindow.putDouble(((Float) obj).floatValue(), i11, i12);
                        }
                        i12++;
                    } else if (z11) {
                        z10 = false;
                    }
                }
            } catch (RuntimeException e10) {
                int size2 = arrayList2.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    ((CursorWindow) arrayList2.get(i13)).close();
                }
                throw e10;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @C0.a
    public static a b(@NonNull String[] strArr) {
        return new a(strArr, null, 0 == true ? 1 : 0);
    }

    @NonNull
    @C0.a
    public static DataHolder n(int i10) {
        return new DataHolder(f61312l, i10, (Bundle) null);
    }

    public final float A0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getFloat(i10, this.f61315d.getInt(str));
    }

    public final void B0(@NonNull String str, int i10, int i11, @NonNull CharArrayBuffer charArrayBuffer) {
        D0(str, i10);
        this.f61316e[i11].copyStringToBuffer(i10, this.f61315d.getInt(str), charArrayBuffer);
    }

    public final void C0() {
        this.f61315d = new Bundle();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = this.f61314c;
            if (i11 >= strArr.length) {
                break;
            }
            this.f61315d.putInt(strArr[i11], i11);
            i11++;
        }
        this.f61319h = new int[this.f61316e.length];
        int i12 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f61316e;
            if (i10 >= cursorWindowArr.length) {
                this.f61320i = i12;
                return;
            }
            this.f61319h[i10] = i12;
            i12 += this.f61316e[i10].getNumRows() - (i12 - cursorWindowArr[i10].getStartPosition());
            i10++;
        }
    }

    public final void D0(String str, int i10) {
        Bundle bundle = this.f61315d;
        if (bundle == null || !bundle.containsKey(str)) {
            throw new IllegalArgumentException("No such column: ".concat(String.valueOf(str)));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i10 < 0 || i10 >= this.f61320i) {
            throw new CursorIndexOutOfBoundsException(i10, this.f61320i);
        }
    }

    @Nullable
    @C0.a
    public Bundle Oc() {
        return this.f61318g;
    }

    @C0.a
    public int b0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getInt(i10, this.f61315d.getInt(str));
    }

    @Override
    @C0.a
    public void close() {
        synchronized (this) {
            try {
                if (!this.f61321j) {
                    this.f61321j = true;
                    int i10 = 0;
                    while (true) {
                        CursorWindow[] cursorWindowArr = this.f61316e;
                        if (i10 >= cursorWindowArr.length) {
                            break;
                        }
                        cursorWindowArr[i10].close();
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.f61322k && this.f61316e.length > 0 && !isClosed()) {
                close();
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + toString() + ")");
            }
        } finally {
            super.finalize();
        }
    }

    @C0.a
    public int getCount() {
        return this.f61320i;
    }

    @C0.a
    public boolean isClosed() {
        boolean z10;
        synchronized (this) {
            z10 = this.f61321j;
        }
        return z10;
    }

    @C0.a
    public long n0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getLong(i10, this.f61315d.getInt(str));
    }

    @C0.a
    public boolean p(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getLong(i10, this.f61315d.getInt(str)) == 1;
    }

    @NonNull
    @C0.a
    public byte[] t(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getBlob(i10, this.f61315d.getInt(str));
    }

    @C0.a
    public int u0() {
        return this.f61317f;
    }

    @NonNull
    @C0.a
    public String v0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getString(i10, this.f61315d.getInt(str));
    }

    @C0.a
    public int w0(int i10) {
        int length;
        int i11 = 0;
        A.x(i10 >= 0 && i10 < this.f61320i);
        while (true) {
            int[] iArr = this.f61319h;
            length = iArr.length;
            if (i11 >= length) {
                break;
            }
            if (i10 < iArr[i11]) {
                i11--;
                break;
            }
            i11++;
        }
        return i11 == length ? i11 - 1 : i11;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        String[] strArr = this.f61314c;
        int a10 = I0.b.a(parcel);
        I0.b.Z(parcel, 1, strArr, false);
        I0.b.c0(parcel, 2, this.f61316e, i10, false);
        I0.b.F(parcel, 3, u0());
        I0.b.k(parcel, 4, Oc(), false);
        I0.b.F(parcel, 1000, this.f61313b);
        I0.b.b(parcel, a10);
        if ((i10 & 1) != 0) {
            close();
        }
    }

    @C0.a
    public boolean x0(@NonNull String str) {
        return this.f61315d.containsKey(str);
    }

    @C0.a
    public boolean y0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].isNull(i10, this.f61315d.getInt(str));
    }

    public final double z0(@NonNull String str, int i10, int i11) {
        D0(str, i10);
        return this.f61316e[i11].getDouble(i10, this.f61315d.getInt(str));
    }

    @c.b
    public DataHolder(@c.e(id = 1000) int i10, @c.e(id = 1) String[] strArr, @c.e(id = 2) CursorWindow[] cursorWindowArr, @c.e(id = 3) int i11, @Nullable @c.e(id = 4) Bundle bundle) {
        this.f61321j = false;
        this.f61322k = true;
        this.f61313b = i10;
        this.f61314c = strArr;
        this.f61316e = cursorWindowArr;
        this.f61317f = i11;
        this.f61318g = bundle;
    }

    @C0.a
    public DataHolder(@NonNull String[] strArr, @NonNull CursorWindow[] cursorWindowArr, int i10, @Nullable Bundle bundle) {
        this.f61321j = false;
        this.f61322k = true;
        this.f61313b = 1;
        this.f61314c = (String[]) A.r(strArr);
        this.f61316e = (CursorWindow[]) A.r(cursorWindowArr);
        this.f61317f = i10;
        this.f61318g = bundle;
        C0();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DataHolder(@NonNull Cursor cursor, int i10, @Nullable Bundle bundle) {
        this(r8, (CursorWindow[]) r1.toArray(new CursorWindow[r1.size()]), i10, bundle);
        int i11;
        R0.a aVar = new R0.a(cursor);
        String[] columnNames = aVar.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = aVar.getCount();
            CursorWindow window = aVar.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                i11 = 0;
            } else {
                window.acquireReference();
                aVar.a(null);
                arrayList.add(window);
                i11 = window.getNumRows();
            }
            while (i11 < count) {
                if (!aVar.moveToPosition(i11)) {
                    break;
                }
                CursorWindow window2 = aVar.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    aVar.a(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(i11);
                    aVar.fillWindow(i11, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                i11 = window2.getStartPosition() + window2.getNumRows();
            }
            aVar.close();
        } catch (Throwable th2) {
            aVar.close();
            throw th2;
        }
    }

    public DataHolder(a aVar, int i10, @Nullable Bundle bundle) {
        this(aVar.f61323a, E0(aVar, -1), i10, (Bundle) null);
    }
}
