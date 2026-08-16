.class public final Lm9/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x8

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entity",
            "visible"
        }
    .end annotation

    iget v0, p0, Lm9/j;->e:I

    iget v1, p0, Lm9/j;->d:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lm9/j;->e(I)V

    :cond_0
    iget-object v0, p0, Lm9/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v1, p0, Lm9/j;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget p1, p0, Lm9/j;->e:I

    const/16 v0, 0x8

    mul-int/2addr p1, v0

    iget-object v1, p0, Lm9/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->fill(III)V

    iget p1, p0, Lm9/j;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm9/j;->e:I

    return-void
.end method

.method public b(LQb/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operators"
        }
    .end annotation

    iget-object v0, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lm9/j;->e:I

    iget-object v2, p0, Lm9/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget-object v3, p0, Lm9/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/16 v4, 0x8

    invoke-virtual {p1, v1, v2, v3, v4}, LQb/b;->a(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p1
.end method

.method public c(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredCapacity"
        }
    .end annotation

    iget-object v0, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lm9/j;->e(I)V

    iput v1, p0, Lm9/j;->e:I

    return v2
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v1, p0, Lm9/j;->e:I

    return-void
.end method

.method public final e(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredCapacity"
        }
    .end annotation

    iget v0, p0, Lm9/j;->d:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    shr-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lm9/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget-object v1, p0, Lm9/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    new-instance v2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v4, v0, 0x8

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iget v4, p0, Lm9/j;->e:I

    if-lez v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, p1, v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    iget v4, p0, Lm9/j;->e:I

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v5, v1, v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    :cond_2
    iput-object v2, p0, Lm9/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object v3, p0, Lm9/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput v0, p0, Lm9/j;->d:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    :cond_3
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lm9/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p0, Lm9/j;->e:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
