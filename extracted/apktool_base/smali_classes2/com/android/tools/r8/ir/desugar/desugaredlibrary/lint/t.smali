.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/t;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    check-cast p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/e;->c(Ljava/util/List;Ljava/lang/String;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V

    return-void
.end method
