.class public LEk/l;
.super LEk/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LEk/c;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, LEk/c;->B()LFk/w0;

    move-result-object v0

    invoke-virtual {p1}, LEk/c;->x()LEk/s;

    move-result-object v1

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object v2

    invoke-virtual {p1}, LEk/c;->y()LFk/j0;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, LEk/l;-><init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V

    return-void
.end method

.method public constructor <init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V
    .locals 6

    .line 2
    sget-object v2, LEk/e;->f:LEk/e;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LEk/c;-><init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, LEk/c;-><init>(Loh/E;)V

    invoke-virtual {p0}, LEk/c;->A()LEk/e;

    move-result-object p1

    sget-object v0, LEk/e;->f:LEk/e;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object was certificate base but the type was not explicit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static C(Ljava/lang/Object;)LEk/l;
    .locals 1

    instance-of v0, p0, LEk/l;

    if-eqz v0, :cond_0

    check-cast p0, LEk/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/l;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
