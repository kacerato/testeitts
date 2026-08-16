.class public final Lcom/android/tools/r8/internal/hI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/hI;

.field public d:Lcom/android/tools/r8/internal/hI;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/hI;->b:I

    const/high16 p1, -0x40000000    # -2.0f

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/hI;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    return-void

    .line 5
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    return-void
.end method

.method public final a()Z
    .locals 2

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/hI;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    .line 6
    iget v1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/hI;)V
    .locals 2

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    return-void
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    return-void

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final clone()Lcom/android/tools/r8/internal/hI;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/hI;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/hI;->b:I

    iput v1, v0, Lcom/android/tools/r8/internal/hI;->b:I

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    iput v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    return-object v0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hI;->clone()Lcom/android/tools/r8/internal/hI;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/hI;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/hI;->c:Lcom/android/tools/r8/internal/hI;

    iget v1, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    iget v1, v0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/hI;->d:Lcom/android/tools/r8/internal/hI;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/hI;->e:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/tools/r8/internal/hI;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/hI;

    iget v0, p0, Lcom/android/tools/r8/internal/hI;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/hI;->b:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hI;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/hI;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
