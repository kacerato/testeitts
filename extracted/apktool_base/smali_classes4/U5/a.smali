.class public LU5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU5/a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:LU5/a$a;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, LU5/a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, LU5/a$a;->DOWNLOADS:LU5/a$a;

    iput-object v0, p0, LU5/a;->d:LU5/a$a;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, LU5/a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, LU5/a;->a:Ljava/lang/String;

    .line 7
    sget-object v0, LU5/a$a;->DOWNLOADS:LU5/a$a;

    iput-object v0, p0, LU5/a;->d:LU5/a$a;

    const/16 v0, 0xa

    .line 8
    iput v0, p0, LU5/a;->e:I

    .line 9
    iput-object p1, p0, LU5/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;LU5/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "users",
            "tags",
            "sortBy"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, LU5/a;->a:Ljava/lang/String;

    .line 12
    sget-object v0, LU5/a$a;->DOWNLOADS:LU5/a$a;

    const/16 v0, 0xa

    .line 13
    iput v0, p0, LU5/a;->e:I

    .line 14
    iput-object p1, p0, LU5/a;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, LU5/a;->b:[Ljava/lang/String;

    .line 16
    iput-object p3, p0, LU5/a;->c:[Ljava/lang/String;

    .line 17
    iput-object p4, p0, LU5/a;->d:LU5/a$a;

    if-eqz p4, :cond_0

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sortBy can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;LU5/a$a;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "users",
            "tags",
            "sortBy",
            "count",
            "offset"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, LU5/a;->a:Ljava/lang/String;

    .line 21
    sget-object v0, LU5/a$a;->DOWNLOADS:LU5/a$a;

    .line 22
    iput-object p1, p0, LU5/a;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, LU5/a;->b:[Ljava/lang/String;

    .line 24
    iput-object p3, p0, LU5/a;->c:[Ljava/lang/String;

    .line 25
    iput-object p4, p0, LU5/a;->d:LU5/a$a;

    .line 26
    iput p5, p0, LU5/a;->e:I

    .line 27
    iput p6, p0, LU5/a;->f:I

    if-eqz p4, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sortBy can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    iget-object v0, p0, LU5/a;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, LU5/a;->c:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LU5/a;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, LU5/a;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v2

    aput-object p1, v0, v1

    iput-object v0, p0, LU5/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    iget-object v0, p0, LU5/a;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, LU5/a;->b:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LU5/a;->b:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iget-object v2, p0, LU5/a;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v2

    aput-object p1, v0, v1

    iput-object v0, p0, LU5/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public c()LU5/a;
    .locals 2

    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    iget-object v1, p0, LU5/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LU5/a;->t(Ljava/lang/String;)V

    iget-object v1, p0, LU5/a;->b:[Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, LU5/a;->u([Ljava/lang/String;)V

    iget-object v1, p0, LU5/a;->c:[Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, LU5/a;->s([Ljava/lang/String;)V

    iget-object v1, p0, LU5/a;->d:LU5/a$a;

    invoke-virtual {v0, v1}, LU5/a;->r(LU5/a$a;)V

    iget v1, p0, LU5/a;->e:I

    invoke-virtual {v0, v1}, LU5/a;->m(I)V

    iget v1, p0, LU5/a;->f:I

    invoke-virtual {v0, v1}, LU5/a;->o(I)V

    iget-boolean v1, p0, LU5/a;->g:Z

    invoke-virtual {v0, v1}, LU5/a;->p(Z)V

    iget-boolean v1, p0, LU5/a;->h:Z

    invoke-virtual {v0, v1}, LU5/a;->q(Z)V

    iget-boolean v1, p0, LU5/a;->i:Z

    invoke-virtual {v0, v1}, LU5/a;->n(Z)V

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LU5/a;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LU5/a;->f:I

    return v0
.end method

.method public f()LU5/a$a;
    .locals 1

    iget-object v0, p0, LU5/a;->d:LU5/a$a;

    return-object v0
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LU5/a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LU5/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LU5/a;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, LU5/a;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, LU5/a;->g:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LU5/a;->h:Z

    return v0
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iput p1, p0, LU5/a;->e:I

    return-void
.end method

.method public n(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreTemplates"
        }
    .end annotation

    iput-boolean p1, p0, LU5/a;->i:Z

    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    iput p1, p0, LU5/a;->f:I

    return-void
.end method

.method public p(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyFree"
        }
    .end annotation

    iput-boolean p1, p0, LU5/a;->g:Z

    return-void
.end method

.method public q(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyPaid"
        }
    .end annotation

    iput-boolean p1, p0, LU5/a;->h:Z

    return-void
.end method

.method public r(LU5/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortBy"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, LU5/a;->d:LU5/a$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sortBy can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs s([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    iput-object p1, p0, LU5/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iput-object p1, p0, LU5/a;->a:Ljava/lang/String;

    return-void
.end method

.method public varargs u([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "users"
        }
    .end annotation

    iput-object p1, p0, LU5/a;->b:[Ljava/lang/String;

    return-void
.end method
