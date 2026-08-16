.class public Lcom/android/tools/r8/internal/XY;
.super Lcom/android/tools/r8/internal/H8;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;
.implements Lcom/android/tools/r8/internal/vM;


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vM;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XY;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XY;->d()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()Lcom/android/tools/r8/internal/vM;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->a()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    :cond_1
    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XY;->c()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    if-eq v0, p0, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/XY;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XY;->d()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/SQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SQ;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/XY;->c()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    if-eq v0, p0, :cond_0

    check-cast v0, Lcom/android/tools/r8/internal/XY;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XY;->e()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/SQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/SQ;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/XY;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/tools/r8/internal/XY;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/G8;->b:Lcom/android/tools/r8/internal/G8;

    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->a()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    :cond_4
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/XY;->g:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->a()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    :cond_1
    :goto_0
    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
