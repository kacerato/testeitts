.class public LAk/o;
.super LFk/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p0, p1}, LFk/y;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, LFk/y;-><init>([B)V

    array-length p1, p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LAk/o;
    .locals 1

    instance-of v0, p0, LAk/o;

    if-eqz v0, :cond_0

    check-cast p0, LAk/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/o;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/o;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
