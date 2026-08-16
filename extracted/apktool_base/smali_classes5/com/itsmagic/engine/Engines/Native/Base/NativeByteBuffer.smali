.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
.super Lcom/itsmagic/engine/Engines/Native/Base/a;
.source "SourceFile"

# interfaces
.implements Lxc/a;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final bufferCleaner:Lwc/b;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private capacity:I

.field private isNative:Z

.field private normalizeOGL:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pointer:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private position:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field run:LJAVARuntime/NativeByteBuffer;

.field private vboEnabled:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer$a;-><init>()V

    invoke-direct {v0, v1}, Lwc/a;-><init>(Lwc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->bufferCleaner:Lwc/b;

    const-string v0, "native-byte-buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->vboEnabled:Z

    if-lez p1, :cond_1

    .line 14
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    .line 15
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callTryCreate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    int-to-long v3, p1

    .line 16
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callAllocBuffer(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    .line 18
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->bufferCleaner:Lwc/b;

    new-instance v0, Lwc/c;

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {v0, p0, v1, v2}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p1, v0}, Lwc/b;->a(Lwc/c;)V

    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(JIIZZ)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity",
            "position",
            "normalizeOGL",
            "vboEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    .line 3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    .line 4
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    .line 5
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->normalizeOGL:Z

    .line 6
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->vboEnabled:Z

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    .line 8
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->bufferCleaner:Lwc/b;

    new-instance p4, Lwc/c;

    invoke-direct {p4, p0, p1, p2}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p3, p4}, Lwc/b;->a(Lwc/c;)V

    .line 9
    invoke-direct {p0, p1, p2, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetNormalizeEnabled(JI)V

    .line 10
    invoke-direct {p0, p1, p2, p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetVBOEnabled(JI)V

    return-void
.end method

.method public static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->deleteBuffer(J)V

    return-void
.end method

.method private callAllocBuffer(JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalAllocBuffer(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeAllocBuffer(JJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private callDeleteBuffer(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->deleteBuffer(J)V

    :cond_0
    return-void
.end method

.method private callEquals(JJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "otherPointer"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method private callGetAllocationPointer(J)J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalGetAllocationPointer(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeGetAllocationPointer(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private callGetInt(JI)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalGetByte(JI)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeGetByte(JI)B

    move-result p1

    :goto_0
    return p1

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method private callLostOGLContext(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeLostOGLContext(J)F

    return-void
.end method

.method private callOGLAttributePointer(JIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "attributeLocation",
            "size",
            "stride"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setCanAsyncCleaner(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeOGLAttributePointer(JIII)V

    const/4 p1, 0x1

    return p1
.end method

.method private callSetByte(JIB)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index",
            "value"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalSetByte(JIB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetByte(JIB)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3, p4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private callSetNormalizeEnabled(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalSetNormalizeEnabled(JI)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetNormalizeEnabled(JI)V

    :goto_0
    return-void
.end method

.method private callSetVBOEnabled(JI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalSetVBOEnabled(JI)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetVBOEnabled(JI)V

    :goto_0
    return-void
.end method

.method private callTryCreate()J
    .locals 2

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalTryCreate()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeTryCreate()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static deleteBuffer(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeCriticalDeleteBuffer(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeDeleteBuffer(J)V

    :goto_0
    return-void
.end method

.method public static getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "failCase"
        }
    .end annotation

    if-nez p0, :cond_0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getCriticalDirectCppPointer()J

    move-result-wide p0

    return-wide p0
.end method

.method public static native nativeAllocBuffer(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity"
        }
    .end annotation
.end method

.method public static native nativeCriticalAllocBuffer(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalGetAllocationPointer(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalGetByte(JI)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetByte(JIB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index",
            "value"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetNormalizeEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetVBOEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalTryCreate()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeEquals(JJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "otherPointer"
        }
    .end annotation
.end method

.method public static native nativeGetAllocationPointer(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetByte(JI)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index"
        }
    .end annotation
.end method

.method public static native nativeLostOGLContext(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeOGLAttributePointer(JIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "attributeLocation",
            "size",
            "stride"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method private static native nativeReadRawFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method private native nativeSaveRawToFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method private native nativeSaveToFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public static native nativeSetByte(JIB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetNormalizeEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation
.end method

.method public static native nativeSetVBOEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static readFile(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeByteBuffer from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readRawFile(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeReadRawFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read raw NativeByteBuffer from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateAndThrow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer is garbage!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()[B
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callGetInt(JI)B

    move-result v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bytesPerItem()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    return v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->bufferCleaner:Lwc/b;

    invoke-virtual {v0, p0}, Lwc/b;->b(Lcom/itsmagic/engine/Engines/Native/Base/a;)V

    return-void
.end method

.method public equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callEquals(JJ)Z

    move-result p1

    return p1

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->isNative:Z

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result v3

    if-eq v2, v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callGetInt(JI)B

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAsByte(I)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getAsDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method public getAsFloat(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public getAsInt(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public getAsShort(I)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    return v0
.end method

.method public getCriticalDirectCppPointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    return-wide v0
.end method

.method public getNativeAllocationPointer()J
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callGetAllocationPointer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointerCritical()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    return v0
.end method

.method public isNormalizeOGL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->normalizeOGL:Z

    return v0
.end method

.method public isVboEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->vboEnabled:Z

    return v0
.end method

.method public lostOGLContext()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callLostOGLContext(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public position(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    return-void
.end method

.method public put(B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetByte(JIB)V

    .line 4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-gt v1, v0, :cond_0

    .line 21
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetByte(JIB)V

    .line 23
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position + remaining cant be > capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put([B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_1

    .line 10
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 11
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    iget v5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetByte(JIB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public saveRawToFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSaveRawToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save raw NativeByteBuffer to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeByteBuffer to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(IB)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetByte(JIB)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index cant be >= capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setAsByte(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    return-void
.end method

.method public setAsDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    double-to-int p2, p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    return-void
.end method

.method public setAsFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    float-to-int p2, p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    return-void
.end method

.method public setAsInt(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    return-void
.end method

.method public setAsShort(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    return-void
.end method

.method public setAttribute(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "size",
            "stride"
        }
    .end annotation

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callOGLAttributePointer(JIII)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setDeleted()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setDeleted()V

    return-void
.end method

.method public setNormalizeOGL(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalizeOGL"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->normalizeOGL:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetNormalizeEnabled(JI)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position:I

    return-void
.end method

.method public setRuntime(LJAVARuntime/NativeByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->run:LJAVARuntime/NativeByteBuffer;

    return-void
.end method

.method public setVboEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vboEnabled"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->vboEnabled:Z

    if-eq v0, p1, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->callSetVBOEnabled(JI)V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->vboEnabled:Z

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/NativeByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->run:LJAVARuntime/NativeByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeByteBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeByteBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->run:LJAVARuntime/NativeByteBuffer;

    :cond_0
    return-object v0
.end method
