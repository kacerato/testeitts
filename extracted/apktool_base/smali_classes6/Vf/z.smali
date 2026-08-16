.class public final LVf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnf/F0;",
        ">;",
        "LNf/a;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field public final b:J

.field public c:Z

.field public final d:J

.field public e:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p3, p0, LVf/z;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 4
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, LVf/z;->c:Z

    .line 5
    invoke-static {p5, p6}, Lnf/F0;->i(J)J

    move-result-wide p5

    iput-wide p5, p0, LVf/z;->d:J

    .line 6
    iget-boolean p5, p0, LVf/z;->c:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, p3

    :goto_2
    iput-wide p1, p0, LVf/z;->e:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, LVf/z;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, LVf/z;->e:J

    iget-wide v2, p0, LVf/z;->b:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, LVf/z;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, LVf/z;->c:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-wide v2, p0, LVf/z;->d:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lnf/F0;->i(J)J

    move-result-wide v2

    iput-wide v2, p0, LVf/z;->e:J

    :goto_0
    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, LVf/z;->c:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LVf/z;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnf/F0;->b(J)Lnf/F0;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
