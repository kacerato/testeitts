.class public Lcom/google/common/collect/F2;
.super Lcom/google/common/collect/z1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
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
        "Lcom/google/common/collect/z1<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S2$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/collect/F2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/z1;-><init>()V

    .line 2
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/F2;->d:Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/F2;->e:Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F2;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/F2;->k(Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F2;->p()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F2;->r()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;)Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/i1<",
            "TR;TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z1;->g(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/F2;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/i1;->y()Lcom/google/common/collect/i1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public m()Lcom/google/common/collect/i1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/F2;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/F2;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/google/common/collect/r1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/F2;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/F2;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/z1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/common/collect/z1$b;
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/google/common/collect/z1$b;->a(Lcom/google/common/collect/z1;[I[I)Lcom/google/common/collect/z1$b;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/F2;->z()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/google/common/collect/i1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/F2;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/F2;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/F2;->f:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method
