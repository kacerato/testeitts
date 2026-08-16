package androidx.room.util;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.util.Log;
import java.util.Arrays;

public class CursorUtil {
    private CursorUtil() {
    }

    public static Cursor copyAndClose(Cursor c10) {
        try {
            MatrixCursor matrixCursor = new MatrixCursor(c10.getColumnNames(), c10.getCount());
            while (c10.moveToNext()) {
                Object[] objArr = new Object[c10.getColumnCount()];
                for (int i10 = 0; i10 < c10.getColumnCount(); i10++) {
                    int type = c10.getType(i10);
                    if (type == 0) {
                        objArr[i10] = null;
                    } else if (type == 1) {
                        objArr[i10] = Long.valueOf(c10.getLong(i10));
                    } else if (type == 2) {
                        objArr[i10] = Double.valueOf(c10.getDouble(i10));
                    } else if (type == 3) {
                        objArr[i10] = c10.getString(i10);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i10] = c10.getBlob(i10);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            c10.close();
            return matrixCursor;
        } catch (Throwable th2) {
            c10.close();
            throw th2;
        }
    }

    private static int findColumnIndexBySuffix(Cursor cursor, String name) {
        return -1;
    }

    public static int getColumnIndex(Cursor c10, String name) {
        int columnIndex = c10.getColumnIndex(name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = c10.getColumnIndex("`" + name + "`");
        return columnIndex2 >= 0 ? columnIndex2 : findColumnIndexBySuffix(c10, name);
    }

    public static int getColumnIndexOrThrow(Cursor c10, String name) {
        String str;
        int columnIndex = getColumnIndex(c10, name);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            str = Arrays.toString(c10.getColumnNames());
        } catch (Exception e10) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e10);
            str = "";
        }
        throw new IllegalArgumentException("column '" + name + "' does not exist. Available columns: " + str);
    }

    public static int findColumnIndexBySuffix(String[] columnNames, String name) {
        String str = "." + name;
        String str2 = "." + name + "`";
        for (int i10 = 0; i10 < columnNames.length; i10++) {
            String str3 = columnNames[i10];
            if (str3.length() >= name.length() + 2) {
                if (str3.endsWith(str)) {
                    return i10;
                }
                if (str3.charAt(0) == '`' && str3.endsWith(str2)) {
                    return i10;
                }
            }
        }
        return -1;
    }
}
