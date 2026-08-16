.class public LBg/o;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LBg/q;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LBg/o;->j:J

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, LBg/o;->k:[B

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LBg/o;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LBg/o;->f:I

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, LBg/o;->j:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LBg/o;->i:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LBg/o;->b:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, LBg/o;->h:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, LBg/o;->g:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LBg/o;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LBg/o;->d:I

    return v0
.end method

.method public m([B)V
    .locals 0

    iput-object p1, p0, LBg/o;->k:[B

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, LBg/o;->e:I

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, LBg/o;->f:I

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, LBg/o;->j:J

    return-void
.end method

.method public q(J)V
    .locals 0

    iput-wide p1, p0, LBg/o;->i:J

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, LBg/o;->b:J

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, LBg/o;->h:J

    return-void
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, LBg/o;->g:J

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, LBg/o;->c:I

    return-void
.end method

.method public v(I)V
    .locals 0

    iput p1, p0, LBg/o;->d:I

    return-void
.end method
