.class public final Lcom/android/tools/r8/internal/hk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceTypeResult;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/references/TypeReference;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/TypeReference;Ljava/util/List;Lcom/android/tools/r8/internal/wk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hk0;->a:Lcom/android/tools/r8/references/TypeReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hk0;->b:Ljava/util/List;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/retrace/RetracedTypeReference;)Lcom/android/tools/r8/retrace/RetracedTypeReference;
    .locals 0

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeReference()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/tools/r8/references/Reference;->array(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/uk0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/uk0;-><init>(Lcom/android/tools/r8/references/TypeReference;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceClassElement;)Lcom/android/tools/r8/retrace/RetracedTypeReference;
    .locals 0

    .line 15
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceClassElement;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getRetracedType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/internal/wk0;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/uk0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/uk0;-><init>(Lcom/android/tools/r8/references/TypeReference;)V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ArrayReference;->getDimensions()I

    move-result v0

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/ArrayReference;->getBaseType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hk0;->a(Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/internal/wk0;)Ljava/util/List;

    move-result-object p0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/sd1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/sd1;-><init>(I)V

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/hk0;->c:Z

    if-nez v0, :cond_4

    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/retrace/Retracer;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/td1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/td1;-><init>()V

    .line 11
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 12
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/retrace/RetracedTypeReference;)Lcom/android/tools/r8/retrace/RetraceTypeElement;
    .locals 1

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/gk0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/gk0;-><init>(Lcom/android/tools/r8/internal/hk0;Lcom/android/tools/r8/retrace/RetracedTypeReference;)V

    return-object v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hk0;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isAmbiguous()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hk0;->b:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/ud1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ud1;-><init>(Lcom/android/tools/r8/internal/hk0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
