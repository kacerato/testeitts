.class public final Lcom/android/tools/r8/internal/LO;
.super Lcom/android/tools/r8/internal/FO;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/UM;

.field public final c:Lcom/android/tools/r8/internal/OO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/UM;Lcom/android/tools/r8/internal/OO;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/FO;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/LO;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/LO;
    .locals 0

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/LO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/LO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    iget-object v3, p1, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/MM;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    iget-object p1, p1, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/LO;->b:Lcom/android/tools/r8/internal/UM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LO;->c:Lcom/android/tools/r8/internal/OO;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeepMemberItemPattern{ class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", members="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
