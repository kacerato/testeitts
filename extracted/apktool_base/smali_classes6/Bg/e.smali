.class public LBg/e;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBg/q;-><init>()V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, LBg/e;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LBg/e;->b:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, LBg/e;->d:J

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, LBg/e;->c:J

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, LBg/e;->b:J

    return-void
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, LBg/e;->d:J

    return-void
.end method
