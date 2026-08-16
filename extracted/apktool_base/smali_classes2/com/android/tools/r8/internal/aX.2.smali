.class public final Lcom/android/tools/r8/internal/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Q5;
.implements Lcom/android/tools/r8/internal/Vf;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H0;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iput p2, p0, Lcom/android/tools/r8/internal/aX;->b:I

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/aX;->c:Z

    return-void
.end method


# virtual methods
.method public final C()Lcom/android/tools/r8/internal/aX;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 1

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->C()Lcom/android/tools/r8/internal/aX;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v0, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget p2, p0, Lcom/android/tools/r8/internal/aX;->b:I

    iget v0, p1, Lcom/android/tools/r8/internal/aX;->b:I

    sub-int/2addr p2, v0

    :cond_0
    if-nez p2, :cond_1

    .line 7
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/aX;->c:Z

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p2

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/aX;->c:Z

    .line 9
    invoke-static {p1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    sub-int/2addr p2, p1

    :cond_1
    return p2
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/N41;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/N41;-><init>(Lcom/android/tools/r8/internal/aX;)V

    invoke-interface {p2, p0, v0}, Lcom/android/tools/r8/internal/Qx;->a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Zs0;

    return-object p1
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

    const-class v3, Lcom/android/tools/r8/internal/aX;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/aX;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/tools/r8/internal/aX;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/aX;->b:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final h()Lcom/android/tools/r8/internal/Iw0;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p0, Lcom/android/tools/r8/internal/aX;->b:I

    iget-boolean v2, p0, Lcom/android/tools/r8/internal/aX;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p0, Lcom/android/tools/r8/internal/aX;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/aX;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p0, Lcom/android/tools/r8/internal/aX;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MethodParameter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/internal/Q5;
    .locals 0

    return-object p0
.end method
