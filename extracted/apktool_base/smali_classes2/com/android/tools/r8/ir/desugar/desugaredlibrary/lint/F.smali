.class public final synthetic Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/F;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/F;->a:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    check-cast p2, Ljava/util/Collection;

    check-cast p3, Ljava/util/Collection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/o;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method
