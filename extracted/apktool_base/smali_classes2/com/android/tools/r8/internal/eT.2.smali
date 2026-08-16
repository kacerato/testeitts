.class public Lcom/android/tools/r8/internal/eT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/android/tools/r8/internal/dT;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/tools/r8/internal/dT;",
        ">;",
        "Lcom/android/tools/r8/internal/dT;"
    }
.end annotation


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/W7;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/W7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->f:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/eT;->f:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/WS;)I
    .locals 1

    .line 3
    iget p1, p1, Lcom/android/tools/r8/internal/WS;->i:I

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/eT;->e:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(Lcom/android/tools/r8/internal/cT;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/cT;->a(Lcom/android/tools/r8/internal/dT;)V

    return-void
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->g()I

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/eT;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    const/16 v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    sget-boolean v2, Lcom/android/tools/r8/internal/o8;->a:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long v1, v2, v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/eT;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/eT;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->t()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    sub-int/2addr v0, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    iget v2, v1, Lcom/android/tools/r8/internal/W7;->d:I

    add-int v3, v2, v0

    iget v4, v1, Lcom/android/tools/r8/internal/W7;->b:I

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sub-int v0, v4, v2

    :goto_0
    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/tools/r8/internal/W7;->d:I

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->g()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->p()Lcom/android/tools/r8/internal/dT;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->g()I

    move-result v0

    return v0
.end method

.method public p()Lcom/android/tools/r8/internal/dT;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    sub-int/2addr v0, v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    iget v2, v1, Lcom/android/tools/r8/internal/W7;->d:I

    add-int v3, v2, v0

    iget v4, v1, Lcom/android/tools/r8/internal/W7;->b:I

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sub-int v0, v4, v2

    :goto_0
    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/tools/r8/internal/W7;->d:I

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/eT;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->e:I

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->f:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/kT;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->d:I

    return-object p0

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eT;->t()I

    move-result v0

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/eT;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/eT;->d:I

    return-object p0
.end method

.method public final t()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/tools/r8/internal/eT;->c:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eT;->b:Lcom/android/tools/r8/internal/W7;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W7;->a()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method
