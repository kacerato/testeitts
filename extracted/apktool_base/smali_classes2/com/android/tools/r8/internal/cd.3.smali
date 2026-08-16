.class public final Lcom/android/tools/r8/internal/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/inspector/ClassInspector;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H2;

.field public b:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cd;->b:Lcom/android/tools/r8/references/ClassReference;

    iput-object p1, p0, Lcom/android/tools/r8/internal/cd;->a:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/gw;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/gw;-><init>(Lcom/android/tools/r8/internal/cd;Lcom/android/tools/r8/graph/g1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/LW;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/LW;-><init>(Lcom/android/tools/r8/internal/cd;Lcom/android/tools/r8/graph/j1;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final forEachField(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->a:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/z71;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/z71;-><init>(Lcom/android/tools/r8/internal/cd;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final forEachMethod(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->a:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/y71;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/y71;-><init>(Lcom/android/tools/r8/internal/cd;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getClassReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->b:Lcom/android/tools/r8/references/ClassReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->a:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/cd;->b:Lcom/android/tools/r8/references/ClassReference;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->b:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cd;->a:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
