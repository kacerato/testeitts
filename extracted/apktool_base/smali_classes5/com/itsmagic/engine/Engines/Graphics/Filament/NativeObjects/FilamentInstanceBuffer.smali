.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:LM9/c;


# instance fields
.field public b:Z

.field private final instanceBuffer:Lcom/google/android/filament/InstanceBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final instanceCount:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->c:LM9/c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceCount"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 2
    invoke-static {}, LQb/a;->d()V

    .line 3
    invoke-static {}, LK8/a;->G()V

    if-lez p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/filament/InstanceBuffer$a;

    invoke-direct {v0, p1}, Lcom/google/android/filament/InstanceBuffer$a;-><init>(I)V

    .line 5
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/InstanceBuffer$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/InstanceBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceBuffer:Lcom/google/android/filament/InstanceBuffer;

    .line 6
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceCount:I

    .line 7
    invoke-virtual {v0}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide v0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->c:LM9/c;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "instanceCount must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrices",
            "instanceCount"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 10
    invoke-static {}, LQb/a;->d()V

    .line 11
    invoke-static {}, LK8/a;->G()V

    .line 12
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->i(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    .line 13
    new-instance v0, Lcom/google/android/filament/InstanceBuffer$a;

    invoke-direct {v0, p2}, Lcom/google/android/filament/InstanceBuffer$a;-><init>(I)V

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result p1

    .line 16
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/filament/InstanceBuffer$a;->b(JII)Lcom/google/android/filament/InstanceBuffer$a;

    move-result-object p1

    .line 17
    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/InstanceBuffer$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/InstanceBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceBuffer:Lcom/google/android/filament/InstanceBuffer;

    .line 18
    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceCount:I

    .line 19
    invoke-virtual {p1}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->c:LM9/c;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrices",
            "count"
        }
    .end annotation

    if-eqz p0, :cond_3

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    mul-int/lit8 p1, p1, 0x10

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Instance matrix buffer is too small"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NativeFloatBuffer for instance matrices must use FLOAT32 precision"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "count must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "matrices can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public destroyChannel()LM9/a;
    .locals 1

    sget-object v0, LM9/a;->GPU:LM9/a;

    return-object v0
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "InstanceBuffer still used by a renderable"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public destroyPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public e()Lcom/google/android/filament/InstanceBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceBuffer:Lcom/google/android/filament/InstanceBuffer;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceCount:I

    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrices",
            "count",
            "offset"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->b:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->i(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    if-ltz p3, :cond_0

    add-int v0, p3, p2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceCount:I

    if-gt v0, v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentInstanceBuffer;->instanceBuffer:Lcom/google/android/filament/InstanceBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getNativeAllocationSizeInBytes()I

    move-result v5

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/InstanceBuffer;->i(JIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Instance transform upload exceeds buffer capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
