.class public LEk/b;
.super LEk/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LEk/c;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, LEk/c;->B()LFk/w0;

    move-result-object v1

    invoke-virtual {p1}, LEk/c;->A()LEk/e;

    move-result-object v2

    invoke-virtual {p1}, LEk/c;->x()LEk/s;

    move-result-object v3

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object v4

    invoke-virtual {p1}, LEk/c;->y()LFk/j0;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LEk/b;-><init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V

    return-void
.end method

.method public constructor <init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, LEk/c;-><init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LEk/c;-><init>(Loh/E;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)LEk/b;
    .locals 1

    instance-of v0, p0, LEk/b;

    if-eqz v0, :cond_0

    check-cast p0, LEk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
