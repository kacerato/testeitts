.class public Lo6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo6/b;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(Lo6/b;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frameData",
            "heapUsedBytes",
            "previousFrameUsedMemory"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo6/c;->a:Lo6/b;

    invoke-virtual {p1}, Lo6/b;->g()I

    move-result v0

    iput v0, p0, Lo6/c;->c:I

    invoke-virtual {p1}, Lo6/b;->i()I

    move-result v0

    iput v0, p0, Lo6/c;->d:I

    invoke-virtual {p1}, Lo6/b;->e()D

    move-result-wide v0

    iput-wide v0, p0, Lo6/c;->e:D

    invoke-virtual {p1}, Lo6/b;->c()D

    move-result-wide v2

    iput-wide v2, p0, Lo6/c;->f:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lo6/c;->g:D

    cmp-long p1, p4, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lo6/c;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lo6/b;
    .locals 1

    iget-object v0, p0, Lo6/c;->a:Lo6/b;

    return-object v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lo6/c;->f:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lo6/c;->e:D

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lo6/c;->c:I

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lo6/c;->g:D

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lo6/c;->d:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lo6/c;->b:Z

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lo6/c;->a:Lo6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo6/b;->m()V

    :cond_0
    return-void
.end method
