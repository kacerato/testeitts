.class public final Lcom/android/tools/r8/internal/HY;
.super Lcom/android/tools/r8/internal/sV;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sV;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wS;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/GY;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/GY;-><init>(Lcom/android/tools/r8/internal/HY;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/oS;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/oS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/vS;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/internal/vS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, v1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/wS;->a(Lcom/android/tools/r8/internal/wS;Lcom/android/tools/r8/internal/tS;)V

    move-object v1, p1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
