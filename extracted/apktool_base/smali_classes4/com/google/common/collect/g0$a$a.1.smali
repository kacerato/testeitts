.class public Lcom/google/common/collect/g0$a$a;
.super Lcom/google/common/collect/Q1$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g0$a;->e()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$s<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/g0$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    invoke-direct {p0}, Lcom/google/common/collect/Q1$s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g0$a$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g0$a$a$a;-><init>(Lcom/google/common/collect/g0$a$a;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    iget-object v0, v0, Lcom/google/common/collect/g0$a;->e:Lcom/google/common/collect/g0;

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g0;->n(Lw2/I;)Z

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

    iget-object v0, p0, Lcom/google/common/collect/g0$a$a;->b:Lcom/google/common/collect/g0$a;

    iget-object v0, v0, Lcom/google/common/collect/g0$a;->e:Lcom/google/common/collect/g0;

    invoke-static {p1}, Lw2/J;->n(Ljava/util/Collection;)Lw2/I;

    move-result-object p1

    invoke-static {p1}, Lw2/J;->q(Lw2/I;)Lw2/I;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/g0;->n(Lw2/I;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g0$a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
