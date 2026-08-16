.class public final Lcom/android/tools/r8/internal/K8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/r;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Q5;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Q5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/K8;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 2

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->E()Lcom/android/tools/r8/internal/K8;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    iget-object v1, p1, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    if-eq v0, v1, :cond_2

    .line 5
    invoke-interface {v0, v1, p2}, Lcom/android/tools/r8/internal/ZC;->b(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I

    move-result p1

    .line 6
    sget-boolean p2, Lcom/android/tools/r8/internal/K8;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return p1

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Qx;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/xg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ZC;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/K8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/K8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    iget-object v3, p1, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/K8;->a:Lcom/android/tools/r8/internal/Q5;

    iget-object v1, p0, Lcom/android/tools/r8/internal/K8;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cast("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
