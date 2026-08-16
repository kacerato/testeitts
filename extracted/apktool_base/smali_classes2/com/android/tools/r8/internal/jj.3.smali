.class public final Lcom/android/tools/r8/internal/jj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/DG;

.field public b:Lcom/android/tools/r8/internal/mj;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DG;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    sget-object v0, Lcom/android/tools/r8/internal/mj;->e:Lcom/android/tools/r8/internal/mj;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jj;->b:Lcom/android/tools/r8/internal/mj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->c:I

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/jj;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/jj;->b:Lcom/android/tools/r8/internal/mj;

    iget v2, v1, Lcom/android/tools/r8/internal/mj;->a:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/jj;->b:Lcom/android/tools/r8/internal/mj;

    iget v0, v0, Lcom/android/tools/r8/internal/mj;->a:I

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->c:I

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/jj;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/jj;->d:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mj;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/mj;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    iget v1, p0, Lcom/android/tools/r8/internal/jj;->c:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DG;->remove(I)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/mj;

    iget v1, p0, Lcom/android/tools/r8/internal/jj;->d:I

    iget v3, p0, Lcom/android/tools/r8/internal/jj;->f:I

    iget v4, p0, Lcom/android/tools/r8/internal/jj;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/mj;-><init>(IZII)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/jj;->a:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v3, v1, v0}, Lcom/android/tools/r8/internal/DG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/jj;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/jj;->c:I

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/mj;->e:Lcom/android/tools/r8/internal/mj;

    iput-object v0, p0, Lcom/android/tools/r8/internal/jj;->b:Lcom/android/tools/r8/internal/mj;

    iput v2, p0, Lcom/android/tools/r8/internal/jj;->d:I

    iput v2, p0, Lcom/android/tools/r8/internal/jj;->e:I

    iput v2, p0, Lcom/android/tools/r8/internal/jj;->f:I

    return-void
.end method
