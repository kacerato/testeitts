.class public final Lcom/android/tools/r8/internal/TR;
.super Lcom/android/tools/r8/internal/jd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ud;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/jd;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Ud;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/u2;

    check-cast p2, Lcom/android/tools/r8/graph/u2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/u2;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->e:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/jd;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
