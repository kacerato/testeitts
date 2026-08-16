.class public final Lcom/android/tools/r8/internal/BE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# instance fields
.field public a:Lcom/android/tools/r8/internal/zE;

.field public final synthetic b:Lcom/android/tools/r8/internal/CE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/CE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/BE;->b:Lcom/android/tools/r8/internal/CE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    iput-object p1, p0, Lcom/android/tools/r8/internal/BE;->a:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    const/16 v0, 0x141

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BE;->b:Lcom/android/tools/r8/internal/CE;

    iget v0, v0, Lcom/android/tools/r8/internal/CE;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BE;->b:Lcom/android/tools/r8/internal/CE;

    iget v0, v0, Lcom/android/tools/r8/internal/CE;->e:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BE;->a:Lcom/android/tools/r8/internal/zE;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/BE;->a:Lcom/android/tools/r8/internal/zE;

    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->d:Lcom/android/tools/r8/internal/zE;

    iput-object p1, p0, Lcom/android/tools/r8/internal/BE;->a:Lcom/android/tools/r8/internal/zE;

    const/4 p1, 0x1

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
