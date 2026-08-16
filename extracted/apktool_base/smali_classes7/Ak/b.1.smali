.class public LAk/b;
.super LCk/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(LEk/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LCk/d;-><init>(LEk/p;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LCk/d;-><init>(Loh/E;)V

    return-void
.end method

.method public static A(Ljava/lang/Object;)LAk/b;
    .locals 1

    instance-of v0, p0, LAk/b;

    if-eqz v0, :cond_0

    check-cast p0, LAk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
