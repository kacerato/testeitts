.class public final Lcom/google/common/collect/g1$a;
.super Lcom/google/common/collect/c1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/g1$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/c1$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->k([Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Iterator;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->m(Ljava/util/Iterator;)Lcom/google/common/collect/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/c1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/c1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$a;->g(Ljava/lang/Object;)Lcom/google/common/collect/c1$a;

    return-object p0
.end method

.method public varargs k([Ljava/lang/Object;)Lcom/google/common/collect/g1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$a;->b([Ljava/lang/Object;)Lcom/google/common/collect/c1$b;

    return-object p0
.end method

.method public l(Ljava/lang/Iterable;)Lcom/google/common/collect/g1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$a;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$b;

    return-object p0
.end method

.method public m(Ljava/util/Iterator;)Lcom/google/common/collect/g1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$b;->d(Ljava/util/Iterator;)Lcom/google/common/collect/c1$b;

    return-object p0
.end method

.method public n()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/c1$a;->d:Z

    iget-object v0, p0, Lcom/google/common/collect/c1$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/c1$a;->c:I

    invoke-static {v0, v1}, Lcom/google/common/collect/g1;->l([Ljava/lang/Object;I)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/google/common/collect/g1$a;)Lcom/google/common/collect/g1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;)",
            "Lcom/google/common/collect/g1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/collect/c1$a;->b:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/common/collect/c1$a;->c:I

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/c1$a;->h([Ljava/lang/Object;I)V

    return-object p0
.end method
