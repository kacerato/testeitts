.class public final Lcom/google/common/collect/D$g;
.super Lcom/google/common/collect/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/D;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-direct {p0}, Lcom/google/common/collect/g;-><init>()V

    invoke-static {p1, p2}, Lcom/google/common/collect/D;->b(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/D$g;->c:I

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/D$g;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-virtual {v1}, Lcom/google/common/collect/D;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    iget v2, p0, Lcom/google/common/collect/D$g;->c:I

    invoke-static {v1, v2}, Lcom/google/common/collect/D;->b(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    iget-object v1, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/D;->j(Lcom/google/common/collect/D;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/D$g;->c:I

    :cond_1
    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-virtual {v0}, Lcom/google/common/collect/D;->z()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/D$g;->e()V

    iget v0, p0, Lcom/google/common/collect/D$g;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-static {v1, v0}, Lcom/google/common/collect/D;->k(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-virtual {v0}, Lcom/google/common/collect/D;->z()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/D$g;->e()V

    iget v0, p0, Lcom/google/common/collect/D$g;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    iget-object v1, p0, Lcom/google/common/collect/D$g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/D;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Z1;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    invoke-static {v1, v0}, Lcom/google/common/collect/D;->k(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/D$g;->d:Lcom/google/common/collect/D;

    iget v2, p0, Lcom/google/common/collect/D$g;->c:I

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/D;->f(Lcom/google/common/collect/D;ILjava/lang/Object;)V

    return-object v0
.end method
