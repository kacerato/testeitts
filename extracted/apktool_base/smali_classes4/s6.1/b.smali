.class public Ls6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls6/a;

.field public final b:Z

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I


# direct methods
.method public constructor <init>(Ls6/a;JJ)V
    .locals 0
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

    iput-object p1, p0, Ls6/b;->a:Ls6/a;

    invoke-virtual {p1}, Ls6/a;->d()I

    move-result p1

    iput p1, p0, Ls6/b;->f:I

    cmp-long p1, p4, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls6/b;->b:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ls6/b;->b:Z

    :goto_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->k(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Ls6/b;->c:F

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->j(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Ls6/b;->e:F

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Llb/c;->i(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Ls6/b;->d:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Ls6/b;->c:F

    return v0
.end method

.method public b()Ls6/a;
    .locals 1

    iget-object v0, p0, Ls6/b;->a:Ls6/a;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Ls6/b;->e:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Ls6/b;->d:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ls6/b;->f:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Ls6/b;->b:Z

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Ls6/b;->a:Ls6/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls6/a;->e()V

    :cond_0
    return-void
.end method
