.class public final Lcom/google/common/collect/i1$d;
.super Lcom/google/common/collect/i1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i1$c<",
        "TK;",
        "Lcom/google/common/collect/r1<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/i1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-direct {p0}, Lcom/google/common/collect/i1$c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/i1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/i1$d;-><init>(Lcom/google/common/collect/i1;)V

    return-void
.end method


# virtual methods
.method public N()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/r1<",
            "TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/i1$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/i1$d$a;-><init>(Lcom/google/common/collect/i1$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public O(Ljava/lang/Object;)Lcom/google/common/collect/r1;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/r1<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i1$d;->O(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->hashCode()I

    move-result v0

    return v0
.end method

.method public p()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->u()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/i1$d;->g:Lcom/google/common/collect/i1;

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->v()Z

    move-result v0

    return v0
.end method
