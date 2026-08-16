.class public final Lcom/google/common/collect/n1$c;
.super Lcom/google/common/collect/A1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/A1<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field public static final h:J


# instance fields
.field public final synthetic g:Lcom/google/common/collect/n1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-direct {p0}, Lcom/google/common/collect/A1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/n1;Lcom/google/common/collect/n1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;)V

    return-void
.end method


# virtual methods
.method public H(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->v(I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/V1$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/V1$a;

    invoke-interface {p1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-interface {p1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$c;->H(I)Lcom/google/common/collect/V1$a;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 2
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/n1$d;

    iget-object v1, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/n1$d;-><init>(Lcom/google/common/collect/n1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n1$c;->g:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
