.class public final Lcom/android/tools/r8/internal/Y60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/V60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/V60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Y60;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/Y60;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/V60;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y60;->b:Lcom/android/tools/r8/internal/V60;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
