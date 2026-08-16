.class public Lz2/m$b;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/google/common/collect/r1<",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lz2/m$b;->g(Ljava/lang/Class;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Class;)Lcom/google/common/collect/r1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->E()Lcom/google/common/reflect/p$k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/p$k;->I0()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/r1;->s(Ljava/util/Collection;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method
