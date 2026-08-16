.class public LBg/i;
.super LBg/q;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:I

.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LBg/q;-><init>()V

    return-void
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, LBg/i;->d:[B

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LBg/i;->b:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LBg/i;->c:I

    return v0
.end method

.method public f([B)V
    .locals 0

    iput-object p1, p0, LBg/i;->d:[B

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, LBg/i;->b:J

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, LBg/i;->c:I

    return-void
.end method
