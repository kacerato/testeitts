package org.openjdk.tools.javac.code;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.StringUtils;

public class Flags {
    public static final int ABSTRACT = 1024;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_MODULE = 32768;
    public static final int ACC_SUPER = 32;
    public static final int ACC_VARARGS = 128;
    public static final int ACYCLIC = 1073741824;
    public static final long ACYCLIC_ANN = 34359738368L;
    public static final int ANNOTATION = 8192;
    public static final int ANONCONSTR = 536870912;
    public static final long AUTOMATIC_MODULE = 4503599627370496L;
    public static final long AUXILIARY = 17592186044416L;
    public static final int AccessFlags = 7;
    public static final long AnnotationTypeElementMask = 1025;
    public static final long BAD_OVERRIDE = 35184372088832L;
    public static final int BLOCK = 1048576;
    public static final long BRIDGE = 2147483648L;
    public static final long CLASH = 4398046511104L;
    public static final int CLASS_SEEN = 33554432;
    public static final int COMPOUND = 16777216;
    public static final int ClassFlags = 32273;
    public static final int ConstructorFlags = 7;
    public static final long DEFAULT = 8796093022208L;
    public static final int DEPRECATED = 131072;
    public static final long DEPRECATED_ANNOTATION = 18014398509481984L;
    public static final long DEPRECATED_REMOVAL = 36028797018963968L;
    public static final long EFFECTIVELY_FINAL = 2199023255552L;
    public static final int ENUM = 16384;
    public static final int EXISTS = 8388608;
    public static final long ExtendedStandardFlags = 8796093026303L;
    public static final int FINAL = 16;
    public static final long GENERATEDCONSTR = 68719476736L;
    public static final int HASINIT = 262144;
    public static final long HAS_RESOURCE = 72057594037927936L;
    public static final long HYPOTHETICAL = 137438953472L;
    public static final int INTERFACE = 512;
    public static final int InterfaceMethodFlags = 1025;
    public static final long InterfaceMethodMask = 8796093025291L;
    public static final int InterfaceVarFlags = 25;
    public static final long LAMBDA_METHOD = 562949953421312L;
    public static final int LOCKED = 134217728;
    public static final int LocalClassFlags = 23568;
    public static final long LocalVarFlags = 8589934608L;
    public static final int MANDATED = 32768;
    public static final long MODULE = 2251799813685248L;
    public static final int MemberClassFlags = 24087;
    public static final int MethodFlags = 3391;
    public static final long ModifierFlags = 8796093025791L;
    public static final int NATIVE = 256;
    public static final int NOOUTERTHIS = 4194304;
    public static final long NOT_IN_PROFILE = 35184372088832L;
    public static final long PARAMETER = 8589934592L;
    public static final long POTENTIALLY_AMBIGUOUS = 281474976710656L;
    public static final int PRIVATE = 2;
    public static final long PROPRIETARY = 274877906944L;
    public static final int PROTECTED = 4;
    public static final int PUBLIC = 1;
    public static final long ReceiverParamFlags = 8589934592L;
    public static final long SIGNATURE_POLYMORPHIC = 70368744177664L;
    public static final int SOURCE_SEEN = 67108864;
    public static final int STATIC = 8;
    public static final int STRICTFP = 2048;
    public static final int SYNCHRONIZED = 32;
    public static final int SYNTHETIC = 4096;
    public static final long SYSTEM_MODULE = 9007199254740992L;
    public static final int StandardFlags = 4095;
    public static final long THROWS = 140737488355328L;
    public static final int TRANSIENT = 128;
    public static final long TYPE_TRANSLATED = 1125899906842624L;
    public static final int UNATTRIBUTED = 268435456;
    public static final long UNION = 549755813888L;
    public static final long VARARGS = 17179869184L;
    public static final int VOLATILE = 64;
    public static final int VarFlags = 16607;
    private static final Map<Long, Set<Modifier>> modifierSets = new ConcurrentHashMap(64);

