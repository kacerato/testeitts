package androidx.room.util;

import android.database.Cursor;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.sqlite.db.SupportSQLiteDatabase;
import b2.AbstractC3834c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.eclipse.jdt.internal.core.JavaElement;

public final class TableInfo {
    public static final int CREATED_FROM_DATABASE = 2;
    public static final int CREATED_FROM_ENTITY = 1;
    public static final int CREATED_FROM_UNKNOWN = 0;
    public final Map<String, Column> columns;
    public final Set<ForeignKey> foreignKeys;
    public final Set<Index> indices;
    public final String name;

    public static final class Column {
        public final int affinity;
        public final String defaultValue;
        private final int mCreatedFrom;
        public final String name;
        public final boolean notNull;
        public final int primaryKeyPosition;
        public final String type;

        @Deprecated
        public Column(String name, String type, boolean notNull, int primaryKeyPosition) {
            this(name, type, notNull, primaryKeyPosition, null, 0);
        }

        private static int findAffinity(String type) {
            if (type == null) {
                return 5;
            }
            String upperCase = type.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean equals(Object o10) {
            String str;
            String str2;
            String str3;
            if (this == o10) {
                return true;
            }
            if (!(o10 instanceof Column)) {
                return false;
            }
            Column column = (Column) o10;
            if (this.primaryKeyPosition != column.primaryKeyPosition || !this.name.equals(column.name) || this.notNull != column.notNull) {
                return false;
            }
            if (this.mCreatedFrom == 1 && column.mCreatedFrom == 2 && (str3 = this.defaultValue) != null && !str3.equals(column.defaultValue)) {
                return false;
            }
            if (this.mCreatedFrom == 2 && column.mCreatedFrom == 1 && (str2 = column.defaultValue) != null && !str2.equals(this.defaultValue)) {
                return false;
            }
            int i10 = this.mCreatedFrom;
            return (i10 == 0 || i10 != column.mCreatedFrom || ((str = this.defaultValue) == null ? column.defaultValue == null : str.equals(column.defaultValue))) && this.affinity == column.affinity;
        }

        public int hashCode() {
            return (((((this.name.hashCode() * 31) + this.affinity) * 31) + (this.notNull ? 1231 : 1237)) * 31) + this.primaryKeyPosition;
        }

        public boolean isPrimaryKey() {
            return this.primaryKeyPosition > 0;
        }

        public String toString() {
            return "Column{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + ", type='" + this.type + JavaElement.JEM_MODULAR_CLASSFILE + ", affinity='" + this.affinity + JavaElement.JEM_MODULAR_CLASSFILE + ", notNull=" + this.notNull + ", primaryKeyPosition=" + this.primaryKeyPosition + ", defaultValue='" + this.defaultValue + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
        }

        public Column(String name, String type, boolean notNull, int primaryKeyPosition, String defaultValue, int createdFrom) {
            this.name = name;
            this.type = type;
            this.notNull = notNull;
            this.primaryKeyPosition = primaryKeyPosition;
            this.affinity = findAffinity(type);
            this.defaultValue = defaultValue;
            this.mCreatedFrom = createdFrom;
        }
    }

    public static final class ForeignKey {
        public final List<String> columnNames;
        public final String onDelete;
        public final String onUpdate;
        public final List<String> referenceColumnNames;
        public final String referenceTable;

