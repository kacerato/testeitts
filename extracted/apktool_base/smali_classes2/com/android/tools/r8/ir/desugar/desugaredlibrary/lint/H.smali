.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

.field public final synthetic b:Lcom/android/tools/r8/internal/xU;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/graph/j;

.field public final synthetic e:Lcom/android/tools/r8/graph/y;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;Lcom/android/tools/r8/internal/xU;Ljava/util/List;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->b:Lcom/android/tools/r8/internal/xU;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->d:Lcom/android/tools/r8/graph/j;

    iput-object p5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->e:Lcom/android/tools/r8/graph/y;

    iput p6, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->f:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->b:Lcom/android/tools/r8/internal/xU;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->d:Lcom/android/tools/r8/graph/j;

    iget-object v4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->e:Lcom/android/tools/r8/graph/y;

    iget v5, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/H;->f:I

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/graph/E0;

    move-object v7, p2

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/internal/xU;Ljava/util/List;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
