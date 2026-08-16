package org.openjdk.tools.javac.platform;

import b3.s;
import com.android.tools.r8.kotlin.Y3;
import java.util.Optional;
import java.util.ServiceLoader;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.openjdk.tools.javac.main.Arguments;
import org.openjdk.tools.javac.platform.PlatformProvider;

public class PlatformUtils {
    public static boolean lambda$lookupPlatformDescription$0(String str, PlatformProvider platformProvider) {
        Stream stream = StreamSupport.stream(platformProvider.getSupportedPlatformNames().spliterator(), false);
        str.getClass();
        return stream.anyMatch(new Y3(str));
    }

    public static Optional lambda$lookupPlatformDescription$1(String str, String str2, PlatformProvider platformProvider) {
        try {
            return Optional.of(platformProvider.getPlatform(str, str2));
        } catch (PlatformProvider.PlatformNotSupported unused) {
            return Optional.empty();
        }
    }

    public static PlatformDescription lookupPlatformDescription(String str) {
        int indexOf = str.indexOf(s.f32937c);
        final String substring = indexOf != -1 ? str.substring(0, indexOf) : str;
        final String substring2 = indexOf != -1 ? str.substring(indexOf + 1) : "";
        return (PlatformDescription) StreamSupport.stream(ServiceLoader.load(PlatformProvider.class, Arguments.class.getClassLoader()).spliterator(), false).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$lookupPlatformDescription$0;
                lambda$lookupPlatformDescription$0 = PlatformUtils.lambda$lookupPlatformDescription$0(String.this, (PlatformProvider) obj);
                return lambda$lookupPlatformDescription$0;
            }
        }).findFirst().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$lookupPlatformDescription$1;
                lambda$lookupPlatformDescription$1 = PlatformUtils.lambda$lookupPlatformDescription$1(String.this, substring2, (PlatformProvider) obj);
                return lambda$lookupPlatformDescription$1;
            }
        }).orElse(null);
    }
}
