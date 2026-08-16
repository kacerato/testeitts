.class public final Lcom/android/tools/r8/internal/Nj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceClassResult;


# instance fields
.field public final a:Lcom/android/tools/r8/references/ClassReference;

.field public final b:Lcom/android/tools/r8/naming/k;

.field public final c:Lcom/android/tools/r8/internal/wk0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/wk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Nj0;->c:Lcom/android/tools/r8/internal/wk0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/naming/k$c;)Lcom/android/tools/r8/internal/JV;
    .locals 2

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/JV;

    .line 30
    iget-object v1, p1, Lcom/android/tools/r8/naming/k$c;->a:Ljava/util/List;

    .line 31
    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/k$b;->f()Lcom/android/tools/r8/naming/V$b;

    move-result-object v1

    .line 33
    iget-object p0, p0, Lcom/android/tools/r8/naming/k;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/naming/V;

    .line 34
    sget-boolean v1, Lcom/android/tools/r8/naming/k$c;->c:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 35
    :cond_1
    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/JV;-><init>(Lcom/android/tools/r8/naming/V;Lcom/android/tools/r8/naming/k$c;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/JW;)Ljava/util/List;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/naming/k;->e:Ljava/util/Map;

    .line 16
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Kj;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k$c;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k$c;->b()Ljava/util/List;

    move-result-object v0

    .line 19
    instance-of v1, p1, Lcom/android/tools/r8/internal/IW;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/JW;->a()Lcom/android/tools/r8/internal/IW;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/IW;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 22
    invoke-static {p1}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    .line 23
    new-instance v1, Lcom/android/tools/r8/internal/oO0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/oO0;-><init>(Lcom/android/tools/r8/naming/V$b;)V

    .line 24
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 25
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/pO0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/pO0;-><init>(Lcom/android/tools/r8/naming/k;)V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/cw;)Ljava/util/List;
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/naming/k;->f:Ljava/util/HashMap;

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Kj;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/bw;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/cw;->a()Lcom/android/tools/r8/internal/bw;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/bw;->a:Lcom/android/tools/r8/references/FieldReference;

    .line 8
    new-instance v1, Lcom/android/tools/r8/naming/V$a;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/android/tools/r8/naming/V$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/nO0;

    invoke-direct {p1, v1}, Lcom/android/tools/r8/internal/nO0;-><init>(Lcom/android/tools/r8/naming/V$a;)V

    .line 11
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    .line 12
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Nj0;->b(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/V$a;Lcom/android/tools/r8/naming/V;)Z
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V;->b()Lcom/android/tools/r8/naming/V$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/V$c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/V$b;Lcom/android/tools/r8/naming/k$c;)Z
    .locals 0

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/k$c;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/k$b;->f()Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/naming/V$b;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V
    .locals 1

    iget-object v0, p3, Lcom/android/tools/r8/internal/Mj0;->c:Lcom/android/tools/r8/naming/k;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p2, Lcom/android/tools/r8/internal/o50;

    invoke-direct {p2, p3, p0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/o50;

    const/4 p2, 0x0

    invoke-direct {p0, p3, p2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/cw;)Lcom/android/tools/r8/internal/Pj0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/mO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mO0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/QM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/QM0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/Kj;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Lj0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pj0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/kO0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kO0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/SM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/SM0;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/Kj;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Lj0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Vj0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kj;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Lj0;)Ljava/lang/Object;
    .locals 5

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Lcom/android/tools/r8/internal/Mj0;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_1
    new-instance v4, Lcom/android/tools/r8/internal/lk0;

    invoke-direct {v4, v3, v2}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    invoke-direct {v1, p0, v4, v2}, Lcom/android/tools/r8/internal/Mj0;-><init>(Lcom/android/tools/r8/internal/Nj0;Lcom/android/tools/r8/internal/lk0;Lcom/android/tools/r8/naming/k;)V

    .line 41
    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/tools/r8/internal/lO0;

    invoke-direct {v2, p1, v0, p2}, Lcom/android/tools/r8/internal/lO0;-><init>(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;)V

    .line 43
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    iget-object p2, p0, Lcom/android/tools/r8/internal/Nj0;->c:Lcom/android/tools/r8/internal/wk0;

    invoke-interface {p3, p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Lj0;->a(Lcom/android/tools/r8/internal/Nj0;Ljava/util/List;Ljava/lang/Object;Lcom/android/tools/r8/internal/wk0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/aw;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/aw;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/cw;)Lcom/android/tools/r8/internal/Pj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupField(Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/bw;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/bw;-><init>(Lcom/android/tools/r8/references/FieldReference;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/cw;)Lcom/android/tools/r8/internal/Pj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 5
    invoke-static {v0, p3, p4, p5}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    .line 6
    new-instance p4, Lcom/android/tools/r8/internal/IW;

    invoke-direct {p4, p3}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 7
    invoke-virtual {p0, p4}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupMethod(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupMethod(Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 5
    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/android/tools/r8/internal/IW;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupThrownException(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/fk0;

    check-cast p1, Lcom/android/tools/r8/internal/Zj0;

    iget-object p1, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/fk0;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/naming/k;)V

    return-object v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Mj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lcom/android/tools/r8/internal/lk0;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/tools/r8/internal/Mj0;-><init>(Lcom/android/tools/r8/internal/Nj0;Lcom/android/tools/r8/internal/lk0;Lcom/android/tools/r8/naming/k;)V

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
