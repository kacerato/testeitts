package org.eclipse.jdt.internal.core.nd.db;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.internal.core.nd.Nd;

public class DBProperties {
    static final int PROP_INDEX = 0;
    static final int RECORD_SIZE = 4;

    protected Database f102541db;
    protected BTree index;
    protected long record;

    public DBProperties(Nd nd2) throws IndexException {
        Database db2 = nd2.getDB();
        long malloc = db2.malloc(4L, (short) 2);
        this.record = malloc;
        this.index = new BTree(nd2, malloc, DBProperty.getComparator());
        this.f102541db = db2;
    }

    public void clear() throws IndexException {
        this.index.accept(new IBTreeVisitor() {
            @Override
            public int compare(long j10) throws IndexException {
                return 0;
            }

            @Override
            public boolean visit(long j10) throws IndexException {
                new DBProperty(DBProperties.this.f102541db, j10).delete();
                return false;
            }
        });
    }

    public void delete() throws IndexException {
        clear();
        this.f102541db.free(this.record, (short) 2);
    }

    public Set<String> getKeySet() throws IndexException {
        return DBProperty.getKeySet(this.f102541db, this.index);
    }

    public String getProperty(String str) throws IndexException {
        DBProperty search;
        if (str == null || (search = DBProperty.search(this.f102541db, this.index, str)) == null) {
            return null;
        }
        return search.getValue().getString();
    }

    public long getRecord() {
        return this.record;
    }

    public boolean removeProperty(String str) throws IndexException {
        DBProperty search;
        if (str == null || (search = DBProperty.search(this.f102541db, this.index, str)) == null) {
            return false;
        }
        this.index.delete(search.getRecord());
        search.delete();
        return true;
    }

    public void setProperty(String str, String str2) throws IndexException {
        removeProperty(str);
        this.index.insert(new DBProperty(this.f102541db, str, str2).getRecord());
    }

    public String getProperty(String str, String str2) throws IndexException {
        String property = getProperty(str);
        return property == null ? str2 : property;
    }

    public DBProperties(Nd nd2, long j10) throws IndexException {
        Database db2 = nd2.getDB();
        this.record = j10;
        this.index = new BTree(nd2, j10, DBProperty.getComparator());
        this.f102541db = db2;
    }

    public static class DBProperty {
        static final boolean $assertionsDisabled = false;
        static final int KEY = 0;
        static final int RECORD_SIZE = 8;
        static final int VALUE = 4;

        Database f102542db;
        long record;

        public DBProperty(Database database, String str, String str2) throws IndexException {
            IString newString = database.newString(str);
            IString newString2 = database.newString(str2);
            long malloc = database.malloc(8L, (short) 2);
            this.record = malloc;
            database.putRecPtr(malloc, newString.getRecord());
            database.putRecPtr(this.record + 4, newString2.getRecord());
            this.f102542db = database;
        }

        public static IBTreeComparator getComparator() {
            return new IBTreeComparator() {
                @Override
                public int compare(Nd nd2, long j10, long j11) throws IndexException {
                    Database db2 = nd2.getDB();
                    return db2.getString(db2.getRecPtr(j10)).compare(db2.getString(db2.getRecPtr(j11)), true);
                }
            };
        }

        public static Set<String> getKeySet(final Database database, BTree bTree) throws IndexException {
            final HashSet hashSet = new HashSet();
            bTree.accept(new IBTreeVisitor() {
                @Override
                public int compare(long j10) throws IndexException {
                    return 0;
                }

                @Override
                public boolean visit(long j10) throws IndexException {
                    Set.this.add(new DBProperty(database, j10).getKey().getString());
                    return true;
                }
            });
            return hashSet;
        }

        public static DBProperty search(final Database database, BTree bTree, final String str) throws IndexException {
            final DBProperty[] dBPropertyArr = new DBProperty[1];
            bTree.accept(new IBTreeVisitor() {
                @Override
                public int compare(long j10) throws IndexException {
                    Database database2 = Database.this;
                    return database2.getString(database2.getRecPtr(j10)).compare(str, true);
                }

                @Override
                public boolean visit(long j10) throws IndexException {
                    dBPropertyArr[0] = new DBProperty(Database.this, j10);
                    return false;
                }
            });
            return dBPropertyArr[0];
        }

        public void delete() throws IndexException {
            Database database = this.f102542db;
            database.getString(database.getRecPtr(this.record)).delete();
            Database database2 = this.f102542db;
            database2.getString(database2.getRecPtr(this.record + 4)).delete();
            this.f102542db.free(this.record, (short) 2);
        }

        public IString getKey() throws IndexException {
            Database database = this.f102542db;
            return database.getString(database.getRecPtr(this.record));
        }

        public long getRecord() {
            return this.record;
        }

        public IString getValue() throws IndexException {
            Database database = this.f102542db;
            return database.getString(database.getRecPtr(this.record + 4));
        }

        public DBProperty(Database database, long j10) {
            this.record = j10;
            this.f102542db = database;
        }
    }
}
