.class public Lsh/C;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public final c:Loh/n;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, Lsh/C;->b:[B

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object p1

    iput-object p1, p0, Lsh/C;->c:Loh/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLoh/n;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lsh/C;->b:[B

    iput-object p2, p0, Lsh/C;->c:Loh/n;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lsh/C;
    .locals 1

    instance-of v0, p0, Lsh/C;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/C;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/C;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/C;-><init>(Loh/E;)V

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

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lsh/C;->b:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/C;->c:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/n;
    .locals 1

    iget-object v0, p0, Lsh/C;->c:Loh/n;

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lsh/C;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
