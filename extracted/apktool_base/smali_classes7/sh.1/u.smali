.class public Lsh/u;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/E;

.field public final c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lhi/E;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/u;->b:Lhi/E;

    iput-object p2, p0, Lsh/u;->c:Ljava/math/BigInteger;

    return-void
.end method

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

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lsh/u;->b:Lhi/E;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lsh/u;->c:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lsh/u;
    .locals 1

    instance-of v0, p0, Lsh/u;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/u;->b:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget-object v2, p0, Lsh/u;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/E;
    .locals 1

    iget-object v0, p0, Lsh/u;->b:Lhi/E;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsh/u;->c:Ljava/math/BigInteger;

    return-object v0
.end method
