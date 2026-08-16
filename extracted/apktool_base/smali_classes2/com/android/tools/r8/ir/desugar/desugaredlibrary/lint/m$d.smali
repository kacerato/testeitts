.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public final b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

.field public final c:Lcom/android/tools/r8/internal/UC;

.field public final d:Lcom/android/tools/r8/internal/UC;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;Lcom/android/tools/r8/internal/UC;Lcom/android/tools/r8/internal/UC;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->a:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->c:Lcom/android/tools/r8/internal/UC;

    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->d:Lcom/android/tools/r8/internal/UC;

    iput-object p5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/tools/r8/graph/g1;",
            "Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->d:Lcom/android/tools/r8/internal/UC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/tools/r8/graph/j1;",
            "Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->c:Lcom/android/tools/r8/internal/UC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
