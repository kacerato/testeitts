.class public final Lcom/android/tools/r8/internal/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/gv;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/fv;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    iget-object v0, p0, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    iget-object v1, p1, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/gv;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/fv;->b:Lcom/android/tools/r8/internal/gv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
