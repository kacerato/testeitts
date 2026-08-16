.class public final Lcom/android/tools/r8/internal/Mj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceClassElement;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Nj0;

.field public final b:Lcom/android/tools/r8/internal/lk0;

.field public final c:Lcom/android/tools/r8/naming/k;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Nj0;Lcom/android/tools/r8/internal/lk0;Lcom/android/tools/r8/naming/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Mj0;->c:Lcom/android/tools/r8/naming/k;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/JW;)Ljava/util/List;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/JW;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/cw;)Ljava/util/List;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/cw;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/aw;)Lcom/android/tools/r8/internal/Pj0;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/PM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/PM0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/QM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/QM0;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {p1, v2, v0, p0}, Lcom/android/tools/r8/internal/Nj0;->b(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Nj0;->c:Lcom/android/tools/r8/internal/wk0;

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/android/tools/r8/internal/Lj0;->a(Lcom/android/tools/r8/internal/Nj0;Ljava/util/List;Ljava/lang/Object;Lcom/android/tools/r8/internal/wk0;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Pj0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/HW;)Lcom/android/tools/r8/internal/Vj0;
    .locals 4

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/RM0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RM0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/SM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/SM0;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {p1, v2, v0, p0}, Lcom/android/tools/r8/internal/Nj0;->b(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Nj0;->c:Lcom/android/tools/r8/internal/wk0;

    invoke-interface {v1, v0, v2, p1, v3}, Lcom/android/tools/r8/internal/Lj0;->a(Lcom/android/tools/r8/internal/Nj0;Ljava/util/List;Ljava/lang/Object;Lcom/android/tools/r8/internal/wk0;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/tools/r8/internal/Vj0;

    return-object p1
.end method

.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    return-object v0
.end method

.method public final getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    return-object v0
.end method

.method public final getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Nj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-object v2, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    new-instance v2, Lcom/android/tools/r8/internal/tk0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/lk0;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/dV;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getUnknownJsonMappingInformation()Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->c:Lcom/android/tools/r8/naming/k;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/ik0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/ik0;

    move-result-object v0

    return-object v0
.end method

.method public final isCompilerSynthesized()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

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

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    new-instance v1, Lcom/android/tools/r8/internal/aw;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/aw;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Mj0;->a(Lcom/android/tools/r8/internal/aw;)Lcom/android/tools/r8/internal/Pj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/IW;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    .line 3
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    .line 8
    iget-object p3, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    .line 9
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    .line 10
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 13
    invoke-static {v0, p3, p4, p5}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    .line 14
    new-instance p4, Lcom/android/tools/r8/internal/IW;

    invoke-direct {p4, p3}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 15
    iget-object p3, p0, Lcom/android/tools/r8/internal/Mj0;->a:Lcom/android/tools/r8/internal/Nj0;

    .line 16
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    .line 17
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final lookupMethod(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Mj0;->a(Lcom/android/tools/r8/internal/HW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p1

    return-object p1
.end method
