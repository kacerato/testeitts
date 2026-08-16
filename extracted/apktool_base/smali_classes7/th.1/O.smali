.class public Lth/O;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Loh/s;

.field public final c:[Loh/s;

.field public final d:[Lth/F;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Loh/s;

    iput-object v0, p0, Lth/O;->b:[Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Loh/s;

    iput-object v0, p0, Lth/O;->c:[Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lth/F;

    iput-object v0, p0, Lth/O;->d:[Lth/F;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    iget-object v3, p0, Lth/O;->b:[Loh/s;

    invoke-virtual {v2, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lth/O;->c:[Loh/s;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lth/O;->d:[Lth/F;

    invoke-virtual {v2, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Loh/s;Loh/s;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lth/O;-><init>(Loh/s;Loh/s;Lth/F;)V

    return-void
.end method

.method public constructor <init>(Loh/s;Loh/s;Lth/F;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Loh/s;

    iput-object v1, p0, Lth/O;->b:[Loh/s;

    new-array v2, v0, [Loh/s;

    iput-object v2, p0, Lth/O;->c:[Loh/s;

    new-array v0, v0, [Lth/F;

    iput-object v0, p0, Lth/O;->d:[Lth/F;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p2, v2, v3

    aput-object p3, v0, v3

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/O;
    .locals 1

    instance-of v0, p0, Lth/O;

    if-eqz v0, :cond_0

    check-cast p0, Lth/O;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/O;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/O;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    iget-object v1, p0, Lth/O;->b:[Loh/s;

    array-length v1, v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lth/O;->b:[Loh/s;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-instance v2, Loh/h;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Loh/h;-><init>(I)V

    iget-object v3, p0, Lth/O;->b:[Loh/s;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    iget-object v3, p0, Lth/O;->c:[Loh/s;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    iget-object v3, p0, Lth/O;->d:[Lth/F;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v3, Loh/G0;

    invoke-direct {v3, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lth/O;->b:[Loh/s;

    array-length v0, v0

    return v0
.end method

.method public u(I)Loh/s;
    .locals 1

    iget-object v0, p0, Lth/O;->b:[Loh/s;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public v(I)Loh/s;
    .locals 1

    iget-object v0, p0, Lth/O;->c:[Loh/s;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public x(I)Lth/F;
    .locals 1

    iget-object v0, p0, Lth/O;->d:[Lth/F;

    aget-object p1, v0, p1

    return-object p1
.end method
