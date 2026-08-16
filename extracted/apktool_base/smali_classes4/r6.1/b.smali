.class public Lr6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr6/a;

.field public final b:J

.field public final c:Z

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:I


# direct methods
.method public constructor <init>(Lr6/a;JJ)V
    .locals 2
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

    iput-object p1, p0, Lr6/b;->a:Lr6/a;

    invoke-virtual {p1}, Lr6/a;->g()J

    move-result-wide v0

    sub-long v0, p2, v0

    iput-wide v0, p0, Lr6/b;->b:J

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->getConcreteCount()I

    move-result v0

    iput v0, p0, Lr6/b;->g:I

    invoke-virtual {p1}, Lr6/a;->g()J

    move-result-wide v0

    sub-long/2addr p4, v0

    cmp-long p1, p4, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr6/b;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lr6/b;->c:Z

    :goto_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->k(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lr6/b;->d:F

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->j(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lr6/b;->f:F

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->i(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lr6/b;->e:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lr6/b;->d:F

    return v0
.end method

.method public b()Lr6/a;
    .locals 1

    iget-object v0, p0, Lr6/b;->a:Lr6/a;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lr6/b;->b:J

    return-wide v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lr6/b;->f:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lr6/b;->e:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lr6/b;->g:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lr6/b;->c:Z

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lr6/b;->a:Lr6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr6/a;->i()V

    :cond_0
    return-void
.end method
