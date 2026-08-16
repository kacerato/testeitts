.class public Lcom/google/common/collect/T2$e;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field public static final e:Lw2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/t<",
            "Lcom/google/common/collect/S2$a<",
            "***>;",
            "Lcom/google/common/collect/S2$a<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final d:Lcom/google/common/collect/S2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/T2$e$a;

    invoke-direct {v0}, Lcom/google/common/collect/T2$e$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/T2$e;->e:Lw2/t;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/S2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/S2;

    iput-object p1, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->i0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/collect/S2;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/S2;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Y(Lcom/google/common/collect/S2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "+TC;+TR;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-static {p1}, Lcom/google/common/collect/T2;->g(Lcom/google/common/collect/S2;)Lcom/google/common/collect/S2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/S2$a<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/T2$e;->e:Lw2/t;

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/S2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e0(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->e0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->B(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/S2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->size()I

    move-result v0

    return v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$e;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->d0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
