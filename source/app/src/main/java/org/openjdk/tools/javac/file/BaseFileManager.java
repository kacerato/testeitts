package org.openjdk.tools.javac.file;

import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.nio.file.Path;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.main.OptionHelper;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Options;

public abstract class BaseFileManager implements JavaFileManager {
    private static final Set<Option> javacFileManagerOptions = Option.getJavacFileManagerOptions();
    public boolean autoClose;
    protected Charset charset;
    protected String classLoaderClass;
    private String defaultEncodingName;
    private String encodingName;
    public Log log;
    protected String multiReleaseValue;
    protected Options options;
    private long lastUsedTime = System.currentTimeMillis();
    protected long deferredCloseTimeout = 0;
    protected final Map<JavaFileObject, ContentCacheEntry> contentCache = new HashMap();
    private final ByteBufferCache byteBufferCache = new ByteBufferCache();
    protected final Locations locations = createLocations();

    public static class AnonymousClass3 {
        static final int[] $SwitchMap$com$sun$tools$javac$main$Option;

        static {
            int[] iArr = new int[Option.values().length];
            $SwitchMap$com$sun$tools$javac$main$Option = iArr;
            try {
                iArr[Option.ENCODING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$main$Option[Option.MULTIRELEASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class ByteBufferCache {
        private ByteBuffer cached;

        private ByteBufferCache() {
        }

        public ByteBuffer get(int i10) {
            if (i10 < 20480) {
                i10 = 20480;
            }
            ByteBuffer byteBuffer = this.cached;
            ByteBuffer allocate = (byteBuffer == null || byteBuffer.capacity() < i10) ? ByteBuffer.allocate((i10 + i10) >> 1) : (ByteBuffer) this.cached.clear();
            this.cached = null;
            return allocate;
        }

        public void put(ByteBuffer byteBuffer) {
            this.cached = byteBuffer;
        }
    }

    public static class ContentCacheEntry {
        final SoftReference<CharBuffer> ref;
        final long timestamp;

        public ContentCacheEntry(JavaFileObject javaFileObject, CharBuffer charBuffer) {
            this.timestamp = javaFileObject.getLastModified();
            this.ref = new SoftReference<>(charBuffer);
        }

        public CharBuffer getValue() {
            return this.ref.get();
        }

        public boolean isValid(JavaFileObject javaFileObject) {
            return this.timestamp == javaFileObject.getLastModified();
        }
    }

    public BaseFileManager(Charset charset) {
        this.charset = charset;
    }

    private String getDefaultEncodingName() {
        if (this.defaultEncodingName == null) {
            this.defaultEncodingName = Charset.defaultCharset().name();
        }
        return this.defaultEncodingName;
    }

    public static JavaFileObject.Kind getKind(Path path) {
        return getKind(path.getFileName().toString());
    }

    public static <T> T nullCheck(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public void cache(JavaFileObject javaFileObject, CharBuffer charBuffer) {
        this.contentCache.put(javaFileObject, new ContentCacheEntry(javaFileObject, charBuffer));
    }

    public Locations createLocations() {
        return new Locations();
    }

    public CharBuffer decode(ByteBuffer byteBuffer, boolean z10) {
        String encodingName = getEncodingName();
        try {
            CharsetDecoder decoder = getDecoder(encodingName, z10);
            CharBuffer allocate = CharBuffer.allocate(((int) (byteBuffer.remaining() * ((decoder.averageCharsPerByte() * 0.8f) + (decoder.maxCharsPerByte() * 0.2f)))) + 10);
            while (true) {
                CoderResult decode = decoder.decode(byteBuffer, allocate, true);
                allocate.flip();
                if (decode.isUnderflow()) {
                    if (allocate.limit() != allocate.capacity()) {
                        return allocate;
                    }
                    CharBuffer put = CharBuffer.allocate(allocate.capacity() + 1).put(allocate);
                    put.flip();
                    return put;
                }
                if (decode.isOverflow()) {
                    allocate = CharBuffer.allocate(allocate.capacity() + 10 + ((int) (byteBuffer.remaining() * decoder.maxCharsPerByte()))).put(allocate);
                } else {
                    if (!decode.isMalformed() && !decode.isUnmappable()) {
                        throw new AssertionError(decode);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    int length = decode.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        sb2.append(String.format("%02X", Byte.valueOf(byteBuffer.get())));
                    }
                    Charset charset = this.charset;
                    this.log.error(allocate.limit(), CompilerProperties.Errors.IllegalCharForEncoding(sb2.toString(), charset == null ? encodingName : charset.name()));
                    allocate.position(allocate.limit());
                    allocate.limit(allocate.capacity());
                    allocate.put('\ufffd');
                }
            }
        } catch (IllegalCharsetNameException | UnsupportedCharsetException unused) {
            this.log.error("unsupported.encoding", encodingName);
            return (CharBuffer) CharBuffer.allocate(1).flip();
        }
    }

    public void deferredClose() {
        Thread thread = new Thread(getClass().getName() + " DeferredClose") {
            @Override
            public void run() {
                try {
                    synchronized (BaseFileManager.this) {
                        try {
                            long currentTimeMillis = System.currentTimeMillis();
                            while (true) {
                                long j10 = BaseFileManager.this.lastUsedTime;
                                BaseFileManager baseFileManager = BaseFileManager.this;
                                if (currentTimeMillis < j10 + baseFileManager.deferredCloseTimeout) {
                                    baseFileManager.wait((baseFileManager.lastUsedTime + BaseFileManager.this.deferredCloseTimeout) - currentTimeMillis);
                                    currentTimeMillis = System.currentTimeMillis();
                                } else {
                                    baseFileManager.deferredCloseTimeout = 0L;
                                    baseFileManager.close();
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (IOException | InterruptedException unused) {
                }
            }
        };
        thread.setDaemon(true);
        thread.start();
    }

    public void flushCache(JavaFileObject javaFileObject) {
        this.contentCache.remove(javaFileObject);
    }

    public CharBuffer getCachedContent(JavaFileObject javaFileObject) {
        ContentCacheEntry contentCacheEntry = this.contentCache.get(javaFileObject);
        if (contentCacheEntry == null) {
            return null;
        }
        if (contentCacheEntry.isValid(javaFileObject)) {
            return contentCacheEntry.getValue();
        }
        this.contentCache.remove(javaFileObject);
        return null;
    }

    public ClassLoader getClassLoader(URL[] urlArr) {
        ClassLoader classLoader = getClass().getClassLoader();
        String str = this.classLoaderClass;
        if (str != null) {
            try {
                return (ClassLoader) Class.forName(str).asSubclass(ClassLoader.class).getConstructor(URL[].class, ClassLoader.class).newInstance(urlArr, classLoader);
            } catch (ReflectiveOperationException unused) {
            }
        }
        return new URLClassLoader(urlArr, classLoader);
    }

    public CharsetDecoder getDecoder(String str, boolean z10) {
        Charset charset = this.charset;
        if (charset == null) {
            charset = Charset.forName(str);
        }
        CharsetDecoder newDecoder = charset.newDecoder();
        CodingErrorAction codingErrorAction = z10 ? CodingErrorAction.REPLACE : CodingErrorAction.REPORT;
        return newDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    public String getEncodingName() {
        String str = this.encodingName;
        return str != null ? str : getDefaultEncodingName();
    }

    @Override
    public boolean handleOption(String str, Iterator<String> it) {
        OptionHelper.GrumpyHelper grumpyHelper = new OptionHelper.GrumpyHelper(this.log) {
            @Override
            public String get(Option option) {
                return BaseFileManager.this.options.get(option);
            }

            @Override
            public boolean handleFileManagerOption(Option option, String str2) {
                return BaseFileManager.this.handleOption(option, str2);
            }

            @Override
            public void put(String str2, String str3) {
                BaseFileManager.this.options.put(str2, str3);
            }

            @Override
            public void remove(String str2) {
                BaseFileManager.this.options.remove(str2);
            }
        };
        Option lookup = Option.lookup(str, javacFileManagerOptions);
        if (lookup == null) {
            return false;
        }
        try {
            lookup.handleOption(grumpyHelper, str, it);
            return true;
        } catch (Option.InvalidValueException e10) {
            throw new IllegalArgumentException(e10.getMessage(), e10);
        }
    }

    public boolean handleOptions(Map<Option, String> map) {
        boolean z10 = true;
        for (Map.Entry<Option, String> entry : map.entrySet()) {
            try {
                z10 &= handleOption(entry.getKey(), entry.getValue());
            } catch (IllegalArgumentException e10) {
                this.log.error(CompilerProperties.Errors.IllegalArgumentForOption(entry.getKey().getPrimaryName(), e10.getMessage()));
                z10 = false;
            }
        }
        return z10;
    }

    public boolean isDefaultBootClassPath() {
        return this.locations.isDefaultBootClassPath();
    }

    @Override
    public int isSupportedOption(String str) {
        Option lookup = Option.lookup(str, javacFileManagerOptions);
        if (lookup == null) {
            return -1;
        }
        return lookup.hasArg() ? 1 : 0;
    }

    public ByteBuffer makeByteBuffer(InputStream inputStream) throws IOException {
        int available = inputStream.available();
        if (available < 1024) {
            available = 1024;
        }
        ByteBuffer byteBuffer = this.byteBufferCache.get(available);
        int i10 = 0;
        while (inputStream.available() != 0) {
            if (i10 >= available) {
                available <<= 1;
                byteBuffer = ByteBuffer.allocate(available).put((ByteBuffer) byteBuffer.flip());
            }
            int read = inputStream.read(byteBuffer.array(), i10, available - i10);
            if (read < 0) {
                break;
            }
            i10 += read;
            byteBuffer.position(i10);
        }
        return (ByteBuffer) byteBuffer.flip();
    }

    public void recycleByteBuffer(ByteBuffer byteBuffer) {
        this.byteBufferCache.put(byteBuffer);
    }

    public void setContext(Context context) {
        this.log = Log.instance(context);
        Options instance = Options.instance(context);
        this.options = instance;
        this.classLoaderClass = instance.get("procloader");
        this.locations.update(this.log, this.options.isLintSet("path"), FSInfo.instance(context));
        if (this.options.get("fileManager.deferClose") != null) {
            try {
                this.deferredCloseTimeout = (int) (Float.parseFloat(r4) * 1000.0f);
            } catch (NumberFormatException unused) {
                this.deferredCloseTimeout = 60000L;
            }
        }
    }

    public synchronized void updateLastUsedTime() {
        if (this.deferredCloseTimeout > 0) {
            this.lastUsedTime = System.currentTimeMillis();
        }
    }

    public static JavaFileObject.Kind getKind(String str) {
        JavaFileObject.Kind kind = JavaFileObject.Kind.CLASS;
        if (str.endsWith(kind.extension)) {
            return kind;
        }
        JavaFileObject.Kind kind2 = JavaFileObject.Kind.SOURCE;
        if (str.endsWith(kind2.extension)) {
            return kind2;
        }
        JavaFileObject.Kind kind3 = JavaFileObject.Kind.HTML;
        return str.endsWith(kind3.extension) ? kind3 : JavaFileObject.Kind.OTHER;
    }

    public static <T> Collection<T> nullCheck(Collection<T> collection) {
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next());
        }
        return collection;
    }

    public boolean handleOption(Option option, String str) {
        int i10 = AnonymousClass3.$SwitchMap$com$sun$tools$javac$main$Option[option.ordinal()];
        if (i10 == 1) {
            this.encodingName = str;
            return true;
        }
        if (i10 != 2) {
            return this.locations.handleOption(option, str);
        }
        this.multiReleaseValue = str;
        this.locations.setMultiReleaseValue(str);
        return true;
    }
}
