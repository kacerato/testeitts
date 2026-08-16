.class public abstract Lcom/android/tools/r8/graph/a5;
.super Lcom/android/tools/r8/graph/Z4$a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Ac;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Ac;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/graph/Z4$a;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/a5;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/tools/r8/graph/a5;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/a5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
