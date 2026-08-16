.class public Lfi/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/G;


# direct methods
.method public constructor <init>(Lfi/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/I0;

    invoke-direct {v0, p1}, Loh/I0;-><init>(Loh/g;)V

    iput-object v0, p0, Lfi/c;->b:Loh/G;

    return-void
.end method

.method public constructor <init>(Loh/G;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lfi/c;->b:Loh/G;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 1

    .line 2
    new-instance v0, Lfi/a;

    invoke-direct {v0, p1, p2}, Lfi/a;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p0, v0}, Lfi/c;-><init>(Lfi/a;)V

    return-void
.end method

.method public constructor <init>([Lfi/a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/I0;

    invoke-direct {v0, p1}, Loh/I0;-><init>([Loh/g;)V

    iput-object v0, p0, Lfi/c;->b:Loh/G;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lfi/c;
    .locals 1

    instance-of v0, p0, Lfi/c;

    if-eqz v0, :cond_0

    check-cast p0, Lfi/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lfi/c;

    invoke-static {p0}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p0

    invoke-direct {v0, p0}, Lfi/c;-><init>(Loh/G;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lfi/c;
    .locals 1

    new-instance v0, Lfi/c;

    invoke-static {p0, p1}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p0

    invoke-direct {v0, p0}, Lfi/c;-><init>(Loh/G;)V

    return-object v0
.end method


# virtual methods
.method public A()[Lfi/a;
    .locals 4

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    new-array v1, v0, [Lfi/a;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v3, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/a;->u(Ljava/lang/Object;)Lfi/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    return v0
.end method

.method public u([Loh/x;I)I
    .locals 4

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v2, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lfi/a;->u(Ljava/lang/Object;)Lfi/a;

    move-result-object v2

    add-int v3, p2, v1

    invoke-virtual {v2}, Lfi/a;->v()Loh/x;

    move-result-object v2

    aput-object v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public v(Loh/x;)Z
    .locals 4

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v3, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/a;->u(Ljava/lang/Object;)Lfi/a;

    move-result-object v3

    invoke-virtual {v3}, Lfi/a;->v()Loh/x;

    move-result-object v3

    invoke-virtual {v3, p1}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public x()Lfi/a;
    .locals 2

    iget-object v0, p0, Lfi/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lfi/c;->b:Loh/G;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/a;->u(Ljava/lang/Object;)Lfi/a;

    move-result-object v0

    return-object v0
.end method
