.class public Lcom/google/common/collect/W1$b$a;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/W1$b;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/google/common/collect/W1$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/W1$b;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/W1$b$a;->e:Lcom/google/common/collect/W1$b;

    iput-object p2, p0, Lcom/google/common/collect/W1$b$a;->d:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/W1$b$a;->e()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/common/collect/V1$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/W1$b$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/W1$b$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/W1$b$a;->e:Lcom/google/common/collect/W1$b;

    iget-object v2, v2, Lcom/google/common/collect/W1$b;->e:Lcom/google/common/collect/V1;

    invoke-interface {v2, v1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    return-object v0
.end method
