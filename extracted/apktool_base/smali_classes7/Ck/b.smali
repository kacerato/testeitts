.class public LCk/b;
.super LEk/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(LEk/p;)V
    .locals 2

    .line 1
    new-instance v0, LFk/w0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LFk/w0;-><init>(I)V

    invoke-direct {p0, v0, p1}, LEk/q;-><init>(LFk/w0;LEk/p;)V

    return-void
.end method

.method public constructor <init>(LFk/w0;LEk/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LEk/q;-><init>(LFk/w0;LEk/p;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LEk/q;-><init>(Loh/E;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)LCk/b;
    .locals 1

    instance-of v0, p0, LCk/b;

    if-eqz v0, :cond_0

    check-cast p0, LCk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCk/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCk/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
