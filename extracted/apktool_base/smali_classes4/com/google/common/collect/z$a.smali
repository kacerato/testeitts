.class public Lcom/google/common/collect/z$a;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/z;->j(I)Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/common/collect/z;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/z;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/z$a;->e:Lcom/google/common/collect/z;

    iput p2, p0, Lcom/google/common/collect/z$a;->d:I

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/z$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/z$a;->e:Lcom/google/common/collect/z;

    iget v1, p0, Lcom/google/common/collect/z$a;->d:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/z;->b(Lcom/google/common/collect/z;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/z$a;->e:Lcom/google/common/collect/z;

    invoke-static {v1}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/collect/z$a;->e:Lcom/google/common/collect/z;

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Lcom/google/common/collect/z;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
