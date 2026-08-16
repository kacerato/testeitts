.class public final Lcom/android/tools/r8/shaking/n4;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/shaking/n4;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/n4;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/n4;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/graph/s8;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/s8;-><init>()V

    sget-object v2, Lcom/android/tools/r8/internal/zq0$a;->d:Lcom/android/tools/r8/internal/zq0$a;

    const-string v3, ", "

    invoke-static {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Ljava/util/function/Function;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
