.class public final Lh1/j;
.super Lh1/k;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lh1/k;


# direct methods
.method public constructor <init>(Lh1/k;II)V
    .locals 0

    iput-object p1, p0, Lh1/j;->f:Lh1/k;

    invoke-direct {p0}, Lh1/k;-><init>()V

    iput p2, p0, Lh1/j;->d:I

    iput p3, p0, Lh1/j;->e:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lh1/j;->f:Lh1/k;

    invoke-virtual {v0}, Lh1/g;->c()I

    move-result v0

    iget v1, p0, Lh1/j;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lh1/j;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lh1/j;->f:Lh1/k;

    invoke-virtual {v0}, Lh1/g;->c()I

    move-result v0

    iget v1, p0, Lh1/j;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lh1/j;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lh1/J;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lh1/j;->f:Lh1/k;

    iget v1, p0, Lh1/j;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lh1/j;->f:Lh1/k;

    invoke-virtual {v0}, Lh1/g;->i()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j(II)Lh1/k;
    .locals 2

    iget v0, p0, Lh1/j;->e:I

    invoke-static {p1, p2, v0}, Lh1/J;->c(III)V

    iget v0, p0, Lh1/j;->d:I

    iget-object v1, p0, Lh1/j;->f:Lh1/k;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lh1/k;->j(II)Lh1/k;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lh1/j;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lh1/k;->j(II)Lh1/k;

    move-result-object p1

    return-object p1
.end method
