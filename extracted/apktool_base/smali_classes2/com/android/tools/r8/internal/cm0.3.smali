.class public final Lcom/android/tools/r8/internal/cm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/android/tools/r8/internal/th;

.field public final b:[Lcom/android/tools/r8/internal/av;

.field public final c:[Lcom/android/tools/r8/internal/av;

.field public final d:[Lcom/android/tools/r8/internal/o10;

.field public final e:[Lcom/android/tools/r8/internal/o10;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [Lcom/android/tools/r8/internal/th;

    new-instance v2, Lcom/android/tools/r8/internal/A71;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/A71;-><init>(Lcom/android/tools/r8/internal/cm0;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/th;

    iput-object v1, p0, Lcom/android/tools/r8/internal/cm0;->a:[Lcom/android/tools/r8/internal/th;

    new-array v1, v0, [Lcom/android/tools/r8/internal/av;

    new-instance v2, Lcom/android/tools/r8/internal/B71;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/B71;-><init>(Lcom/android/tools/r8/internal/cm0;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/av;

    iput-object v1, p0, Lcom/android/tools/r8/internal/cm0;->b:[Lcom/android/tools/r8/internal/av;

    new-array v1, v0, [Lcom/android/tools/r8/internal/av;

    new-instance v2, Lcom/android/tools/r8/internal/C71;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/C71;-><init>(Lcom/android/tools/r8/internal/cm0;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/av;

    iput-object v1, p0, Lcom/android/tools/r8/internal/cm0;->c:[Lcom/android/tools/r8/internal/av;

    new-array v1, v0, [Lcom/android/tools/r8/internal/o10;

    new-instance v2, Lcom/android/tools/r8/internal/D71;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/D71;-><init>(Lcom/android/tools/r8/internal/cm0;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/o10;

    iput-object v1, p0, Lcom/android/tools/r8/internal/cm0;->d:[Lcom/android/tools/r8/internal/o10;

    new-array v0, v0, [Lcom/android/tools/r8/internal/o10;

    new-instance v1, Lcom/android/tools/r8/internal/E71;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/E71;-><init>(Lcom/android/tools/r8/internal/cm0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/o10;

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->e:[Lcom/android/tools/r8/internal/o10;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/cm0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(I[Lcom/android/tools/r8/internal/Wl0;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Wl0;
    .locals 1

    .line 8
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 9
    aget-object p0, p1, p0

    return-object p0

    .line 10
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/H71;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/H71;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Wl0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Supplier;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/Wl0;
    .locals 0

    .line 11
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Wl0;

    return-object p0
.end method


# virtual methods
.method public final a(IZ)Lcom/android/tools/r8/internal/av;
    .locals 3

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cm0;->c:[Lcom/android/tools/r8/internal/av;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cm0;->b:[Lcom/android/tools/r8/internal/av;

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/cm0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/cm0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/F71;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/F71;-><init>(Lcom/android/tools/r8/internal/cm0;IZ)V

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/cm0;->a(I[Lcom/android/tools/r8/internal/Wl0;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Wl0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/av;

    return-object p1
.end method

.method public final a(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;
    .locals 3

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/cm0;->e:[Lcom/android/tools/r8/internal/o10;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cm0;->d:[Lcom/android/tools/r8/internal/o10;

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/cm0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/cm0;->i:Ljava/util/concurrent/ConcurrentHashMap;

    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/I71;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/I71;-><init>(Lcom/android/tools/r8/internal/cm0;ILcom/android/tools/r8/internal/p10;)V

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/cm0;->a(I[Lcom/android/tools/r8/internal/Wl0;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Wl0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/o10;

    return-object p1
.end method

.method public final a(I)Lcom/android/tools/r8/internal/th;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cm0;->a:[Lcom/android/tools/r8/internal/th;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cm0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/G71;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/G71;-><init>(Lcom/android/tools/r8/internal/cm0;I)V

    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/cm0;->a(I[Lcom/android/tools/r8/internal/Wl0;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Wl0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/th;

    return-object p1
.end method

.method public final b(IZ)Lcom/android/tools/r8/internal/av;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/av;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/av;-><init>(IZ)V

    return-object v0
.end method

.method public final b(ILcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/o10;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/o10;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/o10;-><init>(ILcom/android/tools/r8/internal/p10;)V

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/th;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/th;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/th;-><init>(I)V

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/internal/th;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/th;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/th;-><init>(I)V

    return-object v0
.end method

.method public final d(I)Lcom/android/tools/r8/internal/av;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/av;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/av;-><init>(IZ)V

    return-object v0
.end method

.method public final e(I)Lcom/android/tools/r8/internal/av;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/av;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/av;-><init>(IZ)V

    return-object v0
.end method

.method public final f(I)Lcom/android/tools/r8/internal/o10;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/o10;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/o10;-><init>(ILcom/android/tools/r8/internal/p10;)V

    return-object v1
.end method

.method public final g(I)Lcom/android/tools/r8/internal/o10;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/o10;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/o10;-><init>(ILcom/android/tools/r8/internal/p10;)V

    return-object v1
.end method
