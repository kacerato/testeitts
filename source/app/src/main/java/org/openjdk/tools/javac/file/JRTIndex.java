package org.openjdk.tools.javac.file;

import java.io.IOException;
import java.io.UncheckedIOException;
import java.lang.ref.SoftReference;
import java.net.URI;
import java.nio.file.DirectoryStream;
import java.nio.file.FileSystem;
import java.nio.file.FileSystemNotFoundException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.ProviderNotFoundException;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.file.RelativePath;
import org.openjdk.tools.javac.util.Context;

public class JRTIndex {
    private static JRTIndex sharedInstance;
    private ResourceBundle ctBundle;
    private final FileSystem jrtfs = FileSystems.getFileSystem(URI.create("jrt:/"));
    private final Map<RelativePath.RelativeDirectory, SoftReference<Entry>> entries = new HashMap();

    public static class CtSym {
        static final CtSym EMPTY = new CtSym(false, false, null);
        public final boolean hidden;
        public final String minProfile;
        public final boolean proprietary;

        public CtSym(boolean z10, boolean z11, String str) {
            this.hidden = z10;
            this.proprietary = z11;
            this.minProfile = str;
        }

        public String toString() {
            boolean z10;
            StringBuilder sb2 = new StringBuilder("CtSym[");
            boolean z11 = true;
            if (this.hidden) {
                sb2.append("hidden");
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.proprietary) {
                if (z10) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append("proprietary");
            } else {
                z11 = z10;
            }
            if (this.minProfile != null) {
                if (z11) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(this.minProfile);
            }
            sb2.append("]");
            return sb2.toString();
        }
    }

    public class Entry {
        final CtSym ctSym;
        final Map<String, Path> files;
        final Set<RelativePath.RelativeDirectory> subdirs;

        private Entry(Map<String, Path> map, Set<RelativePath.RelativeDirectory> set, CtSym ctSym) {
            this.files = map;
            this.subdirs = set;
            this.ctSym = ctSym;
        }
    }

    private JRTIndex() throws IOException {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CtSym getCtInfo(RelativePath.RelativeDirectory relativeDirectory) {
        char c10;
        if (relativeDirectory.path.isEmpty()) {
            return CtSym.EMPTY;
        }
        if (this.ctBundle == null) {
            this.ctBundle = ResourceBundle.getBundle("org.openjdk.tools.javac.resources.ct");
        }
        try {
            String[] split = this.ctBundle.getString(relativeDirectory.path.replace('/', '.') + '*').split(" +", 0);
            int length = split.length;
            String str = null;
            boolean z10 = false;
            boolean z11 = false;
            for (int i10 = 0; i10 < length; i10++) {
                String str2 = split[i10];
                int hashCode = str2.hashCode();
                if (hashCode != -1217487446) {
                    if (hashCode == -261419329 && str2.equals("proprietary")) {
                        c10 = 1;
                        if (c10 != 0) {
                            z10 = true;
                        } else if (c10 != 1) {
                            str = str2;
                        } else {
                            z11 = true;
                        }
                    }
                    c10 = '\uffff';
                    if (c10 != 0) {
                    }
                } else {
                    if (str2.equals("hidden")) {
                        c10 = 0;
                        if (c10 != 0) {
                        }
                    }
                    c10 = '\uffff';
                    if (c10 != 0) {
                    }
                }
            }
            return new CtSym(z10, z11, str);
        } catch (MissingResourceException unused) {
            return CtSym.EMPTY;
        }
    }

    public static synchronized JRTIndex getSharedInstance() {
        JRTIndex jRTIndex;
        synchronized (JRTIndex.class) {
            if (sharedInstance == null) {
                try {
                    sharedInstance = new JRTIndex();
                } catch (IOException e10) {
                    throw new UncheckedIOException(e10);
                }
            }
            jRTIndex = sharedInstance;
        }
        return jRTIndex;
    }

    public static JRTIndex instance(Context context) {
        try {
            JRTIndex jRTIndex = (JRTIndex) context.get(JRTIndex.class);
            if (jRTIndex != null) {
                return jRTIndex;
            }
            JRTIndex jRTIndex2 = new JRTIndex();
            context.put((Class<Class>) JRTIndex.class, (Class) jRTIndex2);
            return jRTIndex2;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static boolean isAvailable() {
        try {
            FileSystems.getFileSystem(URI.create("jrt:/"));
            return true;
        } catch (FileSystemNotFoundException | ProviderNotFoundException unused) {
            return false;
        }
    }

    public CtSym getCtSym(CharSequence charSequence) throws IOException {
        return getEntry(RelativePath.RelativeDirectory.forPackage(charSequence)).ctSym;
    }

    public synchronized Entry getEntry(RelativePath.RelativeDirectory relativeDirectory) throws IOException {
        Entry entry;
        try {
            SoftReference<Entry> softReference = this.entries.get(relativeDirectory);
            entry = softReference == null ? null : softReference.get();
            if (entry == null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Path path = relativeDirectory.path.isEmpty() ? this.jrtfs.getPath("/modules", new String[0]) : this.jrtfs.getPath("/packages", new String[0]).resolve(relativeDirectory.getPath().replaceAll("/$", "").replace("/", "."));
                if (Files.exists(path, new LinkOption[0])) {
                    DirectoryStream<Path> newDirectoryStream = Files.newDirectoryStream(path);
                    try {
                        for (Path path2 : newDirectoryStream) {
                            if (Files.isSymbolicLink(path2)) {
                                path2 = Files.readSymbolicLink(path2);
                            }
                            Path resolveAgainst = relativeDirectory.resolveAgainst(path2);
                            if (Files.exists(resolveAgainst, new LinkOption[0])) {
                                DirectoryStream<Path> newDirectoryStream2 = Files.newDirectoryStream(resolveAgainst);
                                try {
                                    for (Path path3 : newDirectoryStream2) {
                                        String path4 = path3.getFileName().toString();
                                        if (Files.isRegularFile(path3, new LinkOption[0])) {
                                            linkedHashMap.put(path4, path3);
                                        } else if (Files.isDirectory(path3, new LinkOption[0])) {
                                            linkedHashSet.add(new RelativePath.RelativeDirectory(relativeDirectory, path4));
                                        }
                                    }
                                    newDirectoryStream2.close();
                                } finally {
                                }
                            }
                        }
                        newDirectoryStream.close();
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } finally {
                        }
                    }
                }
                Entry entry2 = new Entry(Collections.unmodifiableMap(linkedHashMap), Collections.unmodifiableSet(linkedHashSet), getCtInfo(relativeDirectory));
                this.entries.put(relativeDirectory, new SoftReference<>(entry2));
                entry = entry2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return entry;
    }

    public boolean isInJRT(FileObject fileObject) {
        return (fileObject instanceof PathFileObject) && ((PathFileObject) fileObject).getPath().getFileSystem() == this.jrtfs;
    }
}
