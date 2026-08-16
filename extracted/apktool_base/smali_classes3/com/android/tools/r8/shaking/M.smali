.class public final Lcom/android/tools/r8/shaking/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/M;->c:Lcom/android/tools/r8/shaking/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/M;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/M;->b:Ljava/util/function/BiConsumer;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/shaking/M;->c:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/N;->r(Lcom/android/tools/r8/graph/H2;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
