.class public Lql/L$b;
.super Lql/K$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lql/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lql/H;

.field public f:I

.field public g:[B


# direct methods
.method public constructor <init>(Lql/H;)V
    .locals 1

    invoke-direct {p0, p1}, Lql/K$a;-><init>(Lql/H;)V

    const/4 v0, 0x0

    iput v0, p0, Lql/L$b;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lql/L$b;->g:[B

    iput-object p1, p0, Lql/L$b;->e:Lql/H;

    return-void
.end method

.method public static synthetic i(Lql/L$b;)I
    .locals 0

    iget p0, p0, Lql/L$b;->f:I

    return p0
.end method

.method public static synthetic j(Lql/L$b;)[B
    .locals 0

    iget-object p0, p0, Lql/L$b;->g:[B

    return-object p0
.end method


# virtual methods
.method public bridge synthetic e()Lql/K;
    .locals 1

    invoke-virtual {p0}, Lql/L$b;->k()Lql/L;

    move-result-object v0

    return-object v0
.end method

.method public k()Lql/L;
    .locals 2

    new-instance v0, Lql/L;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lql/L;-><init>(Lql/L$b;Lql/L$a;)V

    return-object v0
.end method

.method public l(I)Lql/L$b;
    .locals 0

    iput p1, p0, Lql/L$b;->f:I

    return-object p0
.end method

.method public m([B)Lql/L$b;
    .locals 0

    invoke-static {p1}, Lql/O;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lql/L$b;->g:[B

    return-object p0
.end method

.method public n([B)Lql/L$b;
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lql/L$b;->e:Lql/H;

    invoke-virtual {v0}, Lql/H;->h()I

    move-result v0

    iget-object v1, p0, Lql/L$b;->e:Lql/H;

    invoke-virtual {v1}, Lql/H;->i()Lql/k;

    move-result-object v1

    invoke-virtual {v1}, Lql/k;->e()Lql/m;

    move-result-object v1

    invoke-virtual {v1}, Lql/m;->a()I

    move-result v1

    iget-object v2, p0, Lql/L$b;->e:Lql/H;

    invoke-virtual {v2}, Lql/H;->b()I

    move-result v2

    mul-int/2addr v1, v0

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result v3

    iput v3, p0, Lql/L$b;->f:I

    const/4 v3, 0x4

    invoke-static {p1, v3, v0}, Lql/O;->i([BII)[B

    move-result-object v4

    iput-object v4, p0, Lql/L$b;->g:[B

    add-int/2addr v3, v0

    add-int/2addr v1, v2

    invoke-static {p1, v3, v1}, Lql/O;->i([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lql/K$a;->g([B)Lql/K$a;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "signature == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
