.class public final Lcom/android/tools/r8/internal/Yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/AA;

.field public final d:Lcom/android/tools/r8/internal/wA;

.field public final e:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Yd;->e:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yd;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Yd;->c:Lcom/android/tools/r8/internal/AA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yd;->d:Lcom/android/tools/r8/internal/wA;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/x31;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/x31;-><init>(Lcom/android/tools/r8/internal/Yd;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/E0;->d(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 6

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Yd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yd;->c:Lcom/android/tools/r8/internal/AA;

    .line 9
    iget-object v2, v2, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/w31;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/w31;-><init>(Lcom/android/tools/r8/internal/Yd;)V

    .line 13
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/Yd;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/Yd;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/android/tools/r8/internal/Yd;->d:Lcom/android/tools/r8/internal/wA;

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/wA;->a:Lcom/android/tools/r8/internal/n6;

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yd;->c:Lcom/android/tools/r8/internal/AA;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Yd;->e:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
