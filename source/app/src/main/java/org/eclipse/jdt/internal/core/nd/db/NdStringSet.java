package org.eclipse.jdt.internal.core.nd.db;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;

public class NdStringSet {

    private final Database f102545db;
    private Map<String, Long> lazyCache;
    private long ptr;
    private long head = 0;
    private long loaded = 0;

    public enum NodeType {
        Next,
        Item,
        _last;

        public static final int sizeof = (int) _last.offset;
        public final long offset = ordinal() * 4;

        NodeType() {
        }

        public static NodeType[] valuesCustom() {
            NodeType[] valuesCustom = values();
            int length = valuesCustom.length;
            NodeType[] nodeTypeArr = new NodeType[length];
            System.arraycopy(valuesCustom, 0, nodeTypeArr, 0, length);
            return nodeTypeArr;
        }

        public long get(Database database, long j10) throws CoreException {
            return database.getRecPtr(j10 + this.offset);
        }

        public void put(Database database, long j10, long j11) throws CoreException {
            database.putRecPtr(j10 + this.offset, j11);
        }
    }

    public NdStringSet(Database database, long j10) throws CoreException {
        this.f102545db = database;
        this.ptr = j10;
    }

    private long getHead() throws CoreException {
        if (this.head == 0) {
            this.head = this.f102545db.getRecPtr(this.ptr);
        }
        return this.head;
    }

    public long add(String str) throws CoreException {
        long find = find(str);
        if (find != 0) {
            return find;
        }
        long record = this.f102545db.newString(str).getRecord();
        long malloc = this.f102545db.malloc(NodeType.sizeof, (short) 6);
        NodeType.Next.put(this.f102545db, malloc, getHead());
        NodeType.Item.put(this.f102545db, malloc, record);
        if (this.lazyCache == null) {
            this.lazyCache = new HashMap();
        }
        this.lazyCache.put(str, Long.valueOf(record));
        this.head = malloc;
        if (this.loaded == 0) {
            this.loaded = malloc;
        }
        this.f102545db.putRecPtr(this.ptr, malloc);
        return record;
    }

    public void clearCaches() {
        this.head = 0L;
        this.loaded = 0L;
        if (this.lazyCache != null) {
            this.lazyCache = null;
        }
    }

    public long find(String str) throws CoreException {
        Long l10;
        Map<String, Long> map = this.lazyCache;
        if (map != null && (l10 = map.get(str)) != null) {
            return l10.longValue();
        }
        if (getHead() == 0) {
            return 0L;
        }
        if (this.lazyCache == null) {
            this.lazyCache = new HashMap();
        }
        long j10 = this.loaded;
        long head = j10 == 0 ? getHead() : NodeType.Next.get(this.f102545db, j10);
        while (head != 0) {
            long j11 = NodeType.Next.get(this.f102545db, head);
            long j12 = NodeType.Item.get(this.f102545db, head);
            IString string = this.f102545db.getString(j12);
            this.lazyCache.put(string.getString(), Long.valueOf(j12));
            if (string.compare(str, true) == 0) {
                return j12;
            }
            this.loaded = head;
            head = j11;
        }
        return 0L;
    }

    public long remove(String str) throws CoreException {
        Map<String, Long> map = this.lazyCache;
        if (map != null) {
            map.remove(str);
        }
        long head = getHead();
        long j10 = 0;
        while (head != 0) {
            NodeType nodeType = NodeType.Next;
            long j11 = nodeType.get(this.f102545db, head);
            long j12 = NodeType.Item.get(this.f102545db, head);
            if (this.f102545db.getString(j12).compare(str, true) == 0) {
                if (this.head != head) {
                    nodeType.put(this.f102545db, j10, j11);
                } else {
                    this.f102545db.putRecPtr(this.ptr, j11);
                    this.head = j11;
                }
                this.f102545db.free(head, (short) 6);
                return j12;
            }
            j10 = head;
            head = j11;
        }
        return 0L;
    }
}
