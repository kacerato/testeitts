.class public final Lcom/google/common/collect/c3$c;
.super Lcom/google/common/collect/c3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c3<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/c3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c3;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/c3$c;->f:Lcom/google/common/collect/c3;

    new-instance v0, Lcom/google/common/collect/c3$d;

    iget-object p1, p1, Lcom/google/common/collect/c3;->b:Ljava/util/NavigableMap;

    invoke-direct {v0, p1}, Lcom/google/common/collect/c3$d;-><init>(Ljava/util/NavigableMap;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/c3;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/c3$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$c;->f:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->o(Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$c;->f:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d()Lcom/google/common/collect/m2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m2<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$c;->f:Lcom/google/common/collect/c3;

    return-object v0
.end method

.method public o(Lcom/google/common/collect/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c3$c;->f:Lcom/google/common/collect/c3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c3;->a(Lcom/google/common/collect/j2;)V

    return-void
.end method
