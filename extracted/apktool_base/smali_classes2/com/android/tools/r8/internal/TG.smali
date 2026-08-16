.class public Lcom/android/tools/r8/internal/TG;
.super Lcom/android/tools/r8/internal/Q;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/SG;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/android/tools/r8/internal/I30;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/L30;->a:Lcom/android/tools/r8/internal/J30;

    return-object v0
.end method

.method public final clear()V
    .locals 0

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/UG;->a:Lcom/android/tools/r8/internal/TG;

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Lcom/android/tools/r8/internal/I30;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TG;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TG;->e()Lcom/android/tools/r8/internal/I30;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Lcom/android/tools/r8/internal/nI;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/pI;->a:Lcom/android/tools/r8/internal/oI;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public final values()Lcom/android/tools/r8/internal/Od0;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Xd0;->a:Lcom/android/tools/r8/internal/Vd0;

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Xd0;->a:Lcom/android/tools/r8/internal/Vd0;

    return-object v0
.end method
