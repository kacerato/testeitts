.class public final enum Lcom/google/common/cache/k$t$a;
.super Lcom/google/common/cache/k$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/k$t;-><init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V

    return-void
.end method


# virtual methods
.method public b()Lw2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lw2/m;->c()Lw2/m;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    new-instance p1, Lcom/google/common/cache/k$x;

    invoke-direct {p1, p3}, Lcom/google/common/cache/k$x;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/cache/k$I;

    invoke-direct {p1, p3, p4}, Lcom/google/common/cache/k$I;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object p1
.end method