        public ForeignKey(String referenceTable, String onDelete, String onUpdate, List<String> columnNames, List<String> referenceColumnNames) {
            this.referenceTable = referenceTable;
            this.onDelete = onDelete;
            this.onUpdate = onUpdate;
            this.columnNames = Collections.unmodifiableList(columnNames);
            this.referenceColumnNames = Collections.unmodifiableList(referenceColumnNames);
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (!(o10 instanceof ForeignKey)) {
                return false;
            }
            ForeignKey foreignKey = (ForeignKey) o10;
            if (this.referenceTable.equals(foreignKey.referenceTable) && this.onDelete.equals(foreignKey.onDelete) && this.onUpdate.equals(foreignKey.onUpdate) && this.columnNames.equals(foreignKey.columnNames)) {
                return this.referenceColumnNames.equals(foreignKey.referenceColumnNames);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.referenceTable.hashCode() * 31) + this.onDelete.hashCode()) * 31) + this.onUpdate.hashCode()) * 31) + this.columnNames.hashCode()) * 31) + this.referenceColumnNames.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.referenceTable + JavaElement.JEM_MODULAR_CLASSFILE + ", onDelete='" + this.onDelete + JavaElement.JEM_MODULAR_CLASSFILE + ", onUpdate='" + this.onUpdate + JavaElement.JEM_MODULAR_CLASSFILE + ", columnNames=" + ((Object) this.columnNames) + ", referenceColumnNames=" + ((Object) this.referenceColumnNames) + JavaElement.JEM_ANNOTATION;
        }
    }

    public static class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {
        final String mFrom;
        final int mId;
        final int mSequence;
        final String mTo;

        public ForeignKeyWithSequence(int id2, int sequence, String from, String to) {
            this.mId = id2;
            this.mSequence = sequence;
            this.mFrom = from;
            this.mTo = to;
        }

        @Override
        public int compareTo(ForeignKeyWithSequence o10) {
            int i10 = this.mId - o10.mId;
            return i10 == 0 ? this.mSequence - o10.mSequence : i10;
        }
    }

    public static final class Index {
        public static final String DEFAULT_PREFIX = "index_";
        public final List<String> columns;
        public final String name;
        public final boolean unique;

        public Index(String name, boolean unique, List<String> columns) {
            this.name = name;
            this.unique = unique;
            this.columns = columns;
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (!(o10 instanceof Index)) {
                return false;
            }
            Index index = (Index) o10;
            if (this.unique == index.unique && this.columns.equals(index.columns)) {
                return this.name.startsWith(DEFAULT_PREFIX) ? index.name.startsWith(DEFAULT_PREFIX) : this.name.equals(index.name);
            }
            return false;
        }

        public int hashCode() {
            return ((((this.name.startsWith(DEFAULT_PREFIX) ? -1184239155 : this.name.hashCode()) * 31) + (this.unique ? 1 : 0)) * 31) + this.columns.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + ", unique=" + this.unique + ", columns=" + ((Object) this.columns) + JavaElement.JEM_ANNOTATION;
        }
    }

    public TableInfo(String name, Map<String, Column> columns, Set<ForeignKey> foreignKeys, Set<Index> indices) {
        this.name = name;
        this.columns = Collections.unmodifiableMap(columns);
        this.foreignKeys = Collections.unmodifiableSet(foreignKeys);
        this.indices = indices == null ? null : Collections.unmodifiableSet(indices);
    }

    public static TableInfo read(SupportSQLiteDatabase database, String tableName) {
        return new TableInfo(tableName, readColumns(database, tableName), readForeignKeys(database, tableName), readIndices(database, tableName));
    }

    private static Map<String, Column> readColumns(SupportSQLiteDatabase database, String tableName) {
        Cursor query = database.query("PRAGMA table_info(`" + tableName + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (query.getColumnCount() > 0) {
                int columnIndex = query.getColumnIndex("name");
                int columnIndex2 = query.getColumnIndex("type");
                int columnIndex3 = query.getColumnIndex("notnull");
                int columnIndex4 = query.getColumnIndex("pk");
                int columnIndex5 = query.getColumnIndex("dflt_value");
                while (query.moveToNext()) {
                    String string = query.getString(columnIndex);
                    hashMap.put(string, new Column(string, query.getString(columnIndex2), query.getInt(columnIndex3) != 0, query.getInt(columnIndex4), query.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            query.close();
        }
    }

    private static List<ForeignKeyWithSequence> readForeignKeyFieldMappings(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex(Telephony.Mms.Part.SEQ);
        int columnIndex3 = cursor.getColumnIndex(TypedValues.TransitionType.S_FROM);
        int columnIndex4 = cursor.getColumnIndex(TypedValues.TransitionType.S_TO);
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < count; i10++) {
            cursor.moveToPosition(i10);
            arrayList.add(new ForeignKeyWithSequence(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static Set<ForeignKey> readForeignKeys(SupportSQLiteDatabase database, String tableName) {
        HashSet hashSet = new HashSet();
        Cursor query = database.query("PRAGMA foreign_key_list(`" + tableName + "`)");
        try {
            int columnIndex = query.getColumnIndex("id");
            int columnIndex2 = query.getColumnIndex(Telephony.Mms.Part.SEQ);
            int columnIndex3 = query.getColumnIndex("table");
            int columnIndex4 = query.getColumnIndex("on_delete");
            int columnIndex5 = query.getColumnIndex("on_update");
            List<ForeignKeyWithSequence> readForeignKeyFieldMappings = readForeignKeyFieldMappings(query);
            int count = query.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                query.moveToPosition(i10);
                if (query.getInt(columnIndex2) == 0) {
                    int i11 = query.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (ForeignKeyWithSequence foreignKeyWithSequence : readForeignKeyFieldMappings) {
                        if (foreignKeyWithSequence.mId == i11) {
                            arrayList.add(foreignKeyWithSequence.mFrom);
                            arrayList2.add(foreignKeyWithSequence.mTo);
                        }
                    }
                    hashSet.add(new ForeignKey(query.getString(columnIndex3), query.getString(columnIndex4), query.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            query.close();
            return hashSet;
        } catch (Throwable th2) {
            query.close();
            throw th2;
        }
    }

    /* JADX WARN: Finally extract failed */
    private static Index readIndex(SupportSQLiteDatabase database, String name, boolean unique) {
        Cursor query = database.query("PRAGMA index_xinfo(`" + name + "`)");
        try {
            int columnIndex = query.getColumnIndex("seqno");
            int columnIndex2 = query.getColumnIndex(Telephony.Mms.Part.CONTENT_ID);
            int columnIndex3 = query.getColumnIndex("name");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                TreeMap treeMap = new TreeMap();
                while (query.moveToNext()) {
                    if (query.getInt(columnIndex2) >= 0) {
                        treeMap.put(Integer.valueOf(query.getInt(columnIndex)), query.getString(columnIndex3));
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                Index index = new Index(name, unique, arrayList);
                query.close();
                return index;
            }
            query.close();
            return null;
        } catch (Throwable th2) {
            query.close();
            throw th2;
        }
    }

    private static Set<Index> readIndices(SupportSQLiteDatabase database, String tableName) {
        Cursor query = database.query("PRAGMA index_list(`" + tableName + "`)");
        try {
            int columnIndex = query.getColumnIndex("name");
            int columnIndex2 = query.getColumnIndex("origin");
            int columnIndex3 = query.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (query.moveToNext()) {
                    if (AbstractC3834c.f32824b1.equals(query.getString(columnIndex2))) {
                        String string = query.getString(columnIndex);
                        boolean z10 = true;
                        if (query.getInt(columnIndex3) != 1) {
                            z10 = false;
                        }
                        Index readIndex = readIndex(database, string, z10);
                        if (readIndex == null) {
                            return null;
                        }
                        hashSet.add(readIndex);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            query.close();
        }
    }

    public boolean equals(Object o10) {
        Set<Index> set;
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof TableInfo)) {
            return false;
        }
        TableInfo tableInfo = (TableInfo) o10;
        String str = this.name;
        if (str == null ? tableInfo.name != null : !str.equals(tableInfo.name)) {
            return false;
        }
        Map<String, Column> map = this.columns;
        if (map == null ? tableInfo.columns != null : !map.equals(tableInfo.columns)) {
            return false;
        }
        Set<ForeignKey> set2 = this.foreignKeys;
        if (set2 == null ? tableInfo.foreignKeys != null : !set2.equals(tableInfo.foreignKeys)) {
            return false;
        }
        Set<Index> set3 = this.indices;
        if (set3 == null || (set = tableInfo.indices) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Column> map = this.columns;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<ForeignKey> set = this.foreignKeys;
        return hashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + ", columns=" + ((Object) this.columns) + ", foreignKeys=" + ((Object) this.foreignKeys) + ", indices=" + ((Object) this.indices) + JavaElement.JEM_ANNOTATION;
    }

    public TableInfo(String name, Map<String, Column> columns, Set<ForeignKey> foreignKeys) {
        this(name, columns, foreignKeys, Collections.emptySet());
    }
}
