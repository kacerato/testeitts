.class public Lcom/google/common/collect/Q2$c$d;
.super Lcom/google/common/collect/Q1$Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q2$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$Q<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Q2$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q2$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q2$c$d;->c:Lcom/google/common/collect/Q2$c;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Q1$Q;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Q2$c$d;->c:Lcom/google/common/collect/Q2$c;

    invoke-static {p1}, Lw2/J;->m(Ljava/lang/Object;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q0(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q2$c;->k(Lw2/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q2$c$d;->c:Lcom/google/common/collect/Q2$c;

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q0(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q2$c;->k(Lw2/I;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q2$c$d;->c:Lcom/google/common/collect/Q2$c;

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Q1;->Q0(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q2$c;->k(Lw2/I;)Z

    move-result p1

    return p1
.end method
