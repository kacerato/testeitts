.class public Lvh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Luh/J;

.field public c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence has incorrect number of elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/J;->v(Ljava/lang/Object;)Luh/J;

    move-result-object v0

    iput-object v0, p0, Lvh/b;->b:Luh/J;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lvh/b;->c:Loh/y;

    :cond_2
    return-void
.end method

.method public constructor <init>(Luh/J;Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lvh/b;->b:Luh/J;

    iput-object p2, p0, Lvh/b;->c:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ephemeral public key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lvh/b;
    .locals 1

    instance-of v0, p0, Lvh/b;

    if-eqz v0, :cond_0

    check-cast p0, Lvh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lvh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lvh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lvh/b;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lvh/b;->w(Ljava/lang/Object;)Lvh/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lvh/b;->b:Luh/J;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lvh/b;->c:Loh/y;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Lvh/b;->c:Loh/y;

    return-object v0
.end method

.method public v()Luh/J;
    .locals 1

    iget-object v0, p0, Lvh/b;->b:Luh/J;

    return-object v0
.end method
