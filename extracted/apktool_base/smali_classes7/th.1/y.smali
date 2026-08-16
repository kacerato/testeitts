.class public Lth/y;
.super Lth/J;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lth/J;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Lth/I;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lth/J;-><init>(Lth/I;)V

    return-void
.end method

.method public constructor <init>([Lth/I;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lth/J;-><init>([Lth/I;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/y;
    .locals 1

    instance-of v0, p0, Lth/y;

    if-eqz v0, :cond_0

    check-cast p0, Lth/y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/y;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
