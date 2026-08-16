.class public final LSg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:I

.field public c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:LSg/d;


# direct methods
.method public constructor <init>(LSg/d;)V
    .locals 0

    iput-object p1, p0, LSg/d$a;->f:LSg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LSg/d$a;->f:LSg/d;

    iget-object v0, v0, LSg/d;->c:LTg/d;

    invoke-interface {v0}, LTg/x;->a0()LTg/z;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/d$a;->e:Z

    if-nez v0, :cond_0

    iget-object v1, p0, LSg/d$a;->f:LSg/d;

    iget v2, p0, LSg/d$a;->b:I

    iget-object v0, v1, LSg/d;->f:LTg/c;

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v3

    iget-boolean v5, p0, LSg/d$a;->d:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, LSg/d;->d(IJZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LSg/d$a;->e:Z

    iget-object v0, p0, LSg/d$a;->f:LSg/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, LSg/d;->h:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/d$a;->e:Z

    if-nez v0, :cond_0

    iget-object v1, p0, LSg/d$a;->f:LSg/d;

    iget v2, p0, LSg/d$a;->b:I

    iget-object v0, v1, LSg/d;->f:LTg/c;

    invoke-virtual {v0}, LTg/c;->Q()J

    move-result-wide v3

    iget-boolean v5, p0, LSg/d$a;->d:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, LSg/d;->d(IJZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LSg/d$a;->d:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0(LTg/c;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/d$a;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LSg/d$a;->f:LSg/d;

    iget-object v0, v0, LSg/d;->f:LTg/c;

    invoke-virtual {v0, p1, p2, p3}, LTg/c;->h0(LTg/c;J)V

    iget-boolean p1, p0, LSg/d$a;->d:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, LSg/d$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, LSg/d$a;->f:LSg/d;

    iget-object p1, p1, LSg/d;->f:LTg/c;

    invoke-virtual {p1}, LTg/c;->Q()J

    move-result-wide v0

    iget-wide v2, p0, LSg/d$a;->c:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object p3, p0, LSg/d$a;->f:LSg/d;

    iget-object p3, p3, LSg/d;->f:LTg/c;

    invoke-virtual {p3}, LTg/c;->e()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p3, v2, v0

    if-lez p3, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, LSg/d$a;->f:LSg/d;

    iget v1, p0, LSg/d$a;->b:I

    iget-boolean v4, p0, LSg/d$a;->d:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, LSg/d;->d(IJZZ)V

    iput-boolean p2, p0, LSg/d$a;->d:Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
