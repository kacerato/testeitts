package androidx.room.util;

import android.database.Cursor;
import androidx.sqlite.db.SupportSQLiteDatabase;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;

public final class FtsTableInfo {
    private static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};
    public final Set<String> columns;
    public final String name;
    public final Set<String> options;

    public FtsTableInfo(String name, Set<String> columns, Set<String> options) {
        this.name = name;
        this.columns = columns;
        this.options = options;
    }

    public static Set<String> parseOptions(String createStatement) {
        if (createStatement.isEmpty()) {
            return new HashSet();
        }
        String substring = createStatement.substring(createStatement.indexOf(40) + 1, createStatement.lastIndexOf(41));
        ArrayList<String> arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int i10 = -1;
        for (int i11 = 0; i11 < substring.length(); i11++) {
            char charAt = substring.charAt(i11);
            if (charAt != '\"' && charAt != '\'') {
                if (charAt != ',') {
                    if (charAt != '[') {
                        if (charAt != ']') {
                            if (charAt != '`') {
                            }
                        } else if (!arrayDeque.isEmpty() && ((Character) arrayDeque.peek()).charValue() == '[') {
                            arrayDeque.pop();
                        }
                    } else if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(charAt));
                    }
                } else if (arrayDeque.isEmpty()) {
                    arrayList.add(substring.substring(i10 + 1, i11).trim());
                    i10 = i11;
                }
            }
            if (arrayDeque.isEmpty()) {
                arrayDeque.push(Character.valueOf(charAt));
            } else if (((Character) arrayDeque.peek()).charValue() == charAt) {
                arrayDeque.pop();
            }
        }
        arrayList.add(substring.substring(i10 + 1).trim());
        HashSet hashSet = new HashSet();
        for (String str : arrayList) {
            for (String str2 : FTS_OPTIONS) {
                if (str.startsWith(str2)) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }

    public static FtsTableInfo read(SupportSQLiteDatabase database, String tableName) {
        return new FtsTableInfo(tableName, readColumns(database, tableName), readOptions(database, tableName));
    }

    private static Set<String> readColumns(SupportSQLiteDatabase database, String tableName) {
        Cursor query = database.query("PRAGMA table_info(`" + tableName + "`)");
        HashSet hashSet = new HashSet();
        try {
            if (query.getColumnCount() > 0) {
                int columnIndex = query.getColumnIndex("name");
                while (query.moveToNext()) {
                    hashSet.add(query.getString(columnIndex));
                }
            }
            return hashSet;
        } finally {
            query.close();
        }
    }

    private static Set<String> readOptions(SupportSQLiteDatabase database, String tableName) {
        Cursor query = database.query("SELECT * FROM sqlite_master WHERE `name` = '" + tableName + "'");
        try {
            String string = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("sql")) : "";
            query.close();
            return parseOptions(string);
        } catch (Throwable th2) {
            query.close();
            throw th2;
        }
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo = (FtsTableInfo) o10;
        String str = this.name;
        if (str == null ? ftsTableInfo.name != null : !str.equals(ftsTableInfo.name)) {
            return false;
        }
        Set<String> set = this.columns;
        if (set == null ? ftsTableInfo.columns != null : !set.equals(ftsTableInfo.columns)) {
            return false;
        }
        Set<String> set2 = this.options;
        Set<String> set3 = ftsTableInfo.options;
        return set2 != null ? set2.equals(set3) : set3 == null;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Set<String> set = this.columns;
        int hashCode2 = (hashCode + (set != null ? set.hashCode() : 0)) * 31;
        Set<String> set2 = this.options;
        return hashCode2 + (set2 != null ? set2.hashCode() : 0);
    }

    public String toString() {
        return "FtsTableInfo{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + ", columns=" + ((Object) this.columns) + ", options=" + ((Object) this.options) + JavaElement.JEM_ANNOTATION;
    }

    public FtsTableInfo(String name, Set<String> columns, String createSql) {
        this.name = name;
        this.columns = columns;
        this.options = parseOptions(createSql);
    }
}
