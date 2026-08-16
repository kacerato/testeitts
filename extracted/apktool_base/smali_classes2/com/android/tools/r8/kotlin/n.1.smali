.class public final Lcom/android/tools/r8/kotlin/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Xe0;


# instance fields
.field public final a:Lcom/android/tools/r8/kotlin/s0;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    sput-object v0, Lcom/android/tools/r8/kotlin/n;->c:Lcom/android/tools/r8/internal/Xe0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/kotlin/s0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/n;->a:Lcom/android/tools/r8/kotlin/s0;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/hC;
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/kotlin/n;->c:Lcom/android/tools/r8/internal/Xe0;

    return-object p0

    .line 3
    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/GP;

    .line 6
    new-instance v3, Lcom/android/tools/r8/kotlin/n;

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v4, p1, v5}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/GP;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/tools/r8/kotlin/m;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/tools/r8/kotlin/n;-><init>(Lcom/android/tools/r8/kotlin/s0;Ljava/util/Map;)V

    add-int/lit8 v2, v1, 0x1

    .line 10
    array-length v4, v0

    if-ge v4, v2, :cond_1

    .line 11
    array-length v4, v0

    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 12
    :cond_1
    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/d1;Ljava/lang/String;Lcom/android/tools/r8/kotlin/m;)V
    .locals 0

    .line 25
    invoke-interface {p2, p0}, Lcom/android/tools/r8/shaking/f0;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/kotlin/m;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/kotlin/f4;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/kotlin/f4;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p4, v0, p2}, Lcom/android/tools/r8/kotlin/m;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 22
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n;->a:Lcom/android/tools/r8/kotlin/s0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n;->b:Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/kotlin/g4;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/kotlin/g4;-><init>(Lcom/android/tools/r8/graph/d1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 3

    if-nez p4, :cond_0

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void

    .line 15
    :cond_0
    invoke-static {p4}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/n;->b:Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/kotlin/h4;

    invoke-direct {v2, p1, v0, p2}, Lcom/android/tools/r8/kotlin/h4;-><init>(Lcom/android/tools/r8/internal/U6;Ljava/util/Map;Lcom/android/tools/r8/graph/y;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/GP;

    invoke-direct {p1, p4, v0}, Lcom/android/tools/r8/internal/GP;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/n;->a:Lcom/android/tools/r8/kotlin/s0;

    new-instance v2, Lcom/android/tools/r8/kotlin/e4;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/tools/r8/kotlin/e4;-><init>(Lcom/android/tools/r8/kotlin/n;Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/U6;->b(Z)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p1

    return p1
.end method
