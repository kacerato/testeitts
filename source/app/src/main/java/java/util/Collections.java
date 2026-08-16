package java.util;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/Collections.class
 */
public class Collections {
    public static final List EMPTY_LIST = null;
    public static final Map EMPTY_MAP = null;
    public static final Set EMPTY_SET = null;

    Collections() {
        throw new RuntimeException("Stub!");
    }

    public static <T extends Comparable<? super T>> void sort(List<T> list) {
        throw new RuntimeException("Stub!");
    }

    public static <T> void sort(List<T> list, Comparator<? super T> c10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> int binarySearch(List<? extends Comparable<? super T>> list, T key) {
        throw new RuntimeException("Stub!");
    }

    public static <T> int binarySearch(List<? extends T> list, T key, Comparator<? super T> c10) {
        throw new RuntimeException("Stub!");
    }

    public static void reverse(List<?> list) {
        throw new RuntimeException("Stub!");
    }

    public static void shuffle(List<?> list) {
        throw new RuntimeException("Stub!");
    }

    public static void shuffle(List<?> list, Random rnd) {
        throw new RuntimeException("Stub!");
    }

    public static void swap(List<?> list, int i10, int j10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> void fill(List<? super T> list, T obj) {
        throw new RuntimeException("Stub!");
    }

    public static <T> void copy(List<? super T> dest, List<? extends T> src) {
        throw new RuntimeException("Stub!");
    }

    public static <T extends Comparable<? super T>> T min(Collection<? extends T> coll) {
        throw new RuntimeException("Stub!");
    }

    public static <T> T min(Collection<? extends T> coll, Comparator<? super T> comp) {
        throw new RuntimeException("Stub!");
    }

    public static <T extends Comparable<? super T>> T max(Collection<? extends T> coll) {
        throw new RuntimeException("Stub!");
    }

    public static <T> T max(Collection<? extends T> coll, Comparator<? super T> comp) {
        throw new RuntimeException("Stub!");
    }

    public static void rotate(List<?> list, int distance) {
        throw new RuntimeException("Stub!");
    }

    public static <T> boolean replaceAll(List<T> list, T oldVal, T newVal) {
        throw new RuntimeException("Stub!");
    }

    public static int indexOfSubList(List<?> source, List<?> target) {
        throw new RuntimeException("Stub!");
    }

    public static int lastIndexOfSubList(List<?> source, List<?> target) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Collection<T> unmodifiableCollection(Collection<? extends T> c10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Set<T> unmodifiableSet(Set<? extends T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> SortedSet<T> unmodifiableSortedSet(SortedSet<T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> NavigableSet<T> unmodifiableNavigableSet(NavigableSet<T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> List<T> unmodifiableList(List<? extends T> list) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> Map<K, V> unmodifiableMap(Map<? extends K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> SortedMap<K, V> unmodifiableSortedMap(SortedMap<K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> NavigableMap<K, V> unmodifiableNavigableMap(NavigableMap<K, ? extends V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Collection<T> synchronizedCollection(Collection<T> c10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Set<T> synchronizedSet(Set<T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> SortedSet<T> synchronizedSortedSet(SortedSet<T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> NavigableSet<T> synchronizedNavigableSet(NavigableSet<T> s10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> List<T> synchronizedList(List<T> list) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> Map<K, V> synchronizedMap(Map<K, V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> SortedMap<K, V> synchronizedSortedMap(SortedMap<K, V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> NavigableMap<K, V> synchronizedNavigableMap(NavigableMap<K, V> m10) {
        throw new RuntimeException("Stub!");
    }

    public static <E> Collection<E> checkedCollection(Collection<E> c10, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <E> Queue<E> checkedQueue(Queue<E> queue, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <E> Set<E> checkedSet(Set<E> s10, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <E> SortedSet<E> checkedSortedSet(SortedSet<E> s10, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <E> NavigableSet<E> checkedNavigableSet(NavigableSet<E> s10, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <E> List<E> checkedList(List<E> list, Class<E> type) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> Map<K, V> checkedMap(Map<K, V> m10, Class<K> keyType, Class<V> valueType) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> SortedMap<K, V> checkedSortedMap(SortedMap<K, V> m10, Class<K> keyType, Class<V> valueType) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> NavigableMap<K, V> checkedNavigableMap(NavigableMap<K, V> m10, Class<K> keyType, Class<V> valueType) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Iterator<T> emptyIterator() {
        throw new RuntimeException("Stub!");
    }

    public static <T> ListIterator<T> emptyListIterator() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Enumeration<T> emptyEnumeration() {
        throw new RuntimeException("Stub!");
    }

    public static final <T> Set<T> emptySet() {
        throw new RuntimeException("Stub!");
    }

    public static <E> SortedSet<E> emptySortedSet() {
        throw new RuntimeException("Stub!");
    }

    public static <E> NavigableSet<E> emptyNavigableSet() {
        throw new RuntimeException("Stub!");
    }

    public static final <T> List<T> emptyList() {
        throw new RuntimeException("Stub!");
    }

    public static final <K, V> Map<K, V> emptyMap() {
        throw new RuntimeException("Stub!");
    }

    public static final <K, V> SortedMap<K, V> emptySortedMap() {
        throw new RuntimeException("Stub!");
    }

    public static final <K, V> NavigableMap<K, V> emptyNavigableMap() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Set<T> singleton(T o10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> List<T> singletonList(T o10) {
        throw new RuntimeException("Stub!");
    }

    public static <K, V> Map<K, V> singletonMap(K key, V value) {
        throw new RuntimeException("Stub!");
    }

    public static <T> List<T> nCopies(int n10, T o10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Comparator<T> reverseOrder() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Comparator<T> reverseOrder(Comparator<T> cmp) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Enumeration<T> enumeration(Collection<T> c10) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ArrayList<T> list(Enumeration<T> e10) {
        throw new RuntimeException("Stub!");
    }

    public static int frequency(Collection<?> c10, Object o10) {
        throw new RuntimeException("Stub!");
    }

    public static boolean disjoint(Collection<?> c12, Collection<?> c22) {
        throw new RuntimeException("Stub!");
    }

    @SafeVarargs
    public static <T> boolean addAll(Collection<? super T> c10, T... elements) {
        throw new RuntimeException("Stub!");
    }

    public static <E> Set<E> newSetFromMap(Map<E, Boolean> map) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Queue<T> asLifoQueue(Deque<T> deque) {
        throw new RuntimeException("Stub!");
    }
}
