.class public LIi/M;
.super LIi/w;
.source "SourceFile"


# static fields
.field public static final r:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0}, LIi/M;-><init>(LBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LIi/w;-><init>(LBi/o;)V

    invoke-virtual {p0}, LIi/M;->r()LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    invoke-virtual {p0}, LIi/M;->reset()V

    return-void
.end method

.method public constructor <init>(LIi/M;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LIi/w;-><init>(LIi/w;)V

    invoke-virtual {p0}, LIi/M;->r()LBi/n;

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

    invoke-virtual {p0}, LIi/M;->r()LBi/n;

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

    const-string v0, "SHA-384"

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

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/p;->D(J[BI)V

    invoke-virtual {p0}, LIi/M;->reset()V

    const/16 p1, 0x30

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/M;

    invoke-direct {v0, p0}, LIi/M;-><init>(LIi/M;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 0

    check-cast p1, LIi/M;

    invoke-super {p0, p1}, LIi/w;->q(LIi/w;)V

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

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, LIi/w;->f:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, LIi/w;->g:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, LIi/w;->h:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, LIi/w;->i:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, LIi/w;->j:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, LIi/w;->k:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, LIi/w;->l:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, LIi/w;->m:J

    return-void
.end method
