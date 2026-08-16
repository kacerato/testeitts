.class public LBg/g;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LBg/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LBg/g;->i:Ljava/lang/String;

    sget-object v0, Lyg/c;->END_OF_CENTRAL_DIRECTORY:Lyg/c;

    invoke-virtual {p0, v0}, LBg/q;->b(Lyg/c;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LBg/g;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LBg/g;->c:I

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, LBg/g;->h:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LBg/g;->g:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LBg/g;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LBg/g;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LBg/g;->d:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, LBg/g;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, LBg/g;->b:I

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, LBg/g;->c:I

    return-void
.end method

.method public n(J)V
    .locals 0

    iput-wide p1, p0, LBg/g;->h:J

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, LBg/g;->g:J

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, LBg/g;->f:I

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, LBg/g;->e:I

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, LBg/g;->d:I

    return-void
.end method
