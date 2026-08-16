.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

.field public final synthetic b:Lcom/android/tools/r8/internal/C2;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->b:Lcom/android/tools/r8/internal/C2;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->b:Lcom/android/tools/r8/internal/C2;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/s;->d:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V

    return-void
.end method
