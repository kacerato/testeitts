.class public final Ltd/c;
.super Ltd/b;
.source "SourceFile"


# instance fields
.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field public volatile g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ltd/b;-><init>()V

    const-wide/16 v0, 0x7

    .line 2
    iput-wide v0, p0, Ltd/c;->g:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ltd/b;-><init>(J)V

    const-wide/16 p1, 0x7

    .line 4
    iput-wide p1, p0, Ltd/c;->g:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 4

    iget-wide v0, p0, Ltd/c;->b:J

    iget-wide v2, p0, Ltd/c;->c:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltd/c;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltd/c;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltd/c;->f:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ltd/c;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method
