.class public abstract Lcom/android/tools/r8/kotlin/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/bf0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    sput-object v0, Lcom/android/tools/r8/kotlin/m;->a:Lcom/android/tools/r8/internal/bf0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/m;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/android/tools/r8/internal/RP;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/android/tools/r8/internal/RP;

    .line 3
    new-instance v0, Lcom/android/tools/r8/kotlin/j;

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/RP;->a:Ljava/lang/String;

    .line 5
    invoke-static {p0, p1, p0}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/j;-><init>(Lcom/android/tools/r8/kotlin/s0;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/internal/OP;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lcom/android/tools/r8/internal/OP;

    .line 8
    new-instance v0, Lcom/android/tools/r8/kotlin/k;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/OP;->a:Ljava/lang/String;

    .line 10
    invoke-static {v1, p1, v1}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/tools/r8/internal/OP;->b:Ljava/lang/String;

    .line 12
    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/kotlin/k;-><init>(Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/HP;

    if-eqz v0, :cond_2

    .line 14
    check-cast p0, Lcom/android/tools/r8/internal/HP;

    .line 15
    new-instance v0, Lcom/android/tools/r8/kotlin/h;

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/internal/HP;->a:Lcom/android/tools/r8/internal/GP;

    .line 17
    new-instance v1, Lcom/android/tools/r8/kotlin/n;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->b()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2, p1, v3}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/GP;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/kotlin/m;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/tools/r8/kotlin/n;-><init>(Lcom/android/tools/r8/kotlin/s0;Ljava/util/Map;)V

    .line 21
    invoke-direct {v0, v1}, Lcom/android/tools/r8/kotlin/h;-><init>(Lcom/android/tools/r8/kotlin/n;)V

    return-object v0

    .line 22
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/JP$a;

    if-eqz v0, :cond_3

    .line 23
    check-cast p0, Lcom/android/tools/r8/internal/JP$a;

    invoke-static {p0, p1}, Lcom/android/tools/r8/kotlin/i;->a(Lcom/android/tools/r8/internal/JP$a;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/i;

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    new-instance p1, Lcom/android/tools/r8/kotlin/l;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/l;-><init>(Lcom/android/tools/r8/internal/JP;)V

    return-object p1
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/graph/u1;)Ljava/util/Map;
    .locals 2

    .line 25
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object p0, Lcom/android/tools/r8/kotlin/m;->a:Lcom/android/tools/r8/internal/bf0;

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    new-instance v1, Lcom/android/tools/r8/kotlin/d4;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/kotlin/d4;-><init>(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Lcom/android/tools/r8/internal/JP;)V
    .locals 0

    .line 29
    invoke-static {p3, p1}, Lcom/android/tools/r8/kotlin/m;->a(Lcom/android/tools/r8/internal/JP;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/kotlin/m;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
.end method
