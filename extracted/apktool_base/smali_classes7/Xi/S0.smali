.class public LXi/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LXi/c;

.field public c:LXi/c;

.field public d:LXi/c;


# direct methods
.method public constructor <init>(LXi/c;LXi/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LXi/S0;-><init>(LXi/c;LXi/c;LXi/c;)V

    return-void
.end method

.method public constructor <init>(LXi/c;LXi/c;LXi/c;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    instance-of v0, p1, LXi/Q0;

    if-nez v0, :cond_1

    instance-of v1, p1, LXi/N0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only X25519 and X448 paramaters can be used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p3, :cond_3

    instance-of p3, p2, LXi/Q0;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, LXi/Q0;

    invoke-virtual {p3}, LXi/Q0;->e()LXi/R0;

    move-result-object p3

    goto :goto_2

    :cond_2
    move-object p3, p2

    check-cast p3, LXi/N0;

    invoke-virtual {p3}, LXi/N0;->e()LXi/O0;

    move-result-object p3

    goto :goto_2

    :cond_3
    instance-of v1, p3, LXi/R0;

    const-string v2, "ephemeral public key has different domain parameters"

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    instance-of v0, p3, LXi/O0;

    if-eqz v0, :cond_7

    instance-of v0, p1, LXi/N0;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iput-object p1, p0, LXi/S0;->b:LXi/c;

    iput-object p2, p0, LXi/S0;->c:LXi/c;

    iput-object p3, p0, LXi/S0;->d:LXi/c;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LXi/c;
    .locals 1

    iget-object v0, p0, LXi/S0;->c:LXi/c;

    return-object v0
.end method

.method public b()LXi/c;
    .locals 1

    iget-object v0, p0, LXi/S0;->d:LXi/c;

    return-object v0
.end method

.method public c()LXi/c;
    .locals 1

    iget-object v0, p0, LXi/S0;->b:LXi/c;

    return-object v0
.end method
