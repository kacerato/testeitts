.class public LIg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIg/a;->b(LIg/b;Lokhttp3/E;)Lokhttp3/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:LTg/e;

.field public final synthetic d:LIg/b;

.field public final synthetic e:LTg/d;

.field public final synthetic f:LIg/a;


# direct methods
.method public constructor <init>(LIg/a;LTg/e;LIg/b;LTg/d;)V
    .locals 0

    iput-object p1, p0, LIg/a$a;->f:LIg/a;

    iput-object p2, p0, LIg/a$a;->c:LTg/e;

    iput-object p3, p0, LIg/a$a;->d:LIg/b;

    iput-object p4, p0, LIg/a$a;->e:LTg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(LTg/c;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, LIg/a$a;->c:LTg/e;

    invoke-interface {v1, p1, p2, p3}, LTg/y;->K(LTg/c;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    iget-boolean p1, p0, LIg/a$a;->b:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, LIg/a$a;->b:Z

    iget-object p1, p0, LIg/a$a;->e:LTg/d;

    invoke-interface {p1}, LTg/x;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, LIg/a$a;->e:LTg/d;

    invoke-interface {v0}, LTg/d;->C()LTg/c;

    move-result-object v3

    invoke-virtual {p1}, LTg/c;->Q()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, LTg/c;->f(LTg/c;JJ)LTg/c;

    iget-object p1, p0, LIg/a$a;->e:LTg/d;

    invoke-interface {p1}, LTg/d;->W()LTg/d;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, LIg/a$a;->b:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, LIg/a$a;->b:Z

    iget-object p2, p0, LIg/a$a;->d:LIg/b;

    invoke-interface {p2}, LIg/b;->a()V

    :cond_2
    throw p1
.end method

.method public a0()LTg/z;
    .locals 1

    iget-object v0, p0, LIg/a$a;->c:LTg/e;

    invoke-interface {v0}, LTg/y;->a0()LTg/z;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LIg/a$a;->b:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, LGg/c;->q(LTg/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LIg/a$a;->b:Z

    iget-object v0, p0, LIg/a$a;->d:LIg/b;

    invoke-interface {v0}, LIg/b;->a()V

    :cond_0
    iget-object v0, p0, LIg/a$a;->c:LTg/e;

    invoke-interface {v0}, LTg/y;->close()V

    return-void
.end method
