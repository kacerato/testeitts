package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import yd.C16181m;

final class ImportGroupComparator implements Comparator<ImportName> {
    private static final String MATCH_ALL = "";
    private static final String STATIC_MATCH_ALL = "#";
    private static final String STATIC_PREFIX = "#";
    private static List<String> memoizedImportOrder;
    private static IndexedImportGroups memoizedIndexedImportGroups;
    private final IndexedImportGroups indexedImportGroups;

    public static final class ImportGroup {
        private final int index;
        private final String name;
        private final ImportGroup prefix;

        public ImportGroup(String str, int i10, ImportGroup importGroup) {
            this.name = str;
            this.index = i10;
            this.prefix = importGroup;
        }

        public int getIndex() {
            return this.index;
        }

        public String getName() {
            return this.name;
        }

        public ImportGroup getPrefix() {
            return this.prefix;
        }

        public String toString() {
            return String.format("ImportGroup(%d:%s)", Integer.valueOf(getIndex()), getName());
        }
    }

    public static final class IndexedImportGroups {
        final NavigableMap<String, ImportGroup> staticImportGroupByName;
        final NavigableMap<String, ImportGroup> typeImportGroupsByName;

        public IndexedImportGroups(NavigableMap<String, ImportGroup> navigableMap, NavigableMap<String, ImportGroup> navigableMap2) {
            this.typeImportGroupsByName = navigableMap;
            this.staticImportGroupByName = navigableMap2;
        }
    }

    public ImportGroupComparator(List<String> list) {
        this.indexedImportGroups = indexImportOrder(includeMatchAllImportGroups(list));
    }

    private int determineSortPosition(ImportName importName) {
        String str = importName.isOnDemand() ? importName.containerName : importName.qualifiedName;
        ImportGroup value = (importName.isStatic ? this.indexedImportGroups.staticImportGroupByName : this.indexedImportGroups.typeImportGroupsByName).floorEntry(str).getValue();
        while (!isWholeSegmentPrefix(value.getName(), str)) {
            value = value.getPrefix();
        }
        return value.getIndex();
    }

    private static List<String> includeMatchAllImportGroups(List<String> list) {
        boolean contains = list.contains("");
        boolean contains2 = list.contains(C16181m.f130230g);
        if (contains && contains2) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size() + 2);
        if (!contains2) {
            arrayList.add(C16181m.f130230g);
        }
        arrayList.addAll(list);
        if (!contains) {
            arrayList.add("");
        }
        return arrayList;
    }

    private static synchronized IndexedImportGroups indexImportOrder(List<String> list) {
        HashMap hashMap;
        synchronized (ImportGroupComparator.class) {
            if (list.equals(memoizedImportOrder)) {
                return memoizedIndexedImportGroups;
            }
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            for (int i10 = 0; i10 < list.size(); i10++) {
                String str = list.get(i10);
                if (str.startsWith(C16181m.f130230g)) {
                    str = str.substring(1);
                    hashMap = hashMap3;
                } else {
                    hashMap = hashMap2;
                }
                hashMap.put(str, Integer.valueOf(i10));
            }
            memoizedImportOrder = list;
            IndexedImportGroups indexedImportGroups = new IndexedImportGroups(mapImportGroups(hashMap2), mapImportGroups(hashMap3));
            memoizedIndexedImportGroups = indexedImportGroups;
            return indexedImportGroups;
        }
    }

    private static boolean isWholeSegmentPrefix(String str, String str2) {
        if (str2.startsWith(str)) {
            return str.isEmpty() || str2.length() == str.length() || str2.charAt(str.length()) == '.';
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static NavigableMap<String, ImportGroup> mapImportGroups(Map<String, Integer> map) {
        if (map.isEmpty()) {
            map = Collections.singletonMap("", 0);
        }
        ArrayList<String> arrayList = new ArrayList(map.o());
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        ArrayDeque arrayDeque = new ArrayDeque();
        for (String str : arrayList) {
            while (!arrayDeque.isEmpty() && !isWholeSegmentPrefix(((ImportGroup) arrayDeque.getLast()).getName(), str)) {
                arrayDeque.removeLast();
            }
            ImportGroup importGroup = new ImportGroup(str, map.get(str).intValue(), (ImportGroup) arrayDeque.peekLast());
            arrayList2.add(importGroup);
            arrayDeque.addLast(importGroup);
        }
        TreeMap treeMap = new TreeMap();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ImportGroup importGroup2 = (ImportGroup) it.next();
            treeMap.put(importGroup2.getName(), importGroup2);
        }
        return treeMap;
    }

    @Override
    public int compare(ImportName importName, ImportName importName2) {
        return determineSortPosition(importName) - determineSortPosition(importName2);
    }
}
