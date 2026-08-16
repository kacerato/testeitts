package org.apache.commons.math3.stat;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;

public class Frequency implements Serializable {
    private static final long serialVersionUID = -3845586908418844111L;
    private final SortedMap<Comparable<?>, Long> freqTable;

    public static class NaturalComparator<T extends Comparable<T>> implements Comparator<Comparable<T>>, Serializable {
        private static final long serialVersionUID = -3852193713161395148L;

        private NaturalComparator() {
        }

        @Override
        public int compare(Comparable<T> comparable, Comparable<T> comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public Frequency() {
        this.freqTable = new TreeMap();
    }

    public void addValue(Comparable<?> comparable) throws MathIllegalArgumentException {
        incrementValue(comparable, 1L);
    }

    public void clear() {
        this.freqTable.clear();
    }

    public Iterator<Map.Entry<Comparable<?>, Long>> entrySetIterator() {
        return this.freqTable.entrySet().iterator();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Frequency)) {
            return false;
        }
        Frequency frequency = (Frequency) obj;
        SortedMap<Comparable<?>, Long> sortedMap = this.freqTable;
        if (sortedMap == null) {
            if (frequency.freqTable != null) {
                return false;
            }
        } else if (!sortedMap.equals(frequency.freqTable)) {
            return false;
        }
        return true;
    }

    public long getCount(Comparable<?> comparable) {
        if (comparable instanceof Integer) {
            return getCount(((Integer) comparable).longValue());
        }
        try {
            Long l10 = this.freqTable.get(comparable);
            if (l10 != null) {
                return l10.longValue();
            }
            return 0L;
        } catch (ClassCastException unused) {
            return 0L;
        }
    }

    public long getCumFreq(Comparable<?> comparable) {
        if (getSumFreq() == 0) {
            return 0L;
        }
        if (comparable instanceof Integer) {
            return getCumFreq(((Integer) comparable).longValue());
        }
        Comparator<? super Comparable<?>> comparator = this.freqTable.comparator();
        if (comparator == null) {
            comparator = new NaturalComparator<>();
        }
        try {
            Long l10 = this.freqTable.get(comparable);
            long longValue = l10 != null ? l10.longValue() : 0L;
            if (comparator.compare(comparable, this.freqTable.firstKey()) < 0) {
                return 0L;
            }
            if (comparator.compare(comparable, this.freqTable.lastKey()) >= 0) {
                return getSumFreq();
            }
            Iterator<Comparable<?>> valuesIterator = valuesIterator();
            while (valuesIterator.hasNext()) {
                Comparable<?> next = valuesIterator.next();
                if (comparator.compare(comparable, next) <= 0) {
                    break;
                }
                longValue += getCount(next);
            }
            return longValue;
        } catch (ClassCastException unused) {
            return 0L;
        }
    }

    public double getCumPct(Comparable<?> comparable) {
        long sumFreq = getSumFreq();
        if (sumFreq == 0) {
            return Double.NaN;
        }
        return getCumFreq(comparable) / sumFreq;
    }

