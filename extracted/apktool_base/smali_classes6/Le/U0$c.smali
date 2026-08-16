.class public final LLe/U0$c;
.super LLe/U0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final h:J = 0x23e7f25903d0c345L


# instance fields
.field public final g:Lhn/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, LLe/U0$a;-><init>(II)V

    iput-object p1, p0, LLe/U0$c;->g:Lhn/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, LLe/U0$a;->c:I

    iget-object v1, p0, LLe/U0$c;->g:Lhn/c;

    iget v2, p0, LLe/U0$a;->d:I

    :goto_0
    if-eq v2, v0, :cond_1

    iget-boolean v3, p0, LLe/U0$a;->e:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lhn/c;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, LLe/U0$a;->e:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Lhn/c;->a()V

    return-void
.end method

.method public c(J)V
    .locals 9

    iget v0, p0, LLe/U0$a;->c:I

    iget v1, p0, LLe/U0$a;->d:I

    iget-object v2, p0, LLe/U0$c;->g:Lhn/c;

    const-wide/16 v3, 0x0

    :cond_0
    move-wide v5, v3

    :cond_1
    :goto_0
    cmp-long v7, v5, p1

    if-eqz v7, :cond_3

    if-eq v1, v0, :cond_3

    iget-boolean v7, p0, LLe/U0$a;->e:Z

    if-eqz v7, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Lhn/c;->h(Ljava/lang/Object;)V

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    iget-boolean p1, p0, LLe/U0$a;->e:Z

    if-nez p1, :cond_4

    invoke-interface {v2}, Lhn/c;->a()V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    iput v1, p0, LLe/U0$a;->d:I

    neg-long p1, v5

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    return-void
.end method
