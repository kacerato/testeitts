.class public final Lcom/android/tools/r8/internal/xD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fx;
.implements Lcom/android/tools/r8/internal/xZ;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/xD;->b:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/xD;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/xD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/xD;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xD;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/xD;->b:Ljava/util/IdentityHashMap;

    .line 7
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/xD;->b:Ljava/util/IdentityHashMap;

    .line 9
    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 10
    invoke-virtual {v2, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 2

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/xD;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/wD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xD;->b:Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/wD;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    .line 12
    iput-object v0, p1, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    return-void
.end method
