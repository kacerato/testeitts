.class public Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;,
        Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;,
        Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;,
        Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/UC;

.field public final b:Ljava/util/AbstractCollection;

.field public final c:Ljava/util/AbstractCollection;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/UC;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->a:Lcom/android/tools/r8/internal/UC;

    check-cast p2, Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->b:Ljava/util/AbstractCollection;

    check-cast p3, Ljava/util/AbstractCollection;

    iput-object p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->c:Ljava/util/AbstractCollection;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;->a:Lcom/android/tools/r8/internal/UC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/UC;->g:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
