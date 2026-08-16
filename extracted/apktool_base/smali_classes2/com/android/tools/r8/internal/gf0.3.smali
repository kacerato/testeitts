.class public final Lcom/android/tools/r8/internal/gf0;
.super Lcom/android/tools/r8/naming/q0;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/tools/r8/naming/q0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gf0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gf0;->e:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/gf0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/e4;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;
    .locals 0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gf0;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/naming/r0;
    .locals 0

    return-object p0
.end method
