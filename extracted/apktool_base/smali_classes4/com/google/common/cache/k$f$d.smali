.class public final enum Lcom/google/common/cache/k$f$d;
.super Lcom/google/common/cache/k$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/k$f;-><init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
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
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/k$f;->c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/k$f;->b(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/k$f;->d(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    return-object p1
.end method

.method public g(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 0
    .param p4    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/cache/k$v;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/cache/k$v;-><init>(Ljava/lang/Object;ILcom/google/common/cache/p;)V

    return-object p1
.end method
