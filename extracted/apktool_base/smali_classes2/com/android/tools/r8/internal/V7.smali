.class public final Lcom/android/tools/r8/internal/V7;
.super Lcom/android/tools/r8/internal/D40;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/mV;

.field public final c:Lcom/android/tools/r8/internal/D40;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/mV;Lcom/android/tools/r8/internal/D40;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    iput-object p2, p0, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/V7;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/V7;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    iget-object v3, p1, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/Jy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    iget-object p1, p1, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->c:Lcom/android/tools/r8/internal/D40;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V7;->b:Lcom/android/tools/r8/internal/mV;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
