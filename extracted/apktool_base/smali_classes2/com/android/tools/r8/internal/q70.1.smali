.class public abstract Lcom/android/tools/r8/internal/q70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/q70;->a:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/q70;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/tq1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/tq1;-><init>(Lcom/android/tools/r8/internal/q70;Lcom/android/tools/r8/graph/E0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Dq;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/tools/r8/internal/Dq;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/q70;->a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V

    return-object p2
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/E0;)V
.end method
