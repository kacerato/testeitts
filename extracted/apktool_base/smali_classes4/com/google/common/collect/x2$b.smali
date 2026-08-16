.class public final Lcom/google/common/collect/x2$b;
.super Lcom/google/common/collect/A1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/A1<",
        "Lcom/google/common/collect/S2$a<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcom/google/common/collect/x2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/x2$b;->g:Lcom/google/common/collect/x2;

    invoke-direct {p0}, Lcom/google/common/collect/A1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/x2;Lcom/google/common/collect/x2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/x2$b;-><init>(Lcom/google/common/collect/x2;)V

    return-void
.end method


# virtual methods
.method public H(I)Lcom/google/common/collect/S2$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x2$b;->g:Lcom/google/common/collect/x2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x2;->K(I)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/collect/S2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/S2$a;

    iget-object v0, p0, Lcom/google/common/collect/x2$b;->g:Lcom/google/common/collect/x2;

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/z1;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/x2$b;->H(I)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/x2$b;->g:Lcom/google/common/collect/x2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->size()I

    move-result v0

    return v0
.end method
