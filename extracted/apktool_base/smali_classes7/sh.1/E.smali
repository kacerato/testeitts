.class public Lsh/E;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public final c:Lhi/b;

.field public final d:Loh/E;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lhi/b;[[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsh/E;->b:Loh/s;

    iput-object p2, p0, Lsh/E;->c:Lhi/b;

    new-instance p1, Loh/h;

    array-length p2, p3

    invoke-direct {p1, p2}, Loh/h;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-eq p2, v0, :cond_0

    new-instance v0, Loh/C0;

    aget-object v1, p3, p2

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Loh/G0;

    invoke-direct {p2, p1}, Loh/G0;-><init>(Loh/h;)V

    iput-object p2, p0, Lsh/E;->d:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lsh/E;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lsh/E;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lsh/E;->d:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lsh/E;
    .locals 1

    instance-of v0, p0, Lsh/E;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/E;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/E;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/E;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/E;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/E;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/E;->d:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[[B
    .locals 4

    iget-object v0, p0, Lsh/E;->d:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lsh/E;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lsh/E;->c:Lhi/b;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsh/E;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
