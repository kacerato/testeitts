package androidx.room.util;

import android.database.Cursor;
import androidx.sqlite.db.SupportSQLiteDatabase;
import org.eclipse.jdt.internal.core.JavaElement;

public final class ViewInfo {
    public final String name;
    public final String sql;

    public ViewInfo(String name, String sql) {
        this.name = name;
        this.sql = sql;
    }

    public static ViewInfo read(SupportSQLiteDatabase database, String viewName) {
        Cursor query = database.query("SELECT name, sql FROM sqlite_master WHERE type = 'view' AND name = '" + viewName + "'");
        try {
            return query.moveToFirst() ? new ViewInfo(query.getString(0), query.getString(1)) : new ViewInfo(viewName, null);
        } finally {
            query.close();
        }
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof ViewInfo)) {
            return false;
        }
        ViewInfo viewInfo = (ViewInfo) o10;
        String str = this.name;
        if (str == null ? viewInfo.name == null : str.equals(viewInfo.name)) {
            String str2 = this.sql;
            if (str2 != null) {
                if (str2.equals(viewInfo.sql)) {
                    return true;
                }
            } else if (viewInfo.sql == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sql;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ViewInfo{name='" + this.name + JavaElement.JEM_MODULAR_CLASSFILE + ", sql='" + this.sql + JavaElement.JEM_MODULAR_CLASSFILE + JavaElement.JEM_ANNOTATION;
    }
}
