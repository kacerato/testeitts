.class public final Lcom/android/tools/r8/internal/Jj;
.super Lcom/android/tools/r8/internal/F00;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F00;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Jj;->d:Z

    if-nez v0, :cond_1

    and-int v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    const-wide/32 v0, -0x80000000

    return-wide v0
.end method

.method public final H()Lcom/android/tools/r8/internal/Jj;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    return v0
.end method

.method public final S()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    return v0
.end method

.method public final a([I)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a(I)Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    not-int v1, p1

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Bh;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    return-object p0
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/tools/r8/internal/Jj;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Jj;

    iget v2, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    iget v3, p1, Lcom/android/tools/r8/internal/Jj;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    iget p1, p1, Lcom/android/tools/r8/internal/Jj;->c:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    add-int/lit8 v1, v0, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    add-int/2addr v1, v2

    sget-boolean v2, Lcom/android/tools/r8/internal/Jj;->d:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/Jj;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/Jj;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefiniteBitsNumberValue(set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; unset: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
