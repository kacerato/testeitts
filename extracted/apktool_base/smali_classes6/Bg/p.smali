.class public LBg/p;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LBg/q;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LBg/p;->c:J

    iput-wide v0, p0, LBg/p;->d:J

    iput-wide v0, p0, LBg/p;->e:J

    const/4 v0, -0x1

    iput v0, p0, LBg/p;->f:I

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, LBg/p;->c:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LBg/p;->f:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, LBg/p;->e:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LBg/p;->b:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LBg/p;->d:J

    return-wide v0
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, LBg/p;->c:J

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, LBg/p;->f:I

    return-void
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, LBg/p;->e:J

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, LBg/p;->b:I

    return-void
.end method

.method public l(J)V
    .locals 0

    iput-wide p1, p0, LBg/p;->d:J

    return-void
.end method
