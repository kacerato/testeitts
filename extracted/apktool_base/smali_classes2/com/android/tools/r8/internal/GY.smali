.class public final Lcom/android/tools/r8/internal/GY;
.super Lcom/android/tools/r8/internal/nV;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/HY;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/GY;->b:Lcom/android/tools/r8/internal/HY;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nV;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/GY;->b:Lcom/android/tools/r8/internal/HY;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/GY;->b:Lcom/android/tools/r8/internal/HY;

    iget-object v0, v0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/oS;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/oS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/GY;->b:Lcom/android/tools/r8/internal/HY;

    iget-object v0, v0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/NF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/NF0;-><init>(Lcom/android/tools/r8/internal/GY;)V

    new-instance v2, Lcom/android/tools/r8/internal/hV;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/hV;-><init>(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)V

    return-object v2
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nV;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/GY;->b:Lcom/android/tools/r8/internal/HY;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lcom/android/tools/r8/internal/HY;->d:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
