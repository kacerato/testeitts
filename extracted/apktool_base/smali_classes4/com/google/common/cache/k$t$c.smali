.class public final enum Lcom/google/common/cache/k$t$c;
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

    invoke-static {}, Lw2/m;->g()Lw2/m;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Ljava/lang/Object;I)Lcom/google/common/cache/k$A;
    .locals 1
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

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance p4, Lcom/google/common/cache/k$F;

    iget-object p1, p1, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4, p1, p3, p2}, Lcom/google/common/cache/k$F;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/k$J;

    iget-object p1, p1, Lcom/google/common/cache/k$r;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/google/common/cache/k$J;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;I)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method
