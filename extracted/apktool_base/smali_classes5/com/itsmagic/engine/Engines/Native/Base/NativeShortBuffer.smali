.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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
.field private capacity:I

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

.field run:LJAVARuntime/NativeShortBuffer;

.field private vboEnabled:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer$a;-><init>()V

    invoke-direct {v0, v1}, Lwc/a;-><init>(Lwc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    const-string v0, "native-short-buffer"

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

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    .line 11
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->vboEnabled:Z

    if-lez p1, :cond_1

    .line 13
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    .line 14
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callTryCreate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    int-to-long v3, p1

    .line 15
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callAllocBuffer(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->fill(S)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    .line 18
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    new-instance v0, Lwc/c;

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

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
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    .line 3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    .line 4
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    .line 5
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->normalizeOGL:Z

    .line 6
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->vboEnabled:Z

    .line 7
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    new-instance p4, Lwc/c;

    invoke-direct {p4, p0, p1, p2}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p3, p4}, Lwc/b;->a(Lwc/c;)V

    return-void
.end method

.method public constructor <init>([S)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    const-wide/16 v1, -0x1

    .line 23
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    .line 24
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->vboEnabled:Z

    if-eqz p1, :cond_2

    .line 26
    array-length v1, p1

    if-lez v1, :cond_1

    .line 27
    array-length v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    .line 28
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callTryCreate()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    .line 29
    iget v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    int-to-long v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callAllocBuffer(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 30
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    new-instance v2, Lwc/c;

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {v2, p0, v3, v4}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {v1, v2}, Lwc/b;->a(Lwc/c;)V

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put([S)V

    .line 33
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void

    .line 34
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Array is empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->deleteBuffer(J)V

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalAllocBuffer(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeAllocBuffer(JJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private callDeleteBuffer(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->deleteBuffer(J)V

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method private callFillShorts(JISI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeFillShorts(JISI)V

    return-void
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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalGetAllocationPointer(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeGetAllocationPointer(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private callGetShort(JI)S
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

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalGetShort(JI)S

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeGetShort(JI)S

    move-result p1

    :goto_0
    return p1
.end method

.method private callGetShorts(JI[SII)V
    .locals 0
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeGetShorts(JI[SII)S

    return-void
.end method

.method private callGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)S

    return-void
.end method

.method private callOGLAttributePointer(JIII)Z
    .locals 0
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

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setCanAsyncCleaner(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private callSetShort(JIS)V
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

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalSetShort(JIS)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetShort(JIS)V

    :goto_0
    return-void
.end method

.method private callSetShorts(JI[SII)V
    .locals 1
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    if-nez p5, :cond_0

    array-length v0, p4

    if-ne p6, v0, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetShortsMemCp(JI[SII)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetShorts(JI[SII)V

    :goto_0
    return-void
.end method

.method private callSetShortsBuffer(JIJII)V
    .locals 0
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
            "baseIndex",
            "otherPointer",
            "start",
            "count"
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetShortsBuffer(JIJII)V

    return-void
.end method

.method private callSetVector2(JISS)V
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
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalSetVector2(JISS)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetVector2(JISS)V

    :goto_0
    return-void
.end method

.method private callSetVector3(JISSS)V
    .locals 1
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
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalSetVector3(JISSS)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetVector3(JISSS)V

    :goto_0
    return-void
.end method

.method private callSetVector4(JISSSS)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalSetVector4(JISSSS)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSetVector4(JISSSS)V

    :goto_0
    return-void
.end method

.method private callTryCreate()J
    .locals 2

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalTryCreate()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeTryCreate()J

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

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeCriticalDeleteBuffer(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeDeleteBuffer(J)V

    :goto_0
    return-void
.end method

.method public static getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;J)J
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->getCriticalDirectCppPointer()J

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

.method public static native nativeCriticalGetShort(JI)S
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

.method public static native nativeCriticalSetShort(JIS)V
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

.method public static native nativeCriticalSetVector2(JISS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetVector3(JISSS)V
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
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetVector4(JISSSS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
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

.method public static native nativeFillShorts(JISI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "value",
            "count"
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

.method public static native nativeGetShort(JI)S
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

.method public static native nativeGetShorts(JI[SII)S
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "vector3"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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

.method public static native nativeSetShort(JIS)V
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

.method public static native nativeSetShorts(JI[SII)V
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeSetShortsBuffer(JIJII)V
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
            "baseIndex",
            "otherPointer",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeSetShortsMemCp(JI[SII)V
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
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeSetVector2(JISS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "x",
            "y"
        }
    .end annotation
.end method

.method public static native nativeSetVector3(JISSS)V
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
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method public static native nativeSetVector4(JISSSS)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static readFile(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeShortBuffer from file: "

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

.method public static surfaceDestroyed()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    invoke-virtual {v0}, Lwc/b;->f()V

    return-void
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
.method public bytesPerItem()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public canAsyncCleaner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return-object v0
.end method

.method public concatAndDestroyItselfImmediate(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->bufferCleaner:Lwc/b;

    invoke-virtual {v0, p0}, Lwc/b;->b(Lcom/itsmagic/engine/Engines/Native/Base/a;)V

    return-void
.end method

.method public equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callEquals(JJ)Z

    move-result p1

    return p1
.end method

.method public fill(ISI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    add-int/2addr v0, p1

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 4
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callFillShorts(JISI)V
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

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public fill(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->fill(ISI)V

    return-void
.end method

.method public fillArray([S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get([S)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)S
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callGetShort(JI)S

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index cant be >= capacity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") vs ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x2

    .line 18
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector3 can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") >= ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public get(I[S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    .line 8
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I[SII)V

    return-void
.end method

.method public get(I[SII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 11
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 12
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callGetShorts(JI[SII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public get([S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I[SII)V

    return-void
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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    int-to-byte p1, p1

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get(I)S

    move-result p1

    return p1
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    return v0
.end method

.method public getCriticalDirectCppPointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    return-wide v0
.end method

.method public getNativeAllocationPointer()J
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callGetAllocationPointer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointerCritical()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lostOGLContext()V
    .locals 0

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void
.end method

.method public pull([S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pull([SII)V

    return-void
.end method

.method public pull([SI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pull([SII)V

    return-void
.end method

.method public pull([SII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p3, :cond_4

    if-nez p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 v0, p3, -0x1

    add-int v1, v4, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v1, v2, :cond_3

    if-ltz v4, :cond_2

    .line 5
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_1

    .line 6
    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callGetShorts(JI[SII)V

    .line 7
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public push([S)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put([S)V

    return-void
.end method

.method public push([SI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put([SII)V

    return-void
.end method

.method public push([SII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put([SII)V

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 38
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v0, v0

    int-to-short v0, v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SS)V

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "count"
        }
    .end annotation

    .line 3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    .line 4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void
.end method

.method public put(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 30
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-int v0, v0

    int-to-short v0, v0

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-int v1, v1

    int-to-short v1, v1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(SSS)V

    return-void
.end method

.method public put(S)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 7
    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetShort(JIS)V

    .line 8
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") vs ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public put(SS)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 v0, v4, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    .line 41
    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetVector2(JISS)V

    .line 42
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position + 1 cant be >= capacity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") vs ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public put(SSS)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 v0, v4, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    .line 33
    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetVector3(JISSS)V

    .line 34
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") vs ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public put([S)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 14
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

    .line 15
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public put([SII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "start",
            "count"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p3, :cond_4

    if-nez p3, :cond_0

    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_3

    if-ltz v0, :cond_2

    .line 21
    array-length v1, p1

    add-int v2, p2, p3

    if-lt v1, v2, :cond_1

    .line 22
    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

    .line 23
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be >= capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "count cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public putFill(SI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->fill(ISI)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void
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

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeShortBuffer to file: "

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

.method public set(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    .line 8
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSS)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector4"
        }
    .end annotation

    .line 7
    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    float-to-int v0, v0

    int-to-short v3, v0

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    float-to-int v0, v0

    int-to-short v4, v0

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    float-to-int v0, v0

    int-to-short v5, v0

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    float-to-int p2, p2

    int-to-short v6, p2

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSSS)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other"
        }
    .end annotation

    .line 28
    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 30
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 31
    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 32
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    iget-wide v6, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetShortsBuffer(JIJII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public set(ILcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    int-to-short p1, p1

    .line 9
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    float-to-int v0, v0

    int-to-short v0, v0

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    float-to-int v1, v1

    int-to-short v1, v1

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    float-to-int p2, p2

    int-to-short p2, p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(ISSS)V

    return-void
.end method

.method public set(IS)V
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

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetShort(JIS)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public set(ISS)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 24
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetVector2(JISS)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + 1 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public set(ISSS)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x2

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 12
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetVector3(JISSS)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public set(ISSSS)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x3

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 18
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetVector4(JISSSS)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") >= ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public set(I[S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    .line 39
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

    return-void
.end method

.method public set(I[SII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 41
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 42
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 43
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callSetShorts(JI[SII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public set([S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

    return-void
.end method

.method public set([SI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(I[SII)V

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

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

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

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

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

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

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

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->set(IS)V

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
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->callOGLAttributePointer(JIII)Z

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

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->pointer:J

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setDeleted()V

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position:I

    return-void
.end method

.method public setRuntime(LJAVARuntime/NativeShortBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->run:LJAVARuntime/NativeShortBuffer;

    return-void
.end method

.method public toArray()[S
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->capacity:I

    new-array v0, v0, [S

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->get([S)V

    return-object v0
.end method

.method public toJAVARuntime()LJAVARuntime/NativeShortBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->run:LJAVARuntime/NativeShortBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeShortBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeShortBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->run:LJAVARuntime/NativeShortBuffer;

    :cond_0
    return-object v0
.end method

.method public validate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
