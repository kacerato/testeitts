.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
.super Lcom/itsmagic/engine/Engines/Native/Base/a;
.source "SourceFile"

# interfaces
.implements Lxc/a;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    }
.end annotation


# static fields
.field private static final bufferCleaner:Lwc/b;


# instance fields
.field private capacity:I

.field private pointer:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private position:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field run:LJAVARuntime/NativeFloatBuffer;

.field private vboEnabled:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$a;-><init>()V

    invoke-direct {v0, v1}, Lwc/a;-><init>(Lwc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bufferCleaner:Lwc/b;

    const-string v0, "native-float-buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    return-void
.end method

.method public constructor <init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "precision"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    const-wide/16 v1, -0x1

    .line 16
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->vboEnabled:Z

    .line 19
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-lez p1, :cond_1

    .line 20
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    .line 21
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 22
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callTryCreate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    int-to-long p1, p1

    .line 23
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callAllocBuffer(JJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(F)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    .line 26
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bufferCleaner:Lwc/b;

    new-instance p2, Lwc/c;

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p2, p0, v0, v1}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p1, p2}, Lwc/b;->a(Lwc/c;)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string p2, "Can\'t allocate buffer"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capacity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private constructor <init>(JIIIZ)V
    .locals 3
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
            "precisionNativeType",
            "vboEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->vboEnabled:Z

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 7
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    .line 8
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    .line 9
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    .line 10
    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precisionFromNativeType(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object p3

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 11
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->vboEnabled:Z

    .line 12
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bufferCleaner:Lwc/b;

    new-instance p4, Lwc/c;

    invoke-direct {p4, p0, p1, p2}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p3, p4}, Lwc/b;->a(Lwc/c;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    return-void
.end method

.method public constructor <init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "precision"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    const-wide/16 v1, -0x1

    .line 32
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    .line 33
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->vboEnabled:Z

    .line 35
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-eqz p1, :cond_2

    .line 36
    array-length v1, p1

    if-lez v1, :cond_1

    .line 37
    array-length v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    .line 38
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 39
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callTryCreate(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    .line 40
    iget p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    int-to-long v3, p2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callAllocBuffer(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    .line 41
    sget-object p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bufferCleaner:Lwc/b;

    new-instance v1, Lwc/c;

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {v1, p0, v2, v3}, Lwc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V

    invoke-virtual {p2, v1}, Lwc/b;->a(Lwc/c;)V

    .line 42
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put([F)V

    .line 44
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return-void

    .line 45
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string p2, "Can\'t allocate buffer"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Array is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid array"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->deleteBuffer(J)V

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalAllocBuffer(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeAllocBuffer(JJ)J

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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->deleteBuffer(J)V

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method private callFillFloats(JIFI)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeFillFloats(JIFI)V

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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalGetAllocationPointer(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetAllocationPointer(J)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private callGetFloat(JI)F
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

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalGetFloat(JI)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetFloat(JI)F

    move-result p1

    :goto_0
    return p1
.end method

.method private callGetFloats(JI[FII)V
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

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetFloats(JI[FII)F

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    return-void
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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeLostOGLContext(J)F

    return-void
.end method

.method private callScaleVertices(JJFFF)V
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
            "sourcePointer",
            "destinationPointer",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalScaleVertices(JJFFF)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeScaleVertices(JJFFF)V

    :goto_0
    return-void
.end method

.method private callSetFloat(JIF)V
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalSetFloat(JIF)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloat(JIF)V

    :goto_0
    return-void
.end method

.method private callSetFloats(JI[FII)V
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

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloatsMemCp(JI[FII)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloats(JI[FII)V

    :goto_0
    return-void
.end method

.method private callSetFloatsBuffer(JIJII)V
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

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloatsBuffer(JIJII)V

    return-void
.end method

.method private callSetVector2(JIFF)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalSetVector2(JIFF)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector2(JIFF)V

    :goto_0
    return-void
.end method

.method private callSetVector3(JIFFF)V
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

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalSetVector3(JIFFF)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector3(JIFFF)V

    :goto_0
    return-void
.end method

.method private callSetVector4(JIFFFF)V
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

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalSetVector4(JIFFFF)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector4(JIFFFF)V

    :goto_0
    return-void
.end method

.method private callTryCreate(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Native/Base/a;->USE_CRITICAL_NATIVE:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalTryCreate(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeTryCreate(I)J

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

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeCriticalDeleteBuffer(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeDeleteBuffer(J)V

    :goto_0
    return-void
.end method

.method public static getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

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

.method public static native nativeCriticalGetFloat(JI)F
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

.method public static native nativeCriticalScaleVertices(JJFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourcePointer",
            "destinationPointer",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native nativeCriticalSetFloat(JIF)V
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

.method public static native nativeCriticalSetVector2(JIFF)V
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

.method public static native nativeCriticalSetVector3(JIFFF)V
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

.method public static native nativeCriticalSetVector4(JIFFFF)V
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

.method public static native nativeCriticalTryCreate(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

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

.method private static native nativeFillFloatByteBuffer(JLjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "outBuffer"
        }
    .end annotation
.end method

.method public static native nativeFillFloats(JIFI)V
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

.method public static native nativeGetFloat(JI)F
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

.method public static native nativeGetFloats(JI[FII)F
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

.method public static native nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
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

.method private static native nativeMinMax(JIZ)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "count",
            "validateFinite"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
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

.method public static native nativeScaleVertices(JJFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourcePointer",
            "destinationPointer",
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation
.end method

.method public static native nativeSetFloat(JIF)V
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

.method public static native nativeSetFloats(JI[FII)V
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

.method public static native nativeSetFloatsBuffer(JIJII)V
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

.method public static native nativeSetFloatsMemCp(JI[FII)V
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

.method public static native nativeSetVector2(JIFF)V
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

.method public static native nativeSetVector3(JIFFF)V
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

.method public static native nativeSetVector4(JIFFFF)V
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

.method public static native nativeTryCreate(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method private static precisionFromNativeType(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeType"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->values()[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object p0
.end method

.method public static readFile(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
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

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeFloatBuffer from file: "

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
.method public bytesPerItem()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public canAsyncCleaner()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->clone()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-object v0
.end method

.method public concatAndDestroyItselfImmediate(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setGarbage()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bufferCleaner:Lwc/b;

    invoke-virtual {v0, p0}, Lwc/b;->b(Lcom/itsmagic/engine/Engines/Native/Base/a;)V

    return-void
.end method

.method public equalsNative(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Z
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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callEquals(JJ)Z

    move-result p1

    return p1
.end method

.method public fill(F)V
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
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(IFI)V

    return-void
.end method

.method public fill(IFI)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    add-int/2addr v0, p1

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 4
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callFillFloats(JIFI)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public fillArray([F)V
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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)F
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callGetFloat(JI)F

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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

    .line 18
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x2

    .line 19
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector3 can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") >= ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public get(I[F)V
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

    .line 9
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

    return-void
.end method

.method public get(I[FII)V
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

    .line 10
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 12
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 13
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callGetFloats(JI[FII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public get([F)V
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

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

    return-void
.end method

.method public get([FI)V
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

    .line 8
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I[FII)V

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    float-to-int p1, p1

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    float-to-double v0, p1

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    float-to-int p1, p1

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public getCapacity()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    return v0
.end method

.method public getCriticalDirectCppPointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    return-wide v0
.end method

.method public getMinMax()[F
    .locals 2

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getMinMax(IZ)[F

    move-result-object v0

    return-object v0
.end method

.method public getMinMax(IZ)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "validateFinite"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    if-lez p1, :cond_2

    .line 4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-gt p1, v0, :cond_1

    .line 5
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-static {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeMinMax(JIZ)[F

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    array-length p2, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid native min/max result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count can\'t be > capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinMax(Z)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validateFinite"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getMinMax(IZ)[F

    move-result-object p1

    return-object p1
.end method

.method public getNativeAllocationPointer()J
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callGetAllocationPointer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeAllocationSizeInBytes()I
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    mul-int/2addr v0, v2

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    mul-int/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    return v0
.end method

.method public getPointerCritical()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return v0
.end method

.method public getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callLostOGLContext(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public nativeUsedBytes()J
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->bytesPerItem()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x28

    add-long/2addr v0, v2

    return-wide v0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return-void
.end method

.method public put(F)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 7
    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetFloat(JIF)V

    .line 8
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I
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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") vs ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public put(FF)V
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

    .line 38
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 v0, v4, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    .line 40
    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetVector2(JIFF)V

    .line 41
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position + 1 cant be >= capacity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") vs ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public put(FFF)V
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

    .line 29
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 v0, v4, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    .line 31
    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetVector3(JIFFF)V

    .line 32
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I
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

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") vs ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

    .line 36
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FF)V

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

    .line 27
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FFF)V

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
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
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return-void
.end method

.method public put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
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
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    .line 4
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return-void
.end method

.method public put(Lcom/jme3/math/Vector2f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 37
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FF)V

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

    .line 28
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(FFF)V

    return-void
.end method

.method public put([F)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 14
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[FII)V

    .line 15
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I
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

    .line 19
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 21
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 22
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    aget-short v2, p1, v0

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    .line 23
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public putFill(FI)V
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->fill(IFI)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

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

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeFloatBuffer to file: "

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

.method public scaleVertices(FFF)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY",
            "scaleZ"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->scaleVertices(FFFLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public scaleVertices(FFFLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleX",
            "scaleY",
            "scaleZ",
            "output"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    if-nez p4, :cond_0

    .line 3
    new-instance p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->precision:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {p4, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    .line 5
    iget v0, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ne v0, v1, :cond_1

    .line 6
    :goto_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    iget-wide v3, p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callScaleVertices(JJFFF)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-object p4

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output buffer capacity must match input buffer capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(IF)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetFloat(JIF)V
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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public set(IFF)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    .line 23
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 24
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetVector2(JIFF)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public set(IFFF)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x2

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 12
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetVector3(JIFFF)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public set(IFFFF)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x3

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 18
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetVector4(JIFFFF)V
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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFF)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 6
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
    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFFF)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
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
    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    return-void
.end method

.method public set(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 30
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 31
    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 32
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    iget-wide v6, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetFloatsBuffer(JIJII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

    .line 9
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IFFF)V

    return-void
.end method

.method public set(I[F)V
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

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[FII)V

    return-void
.end method

.method public set(I[FII)V
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
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->validateAndThrow()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    .line 41
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    .line 42
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 43
    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->callSetFloats(JI[FII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

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

.method public set([F)V
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

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[FII)V

    return-void
.end method

.method public set([FI)V
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
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[FII)V

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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

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

    double-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    return-void
.end method

.method public setDeleted()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->setDeleted()V

    return-void
.end method

.method public setNormalizeOGL(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position:I

    return-void
.end method

.method public setRuntime(LJAVARuntime/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->run:LJAVARuntime/NativeFloatBuffer;

    return-void
.end method

.method public toArray()[F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get([F)V

    return-object v0
.end method

.method public toFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Luc/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->pointer:J

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeFillFloatByteBuffer(JLjava/nio/ByteBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toJAVARuntime()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->run:LJAVARuntime/NativeFloatBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeFloatBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeFloatBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->run:LJAVARuntime/NativeFloatBuffer;

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
