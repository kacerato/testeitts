package java.lang.reflect;

import com.android.dx.rop.code.AccessFlags;
import dalvik.bytecode.Opcodes;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import jdk.internal.vm.annotation.Stable;
import org.openjdk.tools.javac.code.Flags;

public enum AccessFlag {
    PUBLIC(1, true, Location.SET_CLASS_FIELD_METHOD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_CLASS_FIELD_METHOD))),
    PRIVATE(2, true, Location.SET_FIELD_METHOD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_FIELD_METHOD))),
    PROTECTED(4, true, Location.SET_FIELD_METHOD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_FIELD_METHOD))),
    STATIC(8, true, Location.SET_FIELD_METHOD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_FIELD_METHOD))),
    FINAL(16, true, Location.SET_FINAL_8, List.of(Map.entry(ClassFileFormatVersion.RELEASE_7, Location.SET_CLASS_FIELD_METHOD_INNER_CLASS), Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_CLASS_FIELD_METHOD))),
    SUPER(32, false, Location.SET_CLASS, List.of()),
    OPEN(32, false, Location.SET_MODULE, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.EMPTY_SET))),
    TRANSITIVE(32, false, Location.SET_MODULE_REQUIRES, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.EMPTY_SET))),
    SYNCHRONIZED(32, true, Location.SET_METHOD, List.of()),
    STATIC_PHASE(64, false, Location.SET_MODULE_REQUIRES, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.EMPTY_SET))),
    VOLATILE(64, true, Location.SET_FIELD, List.of()),
    BRIDGE(64, false, Location.SET_METHOD, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, Location.EMPTY_SET))),
    TRANSIENT(128, true, Location.SET_FIELD, List.of()),
    VARARGS(128, false, Location.SET_METHOD, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, Location.EMPTY_SET))),
    NATIVE(256, true, Location.SET_METHOD, List.of()),
    INTERFACE(512, false, Location.SET_CLASS_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_CLASS))),
    ABSTRACT(1024, true, Location.SET_CLASS_METHOD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_0, Location.SET_CLASS_METHOD))),
    STRICT(2048, true, Location.EMPTY_SET, List.of(Map.entry(ClassFileFormatVersion.RELEASE_16, Location.SET_METHOD), Map.entry(ClassFileFormatVersion.RELEASE_1, Location.EMPTY_SET))),
    SYNTHETIC(4096, false, Location.SET_SYNTHETIC_9, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.SET_SYNTHETIC_8), Map.entry(ClassFileFormatVersion.RELEASE_7, Location.SET_SYNTHETIC_5), Map.entry(ClassFileFormatVersion.RELEASE_4, Location.EMPTY_SET))),
    ANNOTATION(8192, false, Location.SET_CLASS_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, Location.EMPTY_SET))),
    ENUM(16384, false, Location.SET_CLASS_FIELD_INNER_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, Location.EMPTY_SET))),
    MANDATED(32768, false, Location.SET_MANDATED_9, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.SET_METHOD_PARAM), Map.entry(ClassFileFormatVersion.RELEASE_7, Location.EMPTY_SET))),
    MODULE(32768, false, Location.SET_CLASS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Location.EMPTY_SET)));

    private final int mask;
    private final boolean sourceModifier;
    private final Set<Location> locations;
    private final List<Map.Entry<ClassFileFormatVersion, Set<Location>>> historicalLocations;

    @Stable
    private static final AccessFlag[] CLASS_FLAGS;

    @Stable
    private static final AccessFlag[] FIELD_FLAGS;

    @Stable
    private static final AccessFlag[] METHOD_FLAGS;

    @Stable
    private static final AccessFlag[] INNER_CLASS_FLAGS;

    @Stable
    private static final AccessFlag[] METHOD_PARAMETER_FLAGS;

    @Stable
    private static final AccessFlag[] MODULE_FLAGS;

    @Stable
    private static final AccessFlag[] MODULE_REQUIRES_FLAGS;

    @Stable
    private static final AccessFlag[] MODULE_EXPORTS_FLAGS;

    @Stable
    private static final AccessFlag[] MODULE_OPENS_FLAGS;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !AccessFlag.class.desiredAssertionStatus();
        CLASS_FLAGS = createDefinition(PUBLIC, FINAL, SUPER, INTERFACE, ABSTRACT, SYNTHETIC, ANNOTATION, ENUM, MODULE);
        FIELD_FLAGS = createDefinition(PUBLIC, PRIVATE, PROTECTED, STATIC, FINAL, VOLATILE, TRANSIENT, SYNTHETIC, ENUM);
        METHOD_FLAGS = createDefinition(PUBLIC, PRIVATE, PROTECTED, STATIC, FINAL, SYNCHRONIZED, BRIDGE, VARARGS, NATIVE, ABSTRACT, STRICT, SYNTHETIC);
        INNER_CLASS_FLAGS = createDefinition(PUBLIC, PRIVATE, PROTECTED, STATIC, FINAL, INTERFACE, ABSTRACT, SYNTHETIC, ANNOTATION, ENUM);
        METHOD_PARAMETER_FLAGS = createDefinition(FINAL, SYNTHETIC, MANDATED);
        MODULE_FLAGS = createDefinition(OPEN, SYNTHETIC, MANDATED);
        MODULE_REQUIRES_FLAGS = createDefinition(TRANSITIVE, STATIC_PHASE, SYNTHETIC, MANDATED);
        MODULE_EXPORTS_FLAGS = createDefinition(SYNTHETIC, MANDATED);
        MODULE_OPENS_FLAGS = createDefinition(SYNTHETIC, MANDATED);
    }

    AccessFlag(int mask, boolean sourceModifier, Set set, List list) {
        this.mask = mask;
        this.sourceModifier = sourceModifier;
        this.locations = set;
        this.historicalLocations = Location.ensureHistoryOrdered(list);
    }

    public int mask() {
        return this.mask;
    }

    public boolean sourceModifier() {
        return this.sourceModifier;
    }

    public Set<Location> locations() {
        return this.locations;
    }

    public Set<Location> locations(ClassFileFormatVersion cffv) {
        return (Set) Location.findInHistory(this.locations, this.historicalLocations, cffv);
    }

    public static Set<AccessFlag> maskToAccessFlags(int mask, Location location) {
        AccessFlag[] definition = findDefinition(location);
        int unmatchedMask = mask & (location.flagsMask() ^ (-1));
        if (unmatchedMask != 0) {
            throw new IllegalArgumentException("Unmatched bit position 0x" + Integer.toHexString(unmatchedMask) + " for location " + ((Object) location));
        }
        return new AccessFlagSet(definition, mask);
    }

    public static Set<AccessFlag> maskToAccessFlags(int mask, Location location, ClassFileFormatVersion cffv) {
        AccessFlag[] definition = findDefinition(location);
        int unmatchedMask = mask & (location.flagsMask(cffv) ^ (-1));
        if (unmatchedMask != 0) {
            throw new IllegalArgumentException("Unmatched bit position 0x" + Integer.toHexString(unmatchedMask) + " for location " + ((Object) location) + " for class file format " + ((Object) cffv));
        }
        return new AccessFlagSet(definition, mask);
    }

    public enum Location {
        CLASS(63025, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, Integer.valueOf(AccessFlags.CLASS_FLAGS)), Map.entry(ClassFileFormatVersion.RELEASE_4, 1585))),
        FIELD(AccessFlags.FIELD_FLAGS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, 223))),
        METHOD(Opcodes.OP_SGET_WIDE_JUMBO, List.of(Map.entry(ClassFileFormatVersion.RELEASE_16, Integer.valueOf(Opcodes.OP_SPUT_OBJECT_JUMBO)), Map.entry(ClassFileFormatVersion.RELEASE_4, Integer.valueOf(Flags.MethodFlags)), Map.entry(ClassFileFormatVersion.RELEASE_1, 1343))),
        INNER_CLASS(AccessFlags.INNER_CLASS_FLAGS, List.of(Map.entry(ClassFileFormatVersion.RELEASE_4, 1567), Map.entry(ClassFileFormatVersion.RELEASE_0, 0))),
        METHOD_PARAMETER(36880, List.of(Map.entry(ClassFileFormatVersion.RELEASE_7, 0))),
        MODULE(36896, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, 0))),
        MODULE_REQUIRES(36960, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, 0))),
        MODULE_EXPORTS(36864, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, 0))),
        MODULE_OPENS(36864, List.of(Map.entry(ClassFileFormatVersion.RELEASE_8, 0)));

        private final int flagsMask;
        private final List<Map.Entry<ClassFileFormatVersion, Integer>> historicalFlagsMasks;
        private static final Set<Location> EMPTY_SET = Set.of();
        private static final Set<Location> SET_MODULE = Set.of(MODULE);
        private static final Set<Location> SET_CLASS_METHOD_INNER_CLASS = Set.of(CLASS, METHOD, INNER_CLASS);
        private static final Set<Location> SET_CLASS_FIELD_METHOD = Set.of(CLASS, FIELD, METHOD);
        private static final Set<Location> SET_CLASS_FIELD_INNER_CLASS = Set.of(CLASS, FIELD, INNER_CLASS);
        private static final Set<Location> SET_CLASS_FIELD_METHOD_INNER_CLASS = Set.of(CLASS, FIELD, METHOD, INNER_CLASS);
        private static final Set<Location> SET_CLASS_METHOD = Set.of(CLASS, METHOD);
        private static final Set<Location> SET_FIELD_METHOD = Set.of(FIELD, METHOD);
        private static final Set<Location> SET_FIELD_METHOD_INNER_CLASS = Set.of(FIELD, METHOD, INNER_CLASS);
        private static final Set<Location> SET_METHOD = Set.of(METHOD);
        private static final Set<Location> SET_METHOD_PARAM = Set.of(METHOD_PARAMETER);
        private static final Set<Location> SET_FIELD = Set.of(FIELD);
        private static final Set<Location> SET_CLASS = Set.of(CLASS);
        private static final Set<Location> SET_CLASS_INNER_CLASS = Set.of(CLASS, INNER_CLASS);
        private static final Set<Location> SET_MODULE_REQUIRES = Set.of(MODULE_REQUIRES);
        private static final Set<Location> SET_FINAL_8 = Set.of(CLASS, FIELD, METHOD, INNER_CLASS, METHOD_PARAMETER);
        private static final Set<Location> SET_SYNTHETIC_5 = Set.of(CLASS, FIELD, METHOD, INNER_CLASS);
        private static final Set<Location> SET_SYNTHETIC_8 = Set.of(CLASS, FIELD, METHOD, INNER_CLASS, METHOD_PARAMETER);
        private static final Set<Location> SET_SYNTHETIC_9 = Set.of(CLASS, FIELD, METHOD, INNER_CLASS, METHOD_PARAMETER, MODULE, MODULE_REQUIRES, MODULE_EXPORTS, MODULE_OPENS);
        private static final Set<Location> SET_MANDATED_9 = Set.of(METHOD_PARAMETER, MODULE, MODULE_REQUIRES, MODULE_EXPORTS, MODULE_OPENS);

        Location(int flagsMask, List list) {
            this.flagsMask = flagsMask;
            this.historicalFlagsMasks = ensureHistoryOrdered(list);
        }

        private static <T> List<Map.Entry<ClassFileFormatVersion, T>> ensureHistoryOrdered(List<Map.Entry<ClassFileFormatVersion, T>> history) {
            ClassFileFormatVersion lastVersion = ClassFileFormatVersion.latest();
            for (Map.Entry<ClassFileFormatVersion, T> e10 : history) {
                ClassFileFormatVersion historyVersion = e10.getKey();
                if (lastVersion.compareTo(historyVersion) <= 0) {
                    throw new IllegalArgumentException("Versions out of order");
                }
                lastVersion = historyVersion;
            }
            return history;
        }

        private static <T> T findInHistory(T candidate, List<Map.Entry<ClassFileFormatVersion, T>> history, ClassFileFormatVersion cffv) {
            Objects.requireNonNull(cffv);
            for (Map.Entry<ClassFileFormatVersion, T> e10 : history) {
                if (e10.getKey().compareTo(cffv) < 0) {
                    return candidate;
                }
                candidate = e10.getValue();
            }
            return candidate;
        }

        public int flagsMask() {
            return this.flagsMask;
        }

        public int flagsMask(ClassFileFormatVersion cffv) {
            return ((Integer) findInHistory(Integer.valueOf(this.flagsMask), this.historicalFlagsMasks, cffv)).intValue();
        }

        public Set<AccessFlag> flags() {
            return new AccessFlagSet(AccessFlag.findDefinition(this), flagsMask());
        }

        public Set<AccessFlag> flags(ClassFileFormatVersion cffv) {
            return new AccessFlagSet(AccessFlag.findDefinition(this), flagsMask(cffv));
        }
    }

    private static AccessFlag[] createDefinition(AccessFlag... known) {
        AccessFlag[] ret = new AccessFlag[16];
        for (AccessFlag flag : known) {
            int mask = flag.mask;
            int pos = Integer.numberOfTrailingZeros(mask);
            if (!$assertionsDisabled && ret[pos] != null) {
                throw new AssertionError((Object) (((Object) ret[pos]) + " " + ((Object) flag)));
            }
            ret[pos] = flag;
        }
        return ret;
    }

    private static AccessFlag[] findDefinition(Location location) {
        switch (location) {
            case CLASS:
                return CLASS_FLAGS;
            case FIELD:
                return FIELD_FLAGS;
            case METHOD:
                return METHOD_FLAGS;
            case INNER_CLASS:
                return INNER_CLASS_FLAGS;
            case METHOD_PARAMETER:
                return METHOD_PARAMETER_FLAGS;
            case MODULE:
                return MODULE_FLAGS;
            case MODULE_REQUIRES:
                return MODULE_REQUIRES_FLAGS;
            case MODULE_EXPORTS:
                return MODULE_EXPORTS_FLAGS;
            case MODULE_OPENS:
                return MODULE_OPENS_FLAGS;
            default:
                throw new MatchException(null, null);
        }
    }

    private static int undefinedMask(AccessFlag[] definition, int mask) {
        if (!$assertionsDisabled && definition.length != 16) {
            throw new AssertionError();
        }
        int definedMask = 0;
        for (int i10 = 0; i10 < 16; i10++) {
            if (definition[i10] != null) {
                definedMask |= 1 << i10;
            }
        }
        return mask & (definedMask ^ (-1));
    }

    private static final class AccessFlagSet extends AbstractSet<AccessFlag> {

        @Stable
        private final AccessFlag[] definition;
        private final int mask;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !AccessFlag.class.desiredAssertionStatus();
        }

        @Override
        public boolean add(AccessFlag e10) {
            throw uoe();
        }

        @Override
        public boolean addAll(Collection<? extends AccessFlag> c10) {
            throw uoe();
        }

        @Override
        public void clear() {
            throw uoe();
        }

        @Override
        public boolean remove(Object o10) {
            throw uoe();
        }

        @Override
        public boolean removeAll(Collection<?> c10) {
            throw uoe();
        }

        @Override
        public boolean removeIf(Predicate<? super AccessFlag> filter) {
            throw uoe();
        }

        @Override
        public boolean retainAll(Collection<?> c10) {
            throw uoe();
        }

        private static UnsupportedOperationException uoe() {
            return new UnsupportedOperationException();
        }

        private AccessFlagSet(AccessFlag[] definition, int mask) {
            if (!$assertionsDisabled && AccessFlag.undefinedMask(definition, mask) != 0) {
                throw new AssertionError(mask);
            }
            this.definition = definition;
            this.mask = mask;
        }

        @Override
        public Iterator<AccessFlag> iterator() {
            return new AccessFlagIterator(this.definition, this.mask);
        }

        @Override
        public void forEach(Consumer<? super AccessFlag> action) {
            Objects.requireNonNull(action);
            for (int i10 = 0; i10 < 16; i10++) {
                if ((this.mask & (1 << i10)) != 0) {
                    action.accept(this.definition[i10]);
                }
            }
        }

        private static final class AccessFlagIterator implements Iterator<AccessFlag> {

            @Stable
            private final AccessFlag[] definition;
            private int remainingMask;

            private AccessFlagIterator(AccessFlag[] definition, int remainingMask) {
                this.definition = definition;
                this.remainingMask = remainingMask;
            }

            @Override
            public boolean hasNext() {
                return this.remainingMask != 0;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public AccessFlag next() {
                int flagBit = Integer.lowestOneBit(this.remainingMask);
                if (flagBit == 0) {
                    throw new NoSuchElementException();
                }
                this.remainingMask &= flagBit ^ (-1);
                return this.definition[Integer.numberOfTrailingZeros(flagBit)];
            }
        }

        @Override
        public int size() {
            return Integer.bitCount(this.mask);
        }

        @Override
        public boolean contains(Object o10) {
            Object requireNonNull = Objects.requireNonNull(o10);
            if (requireNonNull instanceof AccessFlag) {
                AccessFlag flag = (AccessFlag) requireNonNull;
                int bit = flag.mask;
                return (bit & this.mask) != 0 && this.definition[Integer.numberOfTrailingZeros(bit)] == flag;
            }
            return false;
        }

        @Override
        public boolean isEmpty() {
            return this.mask == 0;
        }
    }
}
