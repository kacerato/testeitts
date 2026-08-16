.class public LXg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(LXg/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    return-void
.end method

.method public final B(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/j;->d(FFF)LXg/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->D(LXg/i;)V

    return-void
.end method

.method public final varargs C([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LXg/a;->w([I[I[I)V

    return-void
.end method

.method public D(LXg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texCoord"
        }
    .end annotation

    return-void
.end method

.method public final F(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p1}, LXg/j;->b(F)LXg/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->D(LXg/i;)V

    return-void
.end method

.method public final G(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-static {p1, p2}, LXg/j;->c(FF)LXg/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->D(LXg/i;)V

    return-void
.end method

.method public final varargs c([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p1}, LXg/a;->w([I[I[I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialGroupName"
        }
    .end annotation

    return-void
.end method

.method public l(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtlFileNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public m(LXg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    return-void
.end method

.method public final varargs p([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, v0}, LXg/a;->w([I[I[I)V

    return-void
.end method

.method public q(LXg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normal"
        }
    .end annotation

    return-void
.end method

.method public final r(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/j;->d(FFF)LXg/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->q(LXg/i;)V

    return-void
.end method

.method public final varargs u([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1}, LXg/a;->w([I[I[I)V

    return-void
.end method

.method public final w([I[I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "vt",
            "vn"
        }
    .end annotation

    const-string v0, "The vertex indices are null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, LXg/s;->c([I[I[I)LXg/q;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->A(LXg/q;)V

    return-void
.end method

.method public final y(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/j;->d(FFF)LXg/i;

    move-result-object p1

    invoke-virtual {p0, p1}, LXg/a;->m(LXg/i;)V

    return-void
.end method

.method public z(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
