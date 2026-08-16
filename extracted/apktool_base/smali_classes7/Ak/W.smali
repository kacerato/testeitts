.class public LAk/W;
.super LAk/V;
.source "SourceFile"


# direct methods
.method public constructor <init>(LAk/V;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LAk/V;->x()LFk/p0;

    move-result-object v0

    invoke-virtual {p1}, LAk/V;->v()LEk/m;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LAk/V;-><init>(LFk/p0;LEk/m;)V

    return-void
.end method

.method public constructor <init>(LFk/p0;LEk/m;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LAk/V;-><init>(LFk/p0;LEk/m;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LAk/V;-><init>(Loh/E;)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)LAk/W;
    .locals 1

    instance-of v0, p0, LAk/W;

    if-eqz v0, :cond_0

    check-cast p0, LAk/W;

    return-object p0

    :cond_0
    instance-of v0, p0, LAk/V;

    if-eqz v0, :cond_1

    new-instance v0, LAk/W;

    check-cast p0, LAk/V;

    invoke-direct {v0, p0}, LAk/W;-><init>(LAk/V;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, LAk/W;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/W;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
