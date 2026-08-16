.class public LCk/a;
.super LEk/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LEk/l;-><init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LEk/l;-><init>(Loh/E;)V

    return-void
.end method

.method public static D(Ljava/lang/Object;)LCk/a;
    .locals 1

    instance-of v0, p0, LCk/a;

    if-eqz v0, :cond_0

    check-cast p0, LCk/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCk/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCk/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
