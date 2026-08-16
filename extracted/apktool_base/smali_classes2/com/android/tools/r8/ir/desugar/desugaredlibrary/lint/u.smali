.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/u;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/u;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    check-cast p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/j;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/h;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V

    return-void
.end method
