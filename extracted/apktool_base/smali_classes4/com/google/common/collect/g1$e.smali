.class public Lcom/google/common/collect/g1$e;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/google/common/collect/g1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    iput p2, p0, Lcom/google/common/collect/g1$e;->d:I

    iput p3, p0, Lcom/google/common/collect/g1$e;->e:I

    return-void
.end method


# virtual methods
.method public O(II)Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/g1$e;->e:I

    invoke-static {p1, p2, v0}, Lw2/H;->f0(III)V

    iget-object v0, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    iget v1, p0, Lcom/google/common/collect/g1$e;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g1;->O(II)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public c()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->g()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/g1$e;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/collect/g1$e;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->g()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/g1$e;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/g1$e;->e:I

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/g1$e;->f:Lcom/google/common/collect/g1;

    iget v1, p0, Lcom/google/common/collect/g1$e;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/g1;->v()Lcom/google/common/collect/f3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/g1;->w(I)Lcom/google/common/collect/f3;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/g1$e;->e:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g1$e;->O(II)Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method