    public List<Comparable<?>> getMode() {
        Iterator<Long> it = this.freqTable.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            if (longValue > j10) {
                j10 = longValue;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Comparable<?>, Long> entry : this.freqTable.entrySet()) {
            if (entry.getValue().longValue() == j10) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    public double getPct(Comparable<?> comparable) {
        long sumFreq = getSumFreq();
        if (sumFreq == 0) {
            return Double.NaN;
        }
        return getCount(comparable) / sumFreq;
    }

    public long getSumFreq() {
        Iterator<Long> it = this.freqTable.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            j10 += it.next().longValue();
        }
        return j10;
    }

    public int getUniqueCount() {
        return this.freqTable.o().size();
    }

    public int hashCode() {
        SortedMap<Comparable<?>, Long> sortedMap = this.freqTable;
        return 31 + (sortedMap == null ? 0 : sortedMap.hashCode());
    }

    public void incrementValue(Comparable<?> comparable, long j10) throws MathIllegalArgumentException {
        Comparable<?> valueOf = comparable instanceof Integer ? Long.valueOf(((Integer) comparable).longValue()) : comparable;
        try {
            Long l10 = this.freqTable.get(valueOf);
            if (l10 == null) {
                this.freqTable.put(valueOf, Long.valueOf(j10));
            } else {
                this.freqTable.put(valueOf, Long.valueOf(l10.longValue() + j10));
            }
        } catch (ClassCastException unused) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSTANCES_NOT_COMPARABLE_TO_EXISTING_VALUES, comparable.getClass().getName());
        }
    }

    public void merge(Frequency frequency) throws NullArgumentException {
        MathUtils.checkNotNull(frequency, LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        Iterator<Map.Entry<Comparable<?>, Long>> entrySetIterator = frequency.entrySetIterator();
        while (entrySetIterator.hasNext()) {
            Map.Entry<Comparable<?>, Long> next = entrySetIterator.next();
            incrementValue(next.getKey(), next.getValue().longValue());
        }
    }

    public String toString() {
        NumberFormat percentInstance = NumberFormat.getPercentInstance();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Value \t Freq. \t Pct. \t Cum Pct. \n");
        for (Comparable<?> comparable : this.freqTable.o()) {
            sb2.append((Object) comparable);
            sb2.append('\t');
            sb2.append(getCount(comparable));
            sb2.append('\t');
            sb2.append(percentInstance.format(getPct(comparable)));
            sb2.append('\t');
            sb2.append(percentInstance.format(getCumPct(comparable)));
            sb2.append('\n');
        }
        return sb2.toString();
    }

    public Iterator<Comparable<?>> valuesIterator() {
        return this.freqTable.o().iterator();
    }

    public void addValue(int i10) throws MathIllegalArgumentException {
        addValue(Long.valueOf(i10));
    }

    public Frequency(Comparator<?> comparator) {
        this.freqTable = new TreeMap(comparator);
    }

    public void addValue(long j10) throws MathIllegalArgumentException {
        addValue(Long.valueOf(j10));
    }

    public double getCumPct(int i10) {
        return getCumPct(Long.valueOf(i10));
    }

    public double getPct(int i10) {
        return getPct(Long.valueOf(i10));
    }

    public void addValue(char c10) throws MathIllegalArgumentException {
        addValue(Character.valueOf(c10));
    }

    public double getCumPct(long j10) {
        return getCumPct(Long.valueOf(j10));
    }

    public double getPct(long j10) {
        return getPct(Long.valueOf(j10));
    }

    public long getCount(int i10) {
        return getCount(Long.valueOf(i10));
    }

    public double getCumPct(char c10) {
        return getCumPct(Character.valueOf(c10));
    }

    public double getPct(char c10) {
        return getPct(Character.valueOf(c10));
    }

    public long getCount(long j10) {
        return getCount(Long.valueOf(j10));
    }

    public void merge(Collection<Frequency> collection) throws NullArgumentException {
        MathUtils.checkNotNull(collection, LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
        Iterator<Frequency> it = collection.iterator();
        while (it.hasNext()) {
            merge(it.next());
        }
    }

    public long getCount(char c10) {
        return getCount(Character.valueOf(c10));
    }

    public void incrementValue(int i10, long j10) throws MathIllegalArgumentException {
        incrementValue(Long.valueOf(i10), j10);
    }

    public void incrementValue(long j10, long j11) throws MathIllegalArgumentException {
        incrementValue(Long.valueOf(j10), j11);
    }

    public void incrementValue(char c10, long j10) throws MathIllegalArgumentException {
        incrementValue(Character.valueOf(c10), j10);
    }

    public long getCumFreq(int i10) {
        return getCumFreq(Long.valueOf(i10));
    }

    public long getCumFreq(long j10) {
        return getCumFreq(Long.valueOf(j10));
    }

    public long getCumFreq(char c10) {
        return getCumFreq(Character.valueOf(c10));
    }
}
