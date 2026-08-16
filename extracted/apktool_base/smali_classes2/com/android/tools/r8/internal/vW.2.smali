.class public final Lcom/android/tools/r8/internal/vW;
.super Lcom/android/tools/r8/internal/wW;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/tools/r8/internal/wW;-><init>(Ljava/util/List;Ljava/util/HashSet;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/vW;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vW;->c:[B

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/uW;Lcom/android/tools/r8/internal/uW;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/uW;)Lcom/android/tools/r8/internal/wW;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/vW;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/tools/r8/internal/uW;->b:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/jw1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/jw1;-><init>(Lcom/android/tools/r8/internal/vW;Lcom/android/tools/r8/internal/uW;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/wW;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/uW;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wW;
    .locals 1

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/vW;->c:[B

    new-instance v0, Lcom/android/tools/r8/internal/kw1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kw1;-><init>(Lcom/android/tools/r8/internal/uW;)V

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/wW;->a([BLjava/util/function/Predicate;)Lcom/android/tools/r8/internal/wW;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/uW;->e:Lcom/android/tools/r8/internal/uW;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vW;->a(Lcom/android/tools/r8/internal/uW;)Lcom/android/tools/r8/internal/wW;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wW;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/uW;->d:Lcom/android/tools/r8/internal/uW;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vW;->a(Lcom/android/tools/r8/internal/uW;)Lcom/android/tools/r8/internal/wW;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wW;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/uW;->e:Lcom/android/tools/r8/internal/uW;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vW;->a(Lcom/android/tools/r8/internal/uW;)Lcom/android/tools/r8/internal/wW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wW;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/uW;->d:Lcom/android/tools/r8/internal/uW;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/vW;->a(Lcom/android/tools/r8/internal/uW;)Lcom/android/tools/r8/internal/wW;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wW;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