    public enum Flag {
        PUBLIC(1),
        PRIVATE(2),
        PROTECTED(4),
        STATIC(8),
        FINAL(16),
        SYNCHRONIZED(32),
        VOLATILE(64),
        TRANSIENT(128),
        NATIVE(256),
        INTERFACE(512),
        ABSTRACT(1024),
        DEFAULT(8796093022208L),
        STRICTFP(2048),
        BRIDGE(2147483648L),
        SYNTHETIC(4096),
        ANNOTATION(8192),
        DEPRECATED(131072),
        HASINIT(TagBits.TypeVariablesAreConnected),
        BLOCK(TagBits.HasNullTypeAnnotation),
        ENUM(16384),
        MANDATED(32768),
        NOOUTERTHIS(TagBits.PassedBoundCheck),
        EXISTS(8388608),
        COMPOUND(16777216),
        CLASS_SEEN(TagBits.HasUnresolvedSuperclass),
        SOURCE_SEEN(TagBits.HasUnresolvedSuperinterfaces),
        LOCKED(TagBits.HasUnresolvedEnclosingType),
        UNATTRIBUTED(TagBits.HasUnresolvedMemberTypes),
        ANONCONSTR(TagBits.HasTypeVariable),
        ACYCLIC(TagBits.HasDirectWildcard),
        PARAMETER(8589934592L),
        VARARGS(17179869184L),
        ACYCLIC_ANN(34359738368L),
        GENERATEDCONSTR(68719476736L),
        HYPOTHETICAL(137438953472L),
        PROPRIETARY(274877906944L),
        UNION(549755813888L),
        EFFECTIVELY_FINAL(2199023255552L),
        CLASH(4398046511104L),
        AUXILIARY(17592186044416L),
        NOT_IN_PROFILE(35184372088832L),
        BAD_OVERRIDE(35184372088832L),
        SIGNATURE_POLYMORPHIC(70368744177664L),
        THROWS(140737488355328L),
        LAMBDA_METHOD(562949953421312L),
        TYPE_TRANSLATED(1125899906842624L),
        MODULE(2251799813685248L),
        AUTOMATIC_MODULE(4503599627370496L),
        SYSTEM_MODULE(9007199254740992L),
        DEPRECATED_ANNOTATION(18014398509481984L),
        DEPRECATED_REMOVAL(36028797018963968L),
        HAS_RESOURCE(72057594037927936L);

        final String lowercaseName = StringUtils.toLowerCase(name());
        final long value;

        Flag(long j10) {
            this.value = j10;
        }

        @Override
        public String toString() {
            return this.lowercaseName;
        }
    }

    private Flags() {
    }

    public static EnumSet<Flag> asFlagSet(long j10) {
        EnumSet<Flag> noneOf = EnumSet.noneOf(Flag.class);
        for (Flag flag : Flag.values()) {
            if ((flag.value & j10) != 0) {
                noneOf.add(flag);
                j10 &= ~flag.value;
            }
        }
        Assert.check(j10 == 0);
        return noneOf;
    }

    public static Set<Modifier> asModifierSet(long j10) {
        Map<Long, Set<Modifier>> map = modifierSets;
        Set<Modifier> set = map.get(Long.valueOf(j10));
        if (set != null) {
            return set;
        }
        EnumSet noneOf = EnumSet.noneOf(Modifier.class);
        if (0 != (1 & j10)) {
            noneOf.add(Modifier.PUBLIC);
        }
        if (0 != (4 & j10)) {
            noneOf.add(Modifier.PROTECTED);
        }
        if (0 != (2 & j10)) {
            noneOf.add(Modifier.PRIVATE);
        }
        if (0 != (1024 & j10)) {
            noneOf.add(Modifier.ABSTRACT);
        }
        if (0 != (8 & j10)) {
            noneOf.add(Modifier.STATIC);
        }
        if (0 != (16 & j10)) {
            noneOf.add(Modifier.FINAL);
        }
        if (0 != (128 & j10)) {
            noneOf.add(Modifier.TRANSIENT);
        }
        if (0 != (64 & j10)) {
            noneOf.add(Modifier.VOLATILE);
        }
        if (0 != (32 & j10)) {
            noneOf.add(Modifier.SYNCHRONIZED);
        }
        if (0 != (256 & j10)) {
            noneOf.add(Modifier.NATIVE);
        }
        if (0 != (2048 & j10)) {
            noneOf.add(Modifier.STRICTFP);
        }
        if (0 != (8796093022208L & j10)) {
            noneOf.add(Modifier.DEFAULT);
        }
        Set<Modifier> unmodifiableSet = Collections.unmodifiableSet(noneOf);
        map.put(Long.valueOf(j10), unmodifiableSet);
        return unmodifiableSet;
    }

    public static boolean isConstant(Symbol.VarSymbol varSymbol) {
        return varSymbol.getConstValue() != null;
    }

    public static boolean isEnum(Symbol symbol) {
        return (symbol.flags() & 16384) != 0;
    }

    public static boolean isStatic(Symbol symbol) {
        return (symbol.flags() & 8) != 0;
    }

    public static String toString(long j10) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<E> it = asFlagSet(j10).iterator();
        String str = "";
        while (it.hasNext()) {
            Flag flag = (Flag) it.next();
            sb2.append(str);
            sb2.append((Object) flag);
            str = " ";
        }
        return sb2.toString();
    }
}
