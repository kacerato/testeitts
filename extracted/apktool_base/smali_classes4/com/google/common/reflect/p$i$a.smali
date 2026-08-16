.class public Lcom/google/common/reflect/p$i$a;
.super Lcom/google/common/reflect/p$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/p$i<",
        "Lcom/google/common/reflect/p<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/p$i;-><init>(Lcom/google/common/reflect/p$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Lcom/google/common/reflect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i$a;->i(Lcom/google/common/reflect/p;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    check-cast p1, Lcom/google/common/reflect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i$a;->j(Lcom/google/common/reflect/p;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    check-cast p1, Lcom/google/common/reflect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$i$a;->k(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/reflect/p;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/reflect/p<",
            "*>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->s()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/google/common/reflect/p;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->u()Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1
.end method
