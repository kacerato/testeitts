.class public final Lcom/android/tools/r8/internal/ek0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/fk0;

.field public final b:Lcom/android/tools/r8/internal/lk0;

.field public final c:Lcom/android/tools/r8/naming/k;

.field public final d:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fk0;Lcom/android/tools/r8/internal/lk0;Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ek0;->a:Lcom/android/tools/r8/internal/fk0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ek0;->b:Lcom/android/tools/r8/internal/lk0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ek0;->c:Lcom/android/tools/r8/naming/k;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ek0;->d:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method


# virtual methods
.method public final getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Yj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Yj0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ek0;->d:Lcom/android/tools/r8/references/ClassReference;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Yj0;->a:Lcom/android/tools/r8/references/ClassReference;

    new-instance v2, Lcom/android/tools/r8/internal/Zj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Yj0;->b:Ljava/util/OptionalInt;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/Zj0;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/OptionalInt;)V

    return-object v2
.end method

.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ek0;->a:Lcom/android/tools/r8/internal/fk0;

    return-object v0
.end method

.method public final getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ek0;->b:Lcom/android/tools/r8/internal/lk0;

    return-object v0
.end method

.method public final getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ek0;->c:Lcom/android/tools/r8/naming/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/tools/r8/naming/mappinginformation/a;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->a()Lcom/android/tools/r8/naming/mappinginformation/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/naming/mappinginformation/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/tk0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ek0;->b:Lcom/android/tools/r8/internal/lk0;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v1
.end method

.method public final isCompilerSynthesized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
