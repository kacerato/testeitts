.class public final Lcom/android/tools/r8/internal/Xo0;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "SourceFile"


# instance fields
.field public a:J

.field public final synthetic b:Ljava/util/Iterator;

.field public final synthetic c:Lcom/android/tools/r8/internal/Yo0;


# direct methods
.method public constructor <init>(JILjava/util/Iterator;Lcom/android/tools/r8/internal/Yo0;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/internal/Xo0;->b:Ljava/util/Iterator;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Xo0;->c:Lcom/android/tools/r8/internal/Yo0;

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/tools/r8/internal/Xo0;->a:J

    return-void
.end method


# virtual methods
.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xo0;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xo0;->c:Lcom/android/tools/r8/internal/Yo0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xo0;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/tools/r8/internal/Xo0;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/tools/r8/internal/Xo0;->a:J

    invoke-interface {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Yo0;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
