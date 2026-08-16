package JAVARuntime;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SynchronizedList.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SynchronizedList.class
  classes.dex
 */
@ClassCategory(cat = {"Lists"})
public class SynchronizedList implements List {
    private transient List list;

    public SynchronizedList() {
    }

    public SynchronizedList(List list) {
    }

    @Override
    public int size() {
        return this.list.size();
    }

    @Override
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override
    public boolean contains(Object obj) {
        return this.list.contains(obj);
    }

    @Override
    public Iterator iterator() {
        return this.list.iterator();
    }

    @Override
    public Object[] toArray() {
        return this.list.toArray();
    }

    @Override
    public boolean add(Object obj) {
        return this.list.add(obj);
    }

    @Override
    public boolean remove(Object obj) {
        return this.list.remove(obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        return this.list.addAll(collection);
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        return this.list.addAll(i10, collection);
    }

    @Override
    public void clear() {
        this.list.clear();
    }

    @Override
    public boolean equals(Object obj) {
        return this.list.equals(obj);
    }

    @Override
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override
    public Object get(int i10) {
        return this.list.get(i10);
    }

    @Override
    public Object set(int i10, Object obj) {
        return this.list.set(i10, obj);
    }

    @Override
    public void add(int i10, Object obj) {
        this.list.add(i10, obj);
    }

    @Override
    public Object remove(int i10) {
        return this.list.remove(i10);
    }

    @Override
    public int indexOf(Object obj) {
        return this.list.indexOf(obj);
    }

    @Override
    public int lastIndexOf(Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override
    public ListIterator listIterator() {
        return this.list.listIterator();
    }

    @Override
    public ListIterator listIterator(int i10) {
        return this.list.listIterator(i10);
    }

    @Override
    public List subList(int i10, int i11) {
        return this.list.subList(i10, i11);
    }

    @Override
    public boolean retainAll(Collection collection) {
        return this.list.retainAll(collection);
    }

    @Override
    public boolean removeAll(Collection collection) {
        return this.list.removeAll(collection);
    }

    @Override
    public boolean containsAll(Collection collection) {
        return this.list.containsAll(collection);
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return this.list.toArray(objArr);
    }
}
