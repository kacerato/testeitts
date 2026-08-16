.class public LXi/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LXi/s;

.field public c:LXi/s;


# direct methods
.method public constructor <init>(LXi/s;LXi/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-virtual {p2}, LXi/n;->d()LXi/q;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, LXi/p;->b:LXi/s;

    iput-object p2, p0, LXi/p;->c:LXi/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral public keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPublicKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPublicKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LXi/s;
    .locals 1

    iget-object v0, p0, LXi/p;->c:LXi/s;

    return-object v0
.end method

.method public b()LXi/s;
    .locals 1

    iget-object v0, p0, LXi/p;->b:LXi/s;

    return-object v0
.end method
