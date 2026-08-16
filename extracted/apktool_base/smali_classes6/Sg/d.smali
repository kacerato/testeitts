.class public final LSg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSg/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Random;

.field public final c:LTg/d;

.field public final d:LTg/c;

.field public e:Z

.field public final f:LTg/c;

.field public final g:LSg/d$a;

.field public h:Z

.field public final i:[B

.field public final j:LTg/c$c;


# direct methods
.method public constructor <init>(ZLTg/d;Ljava/util/Random;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    iput-object v0, p0, LSg/d;->f:LTg/c;

    new-instance v0, LSg/d$a;

    invoke-direct {v0, p0}, LSg/d$a;-><init>(LSg/d;)V

    iput-object v0, p0, LSg/d;->g:LSg/d$a;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iput-boolean p1, p0, LSg/d;->a:Z

    iput-object p2, p0, LSg/d;->c:LTg/d;

    invoke-interface {p2}, LTg/d;->C()LTg/c;

    move-result-object p2

    iput-object p2, p0, LSg/d;->d:LTg/c;

    iput-object p3, p0, LSg/d;->b:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, LSg/d;->i:[B

    if-eqz p1, :cond_1

    new-instance p2, LTg/c$c;

    invoke-direct {p2}, LTg/c$c;-><init>()V

    :cond_1
    iput-object p2, p0, LSg/d;->j:LTg/c$c;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(IJ)LTg/x;
    .locals 2

    iget-boolean v0, p0, LSg/d;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LSg/d;->h:Z

    iget-object v1, p0, LSg/d;->g:LSg/d$a;

    iput p1, v1, LSg/d$a;->b:I

    iput-wide p2, v1, LSg/d$a;->c:J

    iput-boolean v0, v1, LSg/d$a;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, v1, LSg/d$a;->e:Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(ILTg/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LTg/f;->g:LTg/f;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, LSg/b;->d(I)V

    :cond_1
    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    invoke-virtual {v0, p1}, LTg/c;->m0(I)LTg/c;

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, LTg/c;->Y(LTg/f;)LTg/c;

    :cond_2
    invoke-virtual {v0}, LTg/c;->C1()LTg/f;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, LSg/d;->c(ILTg/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, LSg/d;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, LSg/d;->e:Z

    throw p1
.end method

.method public final c(ILTg/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/d;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, LTg/f;->S()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {v1, p1}, LTg/c;->d0(I)LTg/c;

    iget-boolean p1, p0, LSg/d;->a:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {v1, p1}, LTg/c;->d0(I)LTg/c;

    iget-object p1, p0, LSg/d;->b:Ljava/util/Random;

    iget-object v1, p0, LSg/d;->i:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object v1, p0, LSg/d;->i:[B

    invoke-virtual {p1, v1}, LTg/c;->Z([B)LTg/c;

    if-lez v0, :cond_1

    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1}, LTg/c;->Q()J

    move-result-wide v0

    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1, p2}, LTg/c;->Y(LTg/f;)LTg/c;

    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object p2, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1, p2}, LTg/c;->t(LTg/c$c;)LTg/c$c;

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1, v0, v1}, LTg/c$c;->e(J)I

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    iget-object p2, p0, LSg/d;->i:[B

    invoke-static {p1, p2}, LSg/b;->c(LTg/c$c;[B)V

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1}, LTg/c$c;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1, v0}, LTg/c;->d0(I)LTg/c;

    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1, p2}, LTg/c;->Y(LTg/f;)LTg/c;

    :cond_1
    :goto_0
    iget-object p1, p0, LSg/d;->c:LTg/d;

    invoke-interface {p1}, LTg/d;->flush()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(IJZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/d;->e:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    :cond_1
    iget-object p4, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p4, p1}, LTg/c;->d0(I)LTg/c;

    iget-boolean p1, p0, LSg/d;->a:Z

    if-eqz p1, :cond_2

    const/16 v0, 0x80

    :cond_2
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3

    long-to-int p1, p2

    or-int/2addr p1, v0

    iget-object p4, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p4, p1}, LTg/c;->d0(I)LTg/c;

    goto :goto_1

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_4

    or-int/lit8 p1, v0, 0x7e

    iget-object p4, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p4, p1}, LTg/c;->d0(I)LTg/c;

    iget-object p1, p0, LSg/d;->d:LTg/c;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, LTg/c;->m0(I)LTg/c;

    goto :goto_1

    :cond_4
    or-int/lit8 p1, v0, 0x7f

    iget-object p4, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p4, p1}, LTg/c;->d0(I)LTg/c;

    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1, p2, p3}, LTg/c;->j0(J)LTg/c;

    :goto_1
    iget-boolean p1, p0, LSg/d;->a:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, LSg/d;->b:Ljava/util/Random;

    iget-object p4, p0, LSg/d;->i:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object p4, p0, LSg/d;->i:[B

    invoke-virtual {p1, p4}, LTg/c;->Z([B)LTg/c;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_6

    iget-object p1, p0, LSg/d;->d:LTg/c;

    invoke-virtual {p1}, LTg/c;->Q()J

    move-result-wide p4

    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object v0, p0, LSg/d;->f:LTg/c;

    invoke-virtual {p1, v0, p2, p3}, LTg/c;->h0(LTg/c;J)V

    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object p2, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1, p2}, LTg/c;->t(LTg/c$c;)LTg/c$c;

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1, p4, p5}, LTg/c$c;->e(J)I

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    iget-object p2, p0, LSg/d;->i:[B

    invoke-static {p1, p2}, LSg/b;->c(LTg/c$c;[B)V

    iget-object p1, p0, LSg/d;->j:LTg/c$c;

    invoke-virtual {p1}, LTg/c$c;->close()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, LSg/d;->d:LTg/c;

    iget-object p4, p0, LSg/d;->f:LTg/c;

    invoke-virtual {p1, p4, p2, p3}, LTg/c;->h0(LTg/c;J)V

    :cond_6
    :goto_2
    iget-object p1, p0, LSg/d;->c:LTg/d;

    invoke-interface {p1}, LTg/d;->T()LTg/d;

    return-void

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(LTg/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, LSg/d;->c(ILTg/f;)V

    return-void
.end method

.method public f(LTg/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, LSg/d;->c(ILTg/f;)V

    return-void
.end method
