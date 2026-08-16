.class public final Lcom/android/tools/r8/internal/Qz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/Qz;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Qz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Qz;

    iget v1, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    iget v3, p1, Lcom/android/tools/r8/internal/Qz;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Qz;->e:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/Qz;->e:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Qz;->e:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Qz;->e:Z

    if-eqz v4, :cond_0

    const-string v4, " itf"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
