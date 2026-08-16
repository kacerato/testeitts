.class public final Lcom/android/tools/r8/internal/RK;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/SK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/SK;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/RK;->d:Lcom/android/tools/r8/internal/SK;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RK;->d:Lcom/android/tools/r8/internal/SK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/SK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RK;->d:Lcom/android/tools/r8/internal/SK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/SK;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
