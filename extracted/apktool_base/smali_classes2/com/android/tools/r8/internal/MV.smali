.class public final Lcom/android/tools/r8/internal/MV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Ljava/util/AbstractMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MV;->a:Ljava/util/AbstractMap;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/MV;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/MV;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MV;-><init>(Ljava/util/AbstractMap;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/Z4$c;)Lcom/android/tools/r8/internal/NV;
    .locals 2

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/NV;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/NV;-><init>(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/NV;)V
    .locals 1

    .line 8
    iget-object v0, p2, Lcom/android/tools/r8/internal/NV;->a:Lcom/android/tools/r8/graph/Z4$c;

    iget-object p2, p2, Lcom/android/tools/r8/internal/NV;->b:Lcom/android/tools/r8/internal/m80;

    invoke-interface {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Lcom/android/tools/r8/internal/MV;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/MV;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/MV;-><init>(Ljava/util/AbstractMap;)V

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/Z4$c;)Lcom/android/tools/r8/internal/NV;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/NV;

    sget-object v1, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j80;-><init>()V

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/NV;-><init>(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/MV;->a:Ljava/util/AbstractMap;

    new-instance v1, Lcom/android/tools/r8/internal/FM0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/FM0;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NV;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/NV;->b:Lcom/android/tools/r8/internal/m80;

    .line 6
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/m80;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/MV;->a:Ljava/util/AbstractMap;

    new-instance v1, Lcom/android/tools/r8/internal/GM0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/GM0;-><init>(Lcom/android/tools/r8/graph/Z4$c;)V

    .line 11
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p2

    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/NV;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/NV;->b:Lcom/android/tools/r8/internal/m80;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 15
    iget-object p2, p3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/MV;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/HM0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/HM0;-><init>(Lcom/android/tools/r8/internal/MV;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/internal/ft0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ft0;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/MV;->a:Ljava/util/AbstractMap;

    new-instance v1, Lcom/android/tools/r8/internal/IM0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/IM0;-><init>(Lcom/android/tools/r8/internal/ft0;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
