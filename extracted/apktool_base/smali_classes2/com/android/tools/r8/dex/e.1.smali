.class public final Lcom/android/tools/r8/dex/e;
.super Lcom/android/tools/r8/dex/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/internal/C7;

.field public final synthetic e:Lcom/android/tools/r8/dex/k;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/k;Ljava/util/Map;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/e;->e:Lcom/android/tools/r8/dex/k;

    iput-object p2, p0, Lcom/android/tools/r8/dex/e;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/dex/e;->d:Lcom/android/tools/r8/internal/C7;

    invoke-direct {p0}, Lcom/android/tools/r8/dex/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/L2;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/dex/e;->e:Lcom/android/tools/r8/dex/k;

    iget-object v1, p0, Lcom/android/tools/r8/dex/e;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/dex/e;->d:Lcom/android/tools/r8/internal/C7;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/I0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/dex/k;->a(Ljava/util/Collection;Lcom/android/tools/r8/naming/I0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    return-object v0
.end method
