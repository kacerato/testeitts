.class public Lcom/google/common/collect/M$c;
.super Lcom/google/common/collect/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/M;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/y0<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/V1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/M;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/M;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/M$c;->d:Lcom/google/common/collect/M;

    iput-object p2, p0, Lcom/google/common/collect/M$c;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/y0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/M$c;->m0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public m0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/M$c;->c:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/M$c;->o0()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public o0()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/y0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    iput-object v0, p0, Lcom/google/common/collect/M$c;->b:Lcom/google/common/collect/V1$a;

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/M$c;->b:Lcom/google/common/collect/V1$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/M$c;->d:Lcom/google/common/collect/M;

    iget-object v2, p0, Lcom/google/common/collect/M$c;->b:Lcom/google/common/collect/V1$a;

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/M;->P9(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/M$c;->b:Lcom/google/common/collect/V1$a;

    return-void
.end method
