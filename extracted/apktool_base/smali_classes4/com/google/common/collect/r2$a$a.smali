.class public Lcom/google/common/collect/r2$a$a;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/r2$a;->x()Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/r2$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/r2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v0}, Lcom/google/common/collect/r2$a;->H(Lcom/google/common/collect/r2$a;)I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v0}, Lcom/google/common/collect/r2$a;->I(Lcom/google/common/collect/r2$a;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v1}, Lcom/google/common/collect/r2$a;->J(Lcom/google/common/collect/r2$a;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v1}, Lcom/google/common/collect/r2$a;->I(Lcom/google/common/collect/r2$a;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v2}, Lcom/google/common/collect/r2$a;->J(Lcom/google/common/collect/r2$a;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r2$a$a;->Q(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/r2$a$a;->d:Lcom/google/common/collect/r2$a;

    invoke-static {v0}, Lcom/google/common/collect/r2$a;->H(Lcom/google/common/collect/r2$a;)I

    move-result v0

    return v0
.end method
