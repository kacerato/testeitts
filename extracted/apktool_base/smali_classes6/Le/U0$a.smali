.class public abstract LLe/U0$a;
.super LUe/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/U0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LUe/d<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:J = -0x1f442a7d211232e5L


# instance fields
.field public final c:I

.field public d:I

.field public volatile e:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, LUe/d;-><init>()V

    iput p1, p0, LLe/U0$a;->d:I

    iput p2, p0, LLe/U0$a;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Ljava/lang/Integer;
    .locals 2
    .annotation build LCe/g;
    .end annotation

    iget v0, p0, LLe/U0$a;->d:I

    iget v1, p0, LLe/U0$a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LLe/U0$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(J)V
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LLe/U0$a;->e:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, LLe/U0$a;->c:I

    iput v0, p0, LLe/U0$a;->d:I

    return-void
.end method

.method public final i(J)V
    .locals 4

    invoke-static {p1, p2}, LUe/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LLe/U0$a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, LLe/U0$a;->c(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    iget v0, p0, LLe/U0$a;->d:I

    iget v1, p0, LLe/U0$a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation build LCe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, LLe/U0$a;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
