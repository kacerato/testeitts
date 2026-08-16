.class public final LJAVARuntime/AtomicFloat;
.super Ljava/lang/Number;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Atomic"
    }
.end annotation


# instance fields
.field private final transient bits:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LJAVARuntime/AtomicFloat;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "initialValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialValue"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final compareAndSet(FF)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expect",
            "update"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/AtomicFloat;->floatValue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public final get()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final getAndSet(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public final set(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(FF)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expect",
            "update"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AtomicFloat;->bits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSet(II)Z

    move-result p1

    return p1
.end method
