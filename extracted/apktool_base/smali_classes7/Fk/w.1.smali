.class public LFk/w;
.super LFk/y;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, LFk/y;-><init>([B)V

    array-length p1, p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hash id not 3 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LFk/w;
    .locals 1

    instance-of v0, p0, LFk/w;

    if-eqz v0, :cond_0

    check-cast p0, LFk/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    new-instance v0, LFk/w;

    invoke-direct {v0, p0}, LFk/w;-><init>([B)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
