.class public abstract Lcom/android/tools/r8/retrace/StackTraceElementProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/TypeReference;)V
    .locals 1

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/references/ArrayReference;->getBaseType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/retrace/MappingSupplierBase;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/TypeReference;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->a(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/TypeReference;)V

    return-void
.end method


# virtual methods
.method public abstract getClassReference()Lcom/android/tools/r8/references/ClassReference;
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public abstract getFieldOrReturnType()Ljava/lang/String;
.end method

.method public abstract getLineNumber()I
.end method

.method public getMethodArgumentTypeReferences()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasMethodArguments()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ",\\s*"

    invoke-static {v1}, Lcom/android/tools/r8/internal/En0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/En0;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getMethodArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/tools/r8/internal/En0;->c:Lcom/android/tools/r8/internal/Dn0;

    invoke-interface {v3, v1, v2}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/references/Reference;->typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getMethodArguments()Ljava/lang/String;
.end method

.method public abstract getMethodName()Ljava/lang/String;
.end method

.method public abstract getSourceFile()Ljava/lang/String;
.end method

.method public abstract hasClassName()Z
.end method

.method public abstract hasFieldName()Z
.end method

.method public abstract hasFieldOrReturnType()Z
.end method

.method public abstract hasLineNumber()Z
.end method

.method public abstract hasMethodArguments()Z
.end method

.method public abstract hasMethodName()Z
.end method

.method public abstract hasSourceFile()Z
.end method

.method public registerUses(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingSupplierBase<",
            "*>;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/retrace/MappingSupplierBase;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasMethodArguments()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getMethodArgumentTypeReferences()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/retrace/K;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/retrace/K;-><init>(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasFieldOrReturnType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getFieldOrReturnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getFieldOrReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ArrayReference;->getBaseType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/retrace/MappingSupplierBase;->registerClassUse(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/MappingSupplierBase;

    :cond_3
    return-void
.end method

.method public abstract toRetracedItem(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy<",
            "TT;TST;>;Z)TT;"
        }
    .end annotation
.end method
