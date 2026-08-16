.class public final Lm9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object v1, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    new-array v0, v0, [B

    iput-object v0, p0, Lm9/h;->e:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget v1, p0, Lm9/h;->g:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lm9/h;->g:I

    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lm9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->B()I

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lm9/h;->d()V

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lm9/h;->g:I

    :goto_0
    iget v1, p0, Lm9/h;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lm9/h;->f:I

    iput v0, p0, Lm9/h;->g:I

    return-void
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lm9/h;->e:[B

    iget v1, p0, Lm9/h;->g:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;
    .locals 2

    iget-object v0, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget v1, p0, Lm9/h;->g:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget v0, p0, Lm9/h;->g:I

    iget v1, p0, Lm9/h;->f:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lm9/h;->g:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lm9/h;->i()V

    return-void
.end method

.method public final h(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredCapacity"
        }
    .end annotation

    iget-object v0, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_1

    shr-int/lit8 v1, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-array p1, v0, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    new-array v0, v0, [B

    iget-object v1, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget v2, p0, Lm9/h;->f:I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lm9/h;->e:[B

    iget v2, p0, Lm9/h;->f:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object v0, p0, Lm9/h;->e:[B

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm9/h;->g:I

    iget v1, p0, Lm9/h;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lm9/h;->f:I

    iput v0, p0, Lm9/h;->g:I

    iget-object v1, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lm9/h;->g:I

    iget v1, p0, Lm9/h;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()V
    .locals 8

    iget-object v0, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lm9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v3, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput v1, p0, Lm9/h;->f:I

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->B()I

    move-result v5

    if-eqz v5, :cond_1

    iget v6, p0, Lm9/h;->f:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lm9/h;->h(I)V

    iget-object v6, p0, Lm9/h;->d:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget v7, p0, Lm9/h;->f:I

    aput-object v3, v6, v7

    iget-object v3, p0, Lm9/h;->e:[B

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    add-int/2addr v7, v2

    iput v7, p0, Lm9/h;->f:I

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    iput v1, p0, Lm9/h;->g:I

    iget-object v3, p0, Lm9/h;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lm9/h;->d()V

    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void

    :cond_3
    iget-object v0, p0, Lm9/h;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p0, Lm9/h;->f:I

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "change"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->q(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iget-object v0, p0, Lm9/h;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p2, p1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lm9/h;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lm9/h;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lm9/h;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;I)V

    return-void
.end method
