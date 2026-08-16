.class public final Lj1/t;
.super Lj1/u;
.source "SourceFile"


# instance fields
.field public final transient e:I

.field public final transient f:I

.field public final synthetic g:Lj1/u;


# direct methods
.method public constructor <init>(Lj1/u;II)V
    .locals 0

    iput-object p1, p0, Lj1/t;->g:Lj1/u;

    invoke-direct {p0}, Lj1/u;-><init>()V

    iput p2, p0, Lj1/t;->e:I

    iput p3, p0, Lj1/t;->f:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lj1/t;->g:Lj1/u;

    invoke-virtual {v0}, Lj1/r;->c()I

    move-result v0

    iget v1, p0, Lj1/t;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lj1/t;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lj1/t;->g:Lj1/u;

    invoke-virtual {v0}, Lj1/r;->c()I

    move-result v0

    iget v1, p0, Lj1/t;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lj1/t;->g:Lj1/u;

    invoke-virtual {v0}, Lj1/r;->g()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj1/t;->f:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lj1/n;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lj1/t;->g:Lj1/u;

    iget v1, p0, Lj1/t;->e:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(II)Lj1/u;
    .locals 2

    iget v0, p0, Lj1/t;->f:I

    invoke-static {p1, p2, v0}, Lj1/n;->e(III)V

    iget-object v0, p0, Lj1/t;->g:Lj1/u;

    iget v1, p0, Lj1/t;->e:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lj1/u;->h(II)Lj1/u;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lj1/t;->f:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj1/u;->h(II)Lj1/u;

    move-result-object p1

    return-object p1
.end method
