.class public LAk/Y;
.super LAk/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, LAk/s;-><init>(LBk/e;LFk/p0;Loh/e;LFk/w0;LAk/O;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LAk/s;-><init>(Loh/E;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)LAk/Y;
    .locals 1

    instance-of v0, p0, LAk/Y;

    if-eqz v0, :cond_0

    check-cast p0, LAk/Y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/Y;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/Y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
