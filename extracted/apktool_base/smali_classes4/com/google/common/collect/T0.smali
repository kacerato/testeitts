.class public Lcom/google/common/collect/T0;
.super Lcom/google/common/collect/Q2;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/T0$a;
    }
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
        "Lcom/google/common/collect/Q2<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    serializable = true
.end annotation


# static fields
.field public static final j:J


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/common/collect/T0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/collect/T0$a<",
            "TC;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Q2;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-void
.end method

.method public static p()Lcom/google/common/collect/T0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/T0<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T0;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcom/google/common/collect/T0$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/collect/T0$a;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/T0;-><init>(Ljava/util/Map;Lcom/google/common/collect/T0$a;)V

    return-object v0
.end method

.method public static q(II)Lcom/google/common/collect/T0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/T0<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const-string v0, "expectedCellsPerRow"

    invoke-static {p1, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    invoke-static {p0}, Lcom/google/common/collect/Q1;->e0(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/T0;

    new-instance v1, Lcom/google/common/collect/T0$a;

    invoke-direct {v1, p1}, Lcom/google/common/collect/T0$a;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/T0;-><init>(Ljava/util/Map;Lcom/google/common/collect/T0$a;)V

    return-object v0
.end method

.method public static r(Lcom/google/common/collect/S2;)Lcom/google/common/collect/T0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/T0<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/T0;->p()Lcom/google/common/collect/T0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/T0;->Y(Lcom/google/common/collect/S2;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->B(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/Q2;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic Y(Lcom/google/common/collect/S2;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public bridge synthetic c0()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->c0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/Q2;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d0()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->d0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e0(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->e0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->i0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
