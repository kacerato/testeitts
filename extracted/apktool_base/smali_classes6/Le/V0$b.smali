.class public final LLe/V0$b;
.super LLe/V0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/V0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final h:J = 0x23e7f25903d0c345L


# instance fields
.field public final g:LIe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIe/a<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LIe/a;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIe/a<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, LLe/V0$a;-><init>(JJ)V

    iput-object p1, p0, LLe/V0$b;->g:LIe/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-wide v0, p0, LLe/V0$a;->c:J

    iget-object v2, p0, LLe/V0$b;->g:LIe/a;

    iget-wide v3, p0, LLe/V0$a;->d:J

    :goto_0
    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    iget-boolean v5, p0, LLe/V0$a;->e:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, LIe/a;->u(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, LLe/V0$a;->e:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v2}, Lhn/c;->a()V

    return-void
.end method

.method public c(J)V
    .locals 12

    iget-wide v0, p0, LLe/V0$a;->c:J

    iget-wide v2, p0, LLe/V0$a;->d:J

    iget-object v4, p0, LLe/V0$b;->g:LIe/a;

    const-wide/16 v5, 0x0

    :cond_0
    move-wide v7, v5

    :cond_1
    :goto_0
    cmp-long v9, v7, p1

    if-eqz v9, :cond_4

    cmp-long v9, v2, v0

    if-eqz v9, :cond_4

    iget-boolean v9, p0, LLe/V0$a;->e:Z

    if-eqz v9, :cond_2

    return-void

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, LIe/a;->u(Ljava/lang/Object;)Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_3

    add-long/2addr v7, v10

    :cond_3
    add-long/2addr v2, v10

    goto :goto_0

    :cond_4
    cmp-long p1, v2, v0

    if-nez p1, :cond_6

    iget-boolean p1, p0, LLe/V0$a;->e:Z

    if-nez p1, :cond_5

    invoke-interface {v4}, Lhn/c;->a()V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v9, v7, p1

    if-nez v9, :cond_1

    iput-wide v2, p0, LLe/V0$a;->d:J

    neg-long p1, v7

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v7, p1, v5

    if-nez v7, :cond_0

    return-void
.end method
