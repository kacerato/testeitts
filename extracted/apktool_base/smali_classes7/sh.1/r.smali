.class public Lsh/r;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/x;

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lsh/r;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    iput-object p1, p0, Lsh/r;->c:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence must be 2 elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/r;->b:Loh/x;

    iput-object p2, p0, Lsh/r;->c:Loh/g;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lsh/r;
    .locals 1

    instance-of v0, p0, Lsh/r;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/r;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    check-cast p0, Loh/g;

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_2

    new-instance v0, Lsh/r;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lsh/r;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lsh/r;->w(Ljava/lang/Object;)Lsh/r;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lsh/r;->b:Loh/x;

    iget-object v2, p0, Lsh/r;->c:Loh/g;

    const/4 v3, 0x2

    new-array v3, v3, [Loh/g;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lsh/r;->b:Loh/x;

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lsh/r;->c:Loh/g;

    return-object v0
.end method
