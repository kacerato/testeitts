.class public Lcom/google/common/collect/W1$d;
.super Lcom/google/common/collect/W1$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/W1;->g(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)Lcom/google/common/collect/V1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/W1$n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/V1;

.field public final synthetic e:Lcom/google/common/collect/V1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/V1;Lcom/google/common/collect/V1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/W1$d;->d:Lcom/google/common/collect/V1;

    iput-object p2, p0, Lcom/google/common/collect/W1$d;->e:Lcom/google/common/collect/V1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/W1$n;-><init>(Lcom/google/common/collect/W1$a;)V

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/W1$d;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/W1$d;->e:Lcom/google/common/collect/V1;

    invoke-interface {v2, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/W1$d;->g()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$d;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/W1$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/W1$d$a;-><init>(Lcom/google/common/collect/W1$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public g()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/W1$d;->d:Lcom/google/common/collect/V1;

    invoke-interface {v0}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/W1$d$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/W1$d$b;-><init>(Lcom/google/common/collect/W1$d;Ljava/util/Iterator;)V

    return-object v1
.end method
