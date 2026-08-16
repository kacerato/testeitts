.class public final Lcom/android/tools/r8/kotlin/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/hC;

.field public final d:Lcom/android/tools/r8/kotlin/D;


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/kotlin/E;->a:I

    iput p2, p0, Lcom/android/tools/r8/kotlin/E;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/E;->c:Lcom/android/tools/r8/internal/hC;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/E;->d:Lcom/android/tools/r8/kotlin/D;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/D;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/I0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/I0;-><init>(Lcom/android/tools/r8/kotlin/D;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/E;->c:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/O0;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/O0;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/E;->d:Lcom/android/tools/r8/kotlin/D;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/D;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/iQ;

    iget v1, p0, Lcom/android/tools/r8/kotlin/E;->a:I

    iget v2, p0, Lcom/android/tools/r8/kotlin/E;->b:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/iQ;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/E;->d:Lcom/android/tools/r8/kotlin/D;

    new-instance v1, Lcom/android/tools/r8/kotlin/P0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/P0;-><init>(Lcom/android/tools/r8/internal/iQ;)V

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/kotlin/D;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/E;->c:Lcom/android/tools/r8/internal/hC;

    iget-object v0, v0, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/kotlin/L0;

    invoke-direct {v2}, Lcom/android/tools/r8/kotlin/L0;-><init>()V

    invoke-static {p2, v1, v0, v2}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1
.end method
