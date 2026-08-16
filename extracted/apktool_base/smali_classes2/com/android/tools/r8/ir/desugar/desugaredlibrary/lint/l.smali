.class public final Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/util/AbstractCollection;

.field public final d:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;-><init>()V

    sput-object v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->a:Z

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->b:Z

    .line 11
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->c:Ljava/util/AbstractCollection;

    .line 14
    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->d:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->a:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->b:Z

    .line 4
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->c:Ljava/util/AbstractCollection;

    .line 6
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 7
    invoke-static {p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;->d:Lcom/android/tools/r8/internal/hC;

    return-void
.end method
