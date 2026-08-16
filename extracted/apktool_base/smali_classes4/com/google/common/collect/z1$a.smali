.class public final Lcom/google/common/collect/z1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LI2/f;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/M1;->q()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/z1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z1<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/z1$a;->b()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/common/collect/z1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z1<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/z1$a;->b:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/z1$a;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/x2;->H(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/x2;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/F2;

    iget-object v1, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/google/common/collect/D1;->z(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/S2$a;

    invoke-direct {v0, v1}, Lcom/google/common/collect/F2;-><init>(Lcom/google/common/collect/S2$a;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/z1;->s()Lcom/google/common/collect/z1;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/common/collect/z1$a;)Lcom/google/common/collect/z1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public d(Ljava/util/Comparator;)Lcom/google/common/collect/z1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const-string v0, "columnComparator"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/z1$a;->c:Ljava/util/Comparator;

    return-object p0
.end method

.method public e(Ljava/util/Comparator;)Lcom/google/common/collect/z1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TR;>;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const-string v0, "rowComparator"

    invoke-static {p1, v0}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/z1$a;->b:Ljava/util/Comparator;

    return-object p0
.end method

.method public f(Lcom/google/common/collect/S2$a;)Lcom/google/common/collect/z1$a;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2$a<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/T2$c;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "row"

    invoke-static {v0, v1}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "column"

    invoke-static {v0, v1}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1}, Lw2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/collect/z1$a;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z1$a;

    :goto_0
    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z1$a;->a:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/google/common/collect/z1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h(Lcom/google/common/collect/S2;)Lcom/google/common/collect/z1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/z1$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/S2$a;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/z1$a;->f(Lcom/google/common/collect/S2$a;)Lcom/google/common/collect/z1$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method
