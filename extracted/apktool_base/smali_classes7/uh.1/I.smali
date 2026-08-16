.class public Luh/I;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/G;

.field public c:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v2}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v0

    iput-object v0, p0, Luh/I;->b:Loh/G;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    :goto_0
    invoke-static {p1, v2}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/I;->c:Loh/G;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OriginatorInfo too big"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag in OriginatorInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1, v2}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/I;->b:Loh/G;

    :cond_4
    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/G;Loh/G;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/I;->b:Loh/G;

    iput-object p2, p0, Luh/I;->c:Loh/G;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/I;
    .locals 1

    instance-of v0, p0, Luh/I;

    if-eqz v0, :cond_0

    check-cast p0, Luh/I;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/I;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/I;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/I;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/I;->w(Ljava/lang/Object;)Luh/I;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/I;->b:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/I;->c:Loh/G;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/I;->c:Loh/G;

    return-object v0
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/I;->b:Loh/G;

    return-object v0
.end method
