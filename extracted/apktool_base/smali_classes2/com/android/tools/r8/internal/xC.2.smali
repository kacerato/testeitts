.class public final Lcom/android/tools/r8/internal/xC;
.super Lcom/android/tools/r8/internal/Av0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Av0;

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/tools/r8/internal/Av0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/iC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Av0;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/xC;->b:Lcom/android/tools/r8/internal/Av0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/internal/xC;->c:Ljava/lang/Object;

    sget-object p1, Lcom/android/tools/r8/internal/FK;->e:Lcom/android/tools/r8/internal/FK;

    iput-object p1, p0, Lcom/android/tools/r8/internal/xC;->d:Lcom/android/tools/r8/internal/Av0;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/xC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/xC;->b:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/xC;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/XB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xC;->d:Lcom/android/tools/r8/internal/Av0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xC;->c:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xC;->d:Lcom/android/tools/r8/internal/Av0;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ZB;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ZB;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
