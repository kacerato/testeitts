.class public LCk/c;
.super LCk/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(LEk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LCk/b;-><init>(LEk/p;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LCk/b;-><init>(Loh/E;)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)LCk/c;
    .locals 1

    instance-of v0, p0, LCk/c;

    if-eqz v0, :cond_0

    check-cast p0, LCk/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LCk/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LCk/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
