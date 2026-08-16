.class public Luh/h;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:I


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, Luh/h;->b:[B

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    :goto_0
    iput p1, p0, Luh/h;->c:I

    goto :goto_1

    :cond_0
    const/16 p1, 0xc

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Luh/h;->b:[B

    iput p2, p0, Luh/h;->c:I

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/h;
    .locals 1

    instance-of v0, p0, Luh/h;

    if-eqz v0, :cond_0

    check-cast p0, Luh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/h;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/h;-><init>(Loh/E;)V

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

    new-instance v1, Loh/C0;

    iget-object v2, p0, Luh/h;->b:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget v1, p0, Luh/h;->c:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-instance v1, Loh/s;

    iget v2, p0, Luh/h;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()I
    .locals 1

    iget v0, p0, Luh/h;->c:I

    return v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Luh/h;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
