.class public LDk/d;
.super LDk/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LDk/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LDk/c;->x()LFk/x;

    move-result-object v0

    invoke-virtual {p1}, LDk/c;->y()Loh/s;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LDk/c;-><init>(LFk/x;Loh/s;)V

    return-void
.end method

.method public constructor <init>(LFk/x;Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LDk/c;-><init>(LFk/x;Loh/s;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LDk/c;-><init>(Loh/E;)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)LDk/d;
    .locals 1

    instance-of v0, p0, LDk/d;

    if-eqz v0, :cond_0

    check-cast p0, LDk/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDk/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LDk/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
