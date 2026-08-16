package java.lang.foreign;

import java.lang.invoke.MethodHandles;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiFunction;
import jdk.internal.access.JavaLangAccess;
import jdk.internal.access.SharedSecrets;
import jdk.internal.foreign.ArenaImpl;
import jdk.internal.foreign.MemorySessionImpl;
import jdk.internal.foreign.Utils;
import jdk.internal.javac.Restricted;
import jdk.internal.loader.BuiltinClassLoader;
import jdk.internal.loader.NativeLibraries;
import jdk.internal.loader.NativeLibrary;
import jdk.internal.loader.RawNativeLibraries;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;

@FunctionalInterface
public interface SymbolLookup {
    Optional<MemorySegment> find(String str);

    default MemorySegment findOrThrow(String name) {
        Objects.requireNonNull(name);
        Optional<MemorySegment> address = find(name);
        if (address.isPresent()) {
            return address.get();
        }
        throw new NoSuchElementException("Symbol not found: " + name);
    }

    default SymbolLookup or(SymbolLookup other) {
        Objects.requireNonNull(other);
        return name -> {
            return find(name).or(() -> {
                return other.find(name);
            });
        };
    }

    @CallerSensitive
    static SymbolLookup loaderLookup() {
        ClassLoader systemClassLoader;
        ArenaImpl global;
        Class<?> caller = Reflection.getCallerClass();
        if (caller != null) {
            systemClassLoader = caller.getClassLoader();
        } else {
            systemClassLoader = ClassLoader.getSystemClassLoader();
        }
        ClassLoader loader = systemClassLoader;
        if (loader == null || (loader instanceof BuiltinClassLoader)) {
            global = Arena.global();
        } else {
            MemorySessionImpl session = MemorySessionImpl.createHeap(loader);
            global = session.asArena();
        }
        ArenaImpl arenaImpl = global;
        return name -> {
            Objects.requireNonNull(name);
            if (Utils.containsNullChars(name)) {
                return Optional.empty();
            }
            JavaLangAccess javaLangAccess = SharedSecrets.getJavaLangAccess();
            NativeLibraries nativeLibraries = javaLangAccess.nativeLibrariesFor(loader);
            long addr = nativeLibraries.find(name);
            if (addr == 0) {
                return Optional.empty();
            }
            return Optional.of(MemorySegment.ofAddress(addr).reinterpret(arenaImpl, null));
        };
    }

    @Restricted
    @CallerSensitive
    static SymbolLookup libraryLookup(String name, Arena arena) {
        Reflection.ensureNativeAccess(Reflection.getCallerClass(), SymbolLookup.class, "libraryLookup", false);
        if (Utils.containsNullChars(name)) {
            throw new IllegalArgumentException("Cannot open library: " + name);
        }
        return libraryLookup(name, (v0, v1) -> {
            return v0.load(v1);
        }, arena);
    }

    @Restricted
    @CallerSensitive
    static SymbolLookup libraryLookup(Path path, Arena arena) {
        Reflection.ensureNativeAccess(Reflection.getCallerClass(), SymbolLookup.class, "libraryLookup", false);
        if (path.getFileSystem() != FileSystems.getDefault()) {
            throw new IllegalArgumentException("Path not in default file system: " + ((Object) path));
        }
        return libraryLookup(path, (v0, v1) -> {
            return v0.load(v1);
        }, arena);
    }

    private static <Z> SymbolLookup libraryLookup(Z libDesc, BiFunction<RawNativeLibraries, Z, NativeLibrary> loadLibraryFunc, Arena libArena) {
        Objects.requireNonNull(libDesc);
        Objects.requireNonNull(libArena);
        final RawNativeLibraries nativeLibraries = RawNativeLibraries.newInstance(MethodHandles.lookup());
        final NativeLibrary library = loadLibraryFunc.apply(nativeLibraries, libDesc);
        if (library == null) {
            throw new IllegalArgumentException("Cannot open library: " + ((Object) libDesc));
        }
        MemorySessionImpl.toMemorySession(libArena).addOrCleanupIfFail(new MemorySessionImpl.ResourceList.ResourceCleanup() {
            public void cleanup() {
                nativeLibraries.unload(library);
            }
        });
        return name -> {
            Objects.requireNonNull(name);
            if (Utils.containsNullChars(name)) {
                return Optional.empty();
            }
            long addr = library.find(name);
            if (addr == 0) {
                return Optional.empty();
            }
            return Optional.of(MemorySegment.ofAddress(addr).reinterpret(libArena, null));
        };
    }
}
