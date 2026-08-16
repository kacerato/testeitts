.class public final Lcom/android/tools/r8/internal/je;
.super Lcom/android/tools/r8/internal/jd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/tools/r8/internal/jd;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Ud;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ud;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/jd;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Ud;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/I0;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Classpath type already present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/E0;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/I0;

    check-cast p2, Lcom/android/tools/r8/graph/I0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/je;->a(Lcom/android/tools/r8/graph/I0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/I0;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->d:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/jd;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classpath classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
