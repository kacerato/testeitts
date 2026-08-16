.class public LNg/e$a;
.super LTg/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public c:Z

.field public d:J

.field public final synthetic e:LNg/e;


# direct methods
.method public constructor <init>(LNg/e;LTg/y;)V
    .locals 0

    iput-object p1, p0, LNg/e$a;->e:LNg/e;

    invoke-direct {p0, p2}, LTg/i;-><init>(LTg/y;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LNg/e$a;->c:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, LNg/e$a;->d:J

    return-void
.end method


# virtual methods
.method public K(LTg/c;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, LTg/i;->c()LTg/y;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    iget-wide v0, p0, LNg/e$a;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LNg/e$a;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-wide p1

    :goto_1
    invoke-virtual {p0, p1}, LNg/e$a;->d(Ljava/io/IOException;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, LTg/i;->close()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LNg/e$a;->d(Ljava/io/IOException;)V

    return-void
.end method

.method public final d(Ljava/io/IOException;)V
    .locals 7

    iget-boolean v0, p0, LNg/e$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LNg/e$a;->c:Z

    iget-object v3, p0, LNg/e$a;->e:LNg/e;

    iget-object v1, v3, LNg/e;->c:LKg/f;

    const/4 v2, 0x0

    iget-wide v4, p0, LNg/e$a;->d:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, LKg/f;->r(ZLLg/c;JLjava/io/IOException;)V

    return-void
.end method
