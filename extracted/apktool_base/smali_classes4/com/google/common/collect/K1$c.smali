.class public Lcom/google/common/collect/K1$c;
.super Lcom/google/common/collect/D2$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/K1;->e()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/D2$k<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/K1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/K1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/K1$c;->b:Lcom/google/common/collect/K1;

    invoke-direct {p0}, Lcom/google/common/collect/D2$k;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/K1$c;->b:Lcom/google/common/collect/K1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/K1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$e;

    iget-object v1, p0, Lcom/google/common/collect/K1$c;->b:Lcom/google/common/collect/K1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/K1$e;-><init>(Lcom/google/common/collect/K1;Lcom/google/common/collect/K1$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/K1$c;->b:Lcom/google/common/collect/K1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/K1;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/K1$c;->b:Lcom/google/common/collect/K1;

    invoke-static {v0}, Lcom/google/common/collect/K1;->r(Lcom/google/common/collect/K1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
