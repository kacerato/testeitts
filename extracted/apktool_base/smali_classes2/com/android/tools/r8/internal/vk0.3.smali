.class public final Lcom/android/tools/r8/internal/vk0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/vk0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/wk0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vk0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vk0;-><init>(Lcom/android/tools/r8/internal/wk0;)V

    sput-object v0, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/wk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceClassElement;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceClassElement;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetracedFieldReference;)Ljava/lang/String;
    .locals 2

    .line 33
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetracedMethodReference;)Ljava/lang/String;
    .locals 2

    .line 17
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/retrace/RetraceFieldElement;)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldElement;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldElement;->getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 30
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldElement;->getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/tools/r8/retrace/RetraceMethodElement;)Ljava/lang/String;
    .locals 1

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceMethodElement;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceMethodElement;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 14
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceMethodElement;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->toSourceString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetraceClassElement;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceClassElement;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->toSourceString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetracedFieldReference;)Ljava/lang/String;
    .locals 2

    .line 12
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->toSourceString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetracedMethodReference;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    if-nez v0, :cond_0

    .line 8
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/retrace/Retracer;->retraceMethod(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceMethodResult;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/ax1;

    invoke-direct {p2, p4, p3}, Lcom/android/tools/r8/internal/ax1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/VI0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/VI0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Gw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Gw1;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/android/tools/r8/retrace/Retracer;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;
    .locals 3

    .line 34
    instance-of v0, p1, Lcom/android/tools/r8/graph/J2;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/J2;

    new-instance v0, Lcom/android/tools/r8/internal/Uw1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Uw1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    new-instance v1, Lcom/android/tools/r8/internal/Vw1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Vw1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    new-instance v2, Lcom/android/tools/r8/internal/Ww1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Ww1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    if-nez v0, :cond_0

    .line 19
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    invoke-interface {p2, p1}, Lcom/android/tools/r8/retrace/Retracer;->retraceField(Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/RetraceFieldResult;

    move-result-object p2

    .line 22
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldResult;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object p2, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/tools/r8/retrace/Retracer;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/tools/r8/retrace/RetraceClassResult;->lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;

    move-result-object p2

    .line 26
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Rw1;

    invoke-direct {p1, p4, p3}, Lcom/android/tools/r8/internal/Rw1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 27
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Mw1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mw1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Nw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Nw1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Ow1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ow1;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/uL0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uL0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Pw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Pw1;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/vk0;->a:Lcom/android/tools/r8/internal/wk0;

    if-nez v2, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/android/tools/r8/retrace/Retracer;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/d4;)Ljava/lang/String;
    .locals 3

    .line 13
    instance-of v0, p1, Lcom/android/tools/r8/graph/J2;

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    check-cast p1, Lcom/android/tools/r8/graph/J2;

    new-instance v0, Lcom/android/tools/r8/internal/bx1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bx1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    new-instance v1, Lcom/android/tools/r8/internal/Hw1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Hw1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    new-instance v2, Lcom/android/tools/r8/internal/Iw1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Iw1;-><init>(Lcom/android/tools/r8/internal/vk0;)V

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Jw1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jw1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Kw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Kw1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Lw1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Lw1;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Qw1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qw1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Sw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Sw1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Tw1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Tw1;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/l1;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/l1;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Xw1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xw1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Yw1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Yw1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Zw1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Zw1;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/tools/r8/internal/vk0;->a(Lcom/android/tools/r8/graph/l1;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
