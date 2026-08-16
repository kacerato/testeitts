.class public abstract Lcom/android/tools/r8/dex/c0;
.super Lcom/android/tools/r8/dex/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/e0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/tools/r8/dex/d0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(C)Z
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a(II)Z
    .locals 5

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v0

    const/16 v1, 0x2f

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/dex/e0;->c(II)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/c0;->b()C

    move-result v2

    if-eq v2, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/c0;->b()C

    move-result v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    iget-object v2, v2, Lcom/android/tools/r8/dex/f0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/f0;->d:Lcom/android/tools/r8/naming/r0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/naming/r0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->d:I

    if-ge v0, p1, :cond_3

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/c0;->b()C

    move-result p1

    if-eq p1, v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/c0;->b()C

    move-result p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iput p2, p0, Lcom/android/tools/r8/dex/e0;->d:I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/tools/r8/dex/e0;->c:Z

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public b()C
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method
