.class public final Lcom/android/tools/r8/internal/uK;
.super Lcom/android/tools/r8/internal/Vx;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/uK;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vx;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/uK;->b:Ljava/util/List;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/tK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/tK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/uK;->b:Ljava/util/List;

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v1, v2

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
