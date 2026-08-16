.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

.field public final synthetic c:Lcom/android/tools/r8/internal/C2;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->c:Lcom/android/tools/r8/internal/C2;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->c:Lcom/android/tools/r8/internal/C2;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/r;->d:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->b(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;Lcom/android/tools/r8/internal/C2;Ljava/util/List;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;)V

    return-void
.end method
