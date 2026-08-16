.class public final Lcom/google/common/collect/P1$w;
.super Lcom/google/common/collect/P1$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/P1$o<",
        "TK;TV;",
        "Lcom/google/common/collect/P1$v<",
        "TK;TV;>;",
        "Lcom/google/common/collect/P1$w<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/P1$w<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/P1$o;-><init>(Lcom/google/common/collect/P1;II)V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static synthetic X(Lcom/google/common/collect/P1$w;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public B(Lcom/google/common/collect/P1$j;Ljava/lang/Object;)Lcom/google/common/collect/P1$H;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;TV;)",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P1$I;

    iget-object v1, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$w;->Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$v;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/google/common/collect/P1$I;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/P1$j;)V

    return-object v0
.end method

.method public bridge synthetic R()Lcom/google/common/collect/P1$o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P1$w;->Z()Lcom/google/common/collect/P1$w;

    move-result-object v0

    return-object v0
.end method

.method public V(Lcom/google/common/collect/P1$j;Lcom/google/common/collect/P1$H;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;+",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$w;->Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$v;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/P1$v;->d(Lcom/google/common/collect/P1$v;)Lcom/google/common/collect/P1$H;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/P1$v;->e(Lcom/google/common/collect/P1$v;Lcom/google/common/collect/P1$H;)Lcom/google/common/collect/P1$H;

    invoke-interface {v0}, Lcom/google/common/collect/P1$H;->clear()V

    return-void
.end method

.method public Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;"
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/P1$v;

    return-object p1
.end method

.method public Z()Lcom/google/common/collect/P1$w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/P1$w<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$w;->Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$v;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public u(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$H;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;",
            "Lcom/google/common/collect/P1$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1$w;->Y(Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/P1$v;->a()Lcom/google/common/collect/P1$H;

    move-result-object p1

    return-object p1
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$o;->c(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1$w;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1$o;->j(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
