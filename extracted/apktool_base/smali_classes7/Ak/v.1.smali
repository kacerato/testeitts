.class public LAk/v;
.super LAk/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(LBk/e;LFk/p0;LFk/w0;LAk/O;)V
    .locals 6

    .line 1
    sget-object v3, Loh/e;->f:Loh/e;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LAk/s;-><init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LAk/s;-><init>(Loh/E;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)LAk/v;
    .locals 1

    instance-of v0, p0, LAk/v;

    if-eqz v0, :cond_0

    check-cast p0, LAk/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/v;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/v;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
