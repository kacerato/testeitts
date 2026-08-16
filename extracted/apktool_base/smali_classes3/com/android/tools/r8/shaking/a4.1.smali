.class public Lcom/android/tools/r8/shaking/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/a4$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Y10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/shaking/a4$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/a4$a;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/a4$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W0;

    .line 7
    iget-object v3, v1, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    .line 8
    check-cast v3, Lcom/android/tools/r8/shaking/Z3;

    .line 9
    iget-object v3, v3, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    .line 10
    invoke-static {v2, v2, v3, p1}, Lcom/android/tools/r8/shaking/Z3;->a(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-boolean p1, v1, Lcom/android/tools/r8/internal/W0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/a4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/a4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    iget v3, v1, Lcom/android/tools/r8/internal/Y10;->d:I

    iget-object v4, p1, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    iget v4, v4, Lcom/android/tools/r8/internal/Y10;->d:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    new-instance v1, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    iget-object p1, p1, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    new-instance v3, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    new-instance p1, Lcom/android/tools/r8/internal/W10;

    invoke-direct {p1, v3}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W0;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/W0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/a4;->a:Lcom/android/tools/r8/internal/Y10;

    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    new-instance v0, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W0;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/W0;->c:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    :goto_1
    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xd

    iget-object v2, v2, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    check-cast v2, Lcom/android/tools/r8/shaking/Z3;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/Z3;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method
