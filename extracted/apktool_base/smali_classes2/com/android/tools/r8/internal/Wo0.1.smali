.class public final Lcom/android/tools/r8/internal/Wo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/Spliterator;


# instance fields
.field public final a:Ljava/util/Spliterator;

.field public b:J

.field public c:Ljava/lang/Object;

.field public final synthetic d:Lcom/android/tools/r8/internal/Yo0;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;JLcom/android/tools/r8/internal/Yo0;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/internal/Wo0;->d:Lcom/android/tools/r8/internal/Yo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wo0;->a:Ljava/util/Spliterator;

    iput-wide p2, p0, Lcom/android/tools/r8/internal/Wo0;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wo0;->c:Ljava/lang/Object;

    return-void
.end method

.method public final characteristics()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->a:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wo0;->d:Lcom/android/tools/r8/internal/Yo0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wo0;->c:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/tools/r8/internal/Wo0;->b:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/tools/r8/internal/Wo0;->b:J

    invoke-interface {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Yo0;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->c:Ljava/lang/Object;

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wo0;->a:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-wide v1, p0, Lcom/android/tools/r8/internal/Wo0;->b:J

    new-instance v3, Lcom/android/tools/r8/internal/Wo0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Wo0;->d:Lcom/android/tools/r8/internal/Yo0;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/tools/r8/internal/Wo0;-><init>(Ljava/util/Spliterator;JLcom/android/tools/r8/internal/Yo0;)V

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v4

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/android/tools/r8/internal/Wo0;->b:J

    return-object v3
.end method
