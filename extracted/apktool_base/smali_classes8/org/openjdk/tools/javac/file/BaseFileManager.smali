.class public abstract Lorg/openjdk/tools/javac/file/BaseFileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;,
        Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;
    }
.end annotation


# static fields
.field private static final javacFileManagerOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/main/Option;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoClose:Z

.field private final byteBufferCache:Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;

.field protected charset:Ljava/nio/charset/Charset;

.field protected classLoaderClass:Ljava/lang/String;

.field protected final contentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private defaultEncodingName:Ljava/lang/String;

.field protected deferredCloseTimeout:J

.field private encodingName:Ljava/lang/String;

.field private lastUsedTime:J

.field protected final locations:Lorg/openjdk/tools/javac/file/Locations;

.field public log:Lorg/openjdk/tools/javac/util/Log;

.field protected multiReleaseValue:Ljava/lang/String;

.field protected options:Lorg/openjdk/tools/javac/util/Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/main/Option;->getJavacFileManagerOptions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/file/BaseFileManager;->javacFileManagerOptions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->lastUsedTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    new-instance p1, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager$1;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->byteBufferCache:Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->createLocations()Lorg/openjdk/tools/javac/file/Locations;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/file/BaseFileManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->lastUsedTime:J

    return-wide v0
.end method

.method private getDefaultEncodingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method public static getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    iget-object v1, v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    iget-object v1, v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->HTML:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    iget-object v1, v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 5
    :cond_2
    sget-object p0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    return-object p0
.end method

.method public static getKind(Ljava/nio/file/Path;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getKind(Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object p0

    return-object p0
.end method

.method public static nullCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static nullCheck(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public cache(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;

    invoke-direct {v1, p1, p2}, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;-><init>(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createLocations()Lorg/openjdk/tools/javac/file/Locations;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/file/Locations;-><init>()V

    return-object v0
.end method

.method public decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;
    .locals 8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;

    move-result-object p2
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    add-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_0
    invoke-virtual {p2, p1, v2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result p2

    if-ne p1, p2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    if-nez v3, :cond_6

    move-object v3, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->IllegalCharForEncoding(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_0

    :catch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p2, "unsupported.encoding"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    return-object p1
.end method

.method public deferredClose()V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/file/BaseFileManager$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DeferredClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/file/BaseFileManager$1;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public flushCache(Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedContent(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/nio/CharBuffer;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->isValid(Lorg/openjdk/javax/tools/JavaFileObject;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/BaseFileManager$ContentCacheEntry;->getValue()Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader([Ljava/net/URL;)Ljava/lang/ClassLoader;
    .locals 4

    const-class v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->classLoaderClass:Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/net/URL;

    filled-new-array {v3, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Ljava/net/URLClassLoader;

    invoke-direct {v0, p1, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    if-eqz p2, :cond_1

    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    goto :goto_0

    :cond_1
    sget-object p2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    return-object p1
.end method

.method public getEncodingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->encodingName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/BaseFileManager;->getDefaultEncodingName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/file/BaseFileManager$2;

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/file/BaseFileManager$2;-><init>(Lorg/openjdk/tools/javac/file/BaseFileManager;Lorg/openjdk/tools/javac/util/Log;)V

    .line 2
    sget-object v1, Lorg/openjdk/tools/javac/file/BaseFileManager;->javacFileManagerOptions:Ljava/util/Set;

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/main/Option;->lookup(Ljava/lang/String;Ljava/util/Set;)Lorg/openjdk/tools/javac/main/Option;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0, p1, p2}, Lorg/openjdk/tools/javac/main/Option;->handleOption(Lorg/openjdk/tools/javac/main/OptionHelper;Ljava/lang/String;Ljava/util/Iterator;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/main/Option$InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z
    .locals 3

    .line 5
    sget-object v0, Lorg/openjdk/tools/javac/file/BaseFileManager$3;->$SwitchMap$com$sun$tools$javac$main$Option:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->multiReleaseValue:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/file/Locations;->setMultiReleaseValue(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_1
    iput-object p2, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->encodingName:Ljava/lang/String;

    return v1
.end method

.method public handleOptions(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/main/Option;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/main/Option;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->handleOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/Option;->getPrimaryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->IllegalArgumentForOption(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isDefaultBootClassPath()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/file/Locations;->isDefaultBootClassPath()Z

    move-result v0

    return v0
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/file/BaseFileManager;->javacFileManagerOptions:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/main/Option;->lookup(Ljava/lang/String;Ljava/util/Set;)Lorg/openjdk/tools/javac/main/Option;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/Option;->hasArg()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->byteBufferCache:Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt v2, v0, :cond_1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    sub-int v4, v0, v2

    invoke-virtual {p1, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public recycleByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->byteBufferCache:Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/BaseFileManager$ByteBufferCache;->put(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setContext(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 3

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "procloader"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->classLoaderClass:Ljava/lang/String;

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isLintSet(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->locations:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v2, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/FSInfo;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lorg/openjdk/tools/javac/file/Locations;->update(Lorg/openjdk/tools/javac/util/Log;ZLorg/openjdk/tools/javac/file/FSInfo;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v0, "fileManager.deferClose"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized updateLastUsedTime()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->deferredCloseTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/openjdk/tools/javac/file/BaseFileManager;->lastUsedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
