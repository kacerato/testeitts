.class public Lcom/android/tools/r8/internal/wk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/Retracer;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dV;

.field public final b:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wk0;->b:Lcom/android/tools/r8/DiagnosticsHandler;

    sget-boolean p2, Lcom/android/tools/r8/internal/wk0;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/wk0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/wk0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/wk0;-><init>(Lcom/android/tools/r8/internal/dV;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-object v0
.end method


# virtual methods
.method public final retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/dV;->a(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Nj0;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/tools/r8/internal/Nj0;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/naming/k;Lcom/android/tools/r8/internal/wk0;)V

    return-object v1
.end method

.method public final bridge synthetic retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object p1

    return-object p1
.end method

.method public final retraceField(Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/retrace/RetraceFieldResult;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/bw;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/bw;-><init>(Lcom/android/tools/r8/references/FieldReference;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/cw;)Lcom/android/tools/r8/internal/Pj0;

    move-result-object p1

    return-object p1
.end method

.method public final retraceFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 2

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object p3

    .line 2
    iget-object v0, p3, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/HW;

    invoke-direct {v1, v0, p4}, Lcom/android/tools/r8/internal/HW;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final retraceFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceFrameResult;
    .locals 4

    .line 5
    invoke-virtual {p3}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p3

    .line 9
    iget-object v3, v0, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 10
    invoke-static {v3, v1, v2, p3}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/IW;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/Vj0;->narrowByPosition(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;)Lcom/android/tools/r8/internal/Tj0;

    move-result-object p1

    return-object p1
.end method

.method public final retraceMethod(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/retrace/RetraceMethodResult;
    .locals 2

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IW;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/IW;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/JW;)Lcom/android/tools/r8/internal/Vj0;

    move-result-object p1

    return-object p1
.end method

.method public final retraceThrownException(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/wk0;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/Nj0;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/fk0;

    check-cast v0, Lcom/android/tools/r8/internal/Zj0;

    iget-object v0, p1, Lcom/android/tools/r8/internal/Nj0;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Nj0;->b:Lcom/android/tools/r8/naming/k;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fk0;-><init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/naming/k;)V

    return-object v1
.end method

.method public final retraceType(Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceTypeResult;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/hk0;

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/hk0;->a(Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/internal/wk0;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/tools/r8/internal/hk0;-><init>(Lcom/android/tools/r8/references/TypeReference;Ljava/util/List;Lcom/android/tools/r8/internal/wk0;)V

    return-object v0
.end method
