.class public LEk/y;
.super LFk/x;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, LFk/x;-><init>([B)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)LEk/y;
    .locals 1

    instance-of v0, p0, LEk/y;

    if-eqz v0, :cond_0

    check-cast p0, LEk/y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, LFk/y;

    if-eqz v0, :cond_1

    new-instance v0, LEk/y;

    check-cast p0, LFk/y;

    invoke-virtual {p0}, LFk/y;->u()[B

    move-result-object p0

    invoke-direct {v0, p0}, LEk/y;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, LEk/y;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-direct {v0, p0}, LEk/y;-><init>([B)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
