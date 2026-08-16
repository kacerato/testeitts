.class public Lcom/google/common/collect/Q1$v$b;
.super Lcom/google/common/collect/Q1$B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Q1$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$B<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Q1$v;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$v$b;->c:Lcom/google/common/collect/Q1$v;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Q1$B;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$b;->c:Lcom/google/common/collect/Q1$v;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Q1$n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$b;->c:Lcom/google/common/collect/Q1$v;

    iget-object v0, v0, Lcom/google/common/collect/Q1$n;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$b;->c:Lcom/google/common/collect/Q1$v;

    iget-object v1, v0, Lcom/google/common/collect/Q1$n;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Q1$n;->f:Lw2/I;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Q1$v;->l(Ljava/util/Map;Lw2/I;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$v$b;->c:Lcom/google/common/collect/Q1$v;

    iget-object v1, v0, Lcom/google/common/collect/Q1$n;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Q1$n;->f:Lw2/I;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Q1$v;->m(Ljava/util/Map;Lw2/I;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Q1$B;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/M1;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/Q1$B;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/M1;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
