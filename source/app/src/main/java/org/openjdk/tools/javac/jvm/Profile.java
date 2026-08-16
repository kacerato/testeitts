package org.openjdk.tools.javac.jvm;

import java.util.EnumSet;
import java.util.Set;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Options;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'COMPACT1' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public class Profile {
    private static final Profile[] $VALUES;
    public static final Profile COMPACT1;
    public static final Profile COMPACT2;
    public static final Profile COMPACT3;
    public static final Profile DEFAULT;
    private static final Context.Key<Profile> profileKey;
    public final String name;
    final Set<Target> targets;
    public final int value;

    static {
        Target target = Target.JDK1_8;
        Target target2 = Target.JDK1_9;
        Profile profile = new Profile("COMPACT1", 0, "compact1", 1, target, target2);
        COMPACT1 = profile;
        Profile profile2 = new Profile("COMPACT2", 1, "compact2", 2, target, target2);
        COMPACT2 = profile2;
        Profile profile3 = new Profile("COMPACT3", 2, "compact3", 3, target, target2);
        COMPACT3 = profile3;
        Profile profile4 = new Profile("DEFAULT", 3) {
            @Override
            public boolean isValid(Target target3) {
                return true;
            }
        };
        DEFAULT = profile4;
        $VALUES = new Profile[]{profile, profile2, profile3, profile4};
        profileKey = new Context.Key<>();
    }

    public static Profile instance(Context context) {
        Context.Key<Profile> key = profileKey;
        Profile profile = (Profile) context.get(key);
        if (profile == null) {
            String str = Options.instance(context).get(Option.PROFILE);
            if (str != null) {
                profile = lookup(str);
            }
            if (profile == null) {
                profile = DEFAULT;
            }
            context.put((Context.Key<Context.Key<Profile>>) key, (Context.Key<Profile>) profile);
        }
        return profile;
    }

    public static Profile lookup(String str) {
        for (Profile profile : values()) {
            if (str.equals(profile.name)) {
                return profile;
            }
        }
        return null;
    }

    public static Profile valueOf(String str) {
        return (Profile) Enum.valueOf(Profile.class, str);
    }

    public static Profile[] values() {
        return (Profile[]) $VALUES.clone();
    }

    public boolean isValid(Target target) {
        return this.targets.contains(target);
    }

    private Profile(String str, int i10) {
        this.name = null;
        this.value = Integer.MAX_VALUE;
        this.targets = null;
    }

    public static Profile lookup(int i10) {
        for (Profile profile : values()) {
            if (i10 == profile.value) {
                return profile;
            }
        }
        return null;
    }

    private Profile(String str, int i10, String str2, int i11, Target target, Target... targetArr) {
        this.name = str2;
        this.value = i11;
        this.targets = EnumSet.of(target, targetArr);
    }
}
