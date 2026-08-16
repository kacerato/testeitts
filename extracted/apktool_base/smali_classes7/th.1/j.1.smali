.class public Lth/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;

.field public final c:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lth/j;->b:Loh/E;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lth/j;->b:Loh/E;

    :goto_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lth/j;->c:Loh/E;

    return-void
.end method

.method public constructor <init>([Lth/b;[Lth/l;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lth/j;->b:Loh/E;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lth/j;->b:Loh/E;

    :goto_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lth/j;->c:Loh/E;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'response\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Lth/j;
    .locals 1

    instance-of v0, p0, Lth/j;

    if-eqz v0, :cond_0

    check-cast p0, Lth/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/j;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/j;->b:Loh/E;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/j;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lth/b;
    .locals 4

    iget-object v0, p0, Lth/j;->b:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/b;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lth/j;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public x()[Lth/l;
    .locals 4

    iget-object v0, p0, Lth/j;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/l;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lth/j;->c:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/l;->w(Ljava/lang/Object;)Lth/l;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
