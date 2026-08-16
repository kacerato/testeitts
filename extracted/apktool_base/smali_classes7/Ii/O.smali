.class public LIi/O;
.super LIi/w;
.source "SourceFile"


# static fields
.field public static final r:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/O;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LIi/w;-><init>(LBi/o;)V

    invoke-virtual {p0}, LIi/O;->r()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/O;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/O;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LIi/w;-><init>(LIi/w;)V

    invoke-virtual {p0}, LIi/O;->r()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    invoke-static {}, LBi/o;->values()[LBi/o;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, LIi/w;-><init>(LBi/o;)V

    invoke-virtual {p0, p1}, LIi/w;->y([B)V

    invoke-virtual {p0}, LIi/O;->r()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    invoke-virtual {p0}, LIi/w;->t()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    invoke-super {p0, v1}, LIi/w;->u([B)V

    iget-object v2, p0, LIi/w;->a:LBi/o;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-512"

    return-object v0
.end method

.method public c([BI)I
    .locals 3

    invoke-virtual {p0}, LIi/w;->s()V

    iget-wide v0, p0, LIi/w;->f:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->g:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->h:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->i:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->j:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->k:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->l:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-wide v0, p0, LIi/w;->m:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    invoke-virtual {p0}, LIi/O;->reset()V

    const/16 p1, 0x40

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/O;

    invoke-direct {v0, p0}, LIi/O;-><init>(LIi/O;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/O;

    invoke-virtual {p0, p1}, LIi/w;->q(LIi/w;)V

    return-void
.end method

.method public r()LBi/n;
    .locals 2

    const/16 v0, 0x100

    iget-object v1, p0, LIi/w;->a:LBi/o;

    invoke-static {p0, v0, v1}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, LIi/w;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, LIi/w;->f:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, LIi/w;->g:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, LIi/w;->h:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, LIi/w;->i:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, LIi/w;->j:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, LIi/w;->k:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, LIi/w;->l:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, LIi/w;->m:J

    return-void
.end method
