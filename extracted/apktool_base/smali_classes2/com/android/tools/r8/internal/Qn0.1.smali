.class public final Lcom/android/tools/r8/internal/Qn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/Retracer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/Retracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qn0;->a:Lcom/android/tools/r8/retrace/Retracer;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFieldResult;Lcom/android/tools/r8/retrace/RetraceFieldElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 77
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldElement;->getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 79
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceFieldElement;->getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/tools/r8/internal/On0;->d:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    .line 81
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->isAmbiguous()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/On0;->j:Z

    .line 83
    new-instance p1, Lcom/android/tools/r8/internal/PT0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/PT0;-><init>(Lcom/android/tools/r8/retrace/RetraceFieldElement;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/function/Supplier;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/On0;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pn0;ZLjava/util/List;)Lcom/android/tools/r8/internal/Pn0;
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 122
    iput-object p2, p0, Lcom/android/tools/r8/internal/On0;->f:Ljava/util/List;

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 14
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceResult;->isAmbiguous()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/On0;->j:Z

    .line 16
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/On0;->k:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/DT0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/DT0;-><init>(Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/function/Supplier;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/On0;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedSingleFrame;)Lcom/android/tools/r8/internal/Pn0;
    .locals 2

    .line 51
    invoke-interface {p4}, Lcom/android/tools/r8/retrace/RetracedSingleFrame;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-interface {p4}, Lcom/android/tools/r8/retrace/RetracedSingleFrame;->getMethodReference()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object p4

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 54
    invoke-interface {p4}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v1

    .line 55
    iput-object v1, p1, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 56
    iput-object p4, p1, Lcom/android/tools/r8/internal/On0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    .line 57
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceResult;->isAmbiguous()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 58
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/On0;->j:Z

    .line 59
    invoke-interface {p3}, Lcom/android/tools/r8/retrace/RetraceFrameElement;->getRetraceStackTraceContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p2

    .line 60
    iput-object p2, p1, Lcom/android/tools/r8/internal/On0;->k:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasLineNumber()Z

    move-result p2

    new-instance v0, Lcom/android/tools/r8/internal/RT0;

    invoke-direct {v0, p4, p0}, Lcom/android/tools/r8/internal/RT0;-><init>(Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    .line 62
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/On0;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/ST0;

    invoke-direct {p1, p3, p4}, Lcom/android/tools/r8/internal/ST0;-><init>(Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedMethodReference;)V

    .line 63
    invoke-static {p1}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/function/Supplier;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/On0;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedMethodReference;)Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 0

    .line 67
    invoke-interface {p0, p1}, Lcom/android/tools/r8/retrace/RetraceFrameElement;->getSourceFile(Lcom/android/tools/r8/retrace/RetracedClassMemberReference;)Lcom/android/tools/r8/retrace/RetracedSourceFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeResult;)Ljava/util/List;
    .locals 2

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/android/tools/r8/internal/vT0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/vT0;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1, v1}, Lcom/android/tools/r8/retrace/RetraceResult;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static a(Ljava/util/function/Supplier;)Ljava/util/function/Consumer;
    .locals 1

    .line 85
    new-instance v0, Lcom/android/tools/r8/internal/TT0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TT0;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/util/List;ZLcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;
    .locals 1

    .line 119
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/AT0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/AT0;-><init>(Lcom/android/tools/r8/internal/Pn0;Z)V

    .line 120
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceTypeElement;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceTypeElement;->getType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/On0;)V
    .locals 0

    .line 65
    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getLineNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getOriginalPositionOrDefault(I)I

    move-result p0

    .line 66
    iput p0, p2, Lcom/android/tools/r8/internal/On0;->h:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/On0;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getLineNumber()I

    move-result p0

    .line 47
    iput p0, p1, Lcom/android/tools/r8/internal/On0;->h:I

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeElement;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/android/tools/r8/internal/uT0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/uT0;-><init>(Lcom/android/tools/r8/retrace/RetraceTypeElement;Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/On0;)V
    .locals 1

    .line 86
    iget-object v0, p1, Lcom/android/tools/r8/internal/On0;->a:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasSourceFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/RetracedSourceFile;

    .line 89
    sget-boolean v0, Lcom/android/tools/r8/internal/On0;->l:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 90
    :cond_2
    :goto_0
    iput-object p0, p1, Lcom/android/tools/r8/internal/On0;->g:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Pn0;)Lcom/android/tools/r8/internal/Pn0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/uk0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/uk0;-><init>(Lcom/android/tools/r8/references/TypeReference;)V

    .line 2
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/Pn0;->j:Z

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 4
    iput-object v0, p1, Lcom/android/tools/r8/internal/On0;->e:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    .line 5
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/On0;->j:Z

    .line 39
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceResult;->isAmbiguous()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 40
    invoke-interface {p4}, Lcom/android/tools/r8/retrace/RetraceClassElement;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p2

    .line 41
    iput-object p2, p1, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 42
    invoke-virtual {p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasLineNumber()Z

    move-result p2

    new-instance v0, Lcom/android/tools/r8/internal/GT0;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/GT0;-><init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    .line 43
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/On0;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/android/tools/r8/internal/HT0;

    invoke-direct {p2, p4}, Lcom/android/tools/r8/internal/HT0;-><init>(Lcom/android/tools/r8/retrace/RetraceClassElement;)V

    invoke-static {p2}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/function/Supplier;)Ljava/util/function/Consumer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/On0;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceTypeResult;Lcom/android/tools/r8/retrace/RetraceTypeElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 0

    .line 108
    invoke-interface {p3}, Lcom/android/tools/r8/retrace/RetraceTypeElement;->getType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p3

    .line 109
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceResult;->isAmbiguous()Z

    move-result p2

    .line 110
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Pn0;->a()Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    .line 111
    iput-object p3, p1, Lcom/android/tools/r8/internal/On0;->e:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    .line 112
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/On0;->a(Z)Lcom/android/tools/r8/internal/On0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/On0;->a()Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/RetraceClassResult;)Lcom/android/tools/r8/internal/ck0;
    .locals 2

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ck0;->a()Lcom/android/tools/r8/internal/bk0;

    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/wT0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/wT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;)V

    .line 9
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/internal/ck0;
    .locals 3

    .line 91
    invoke-virtual {p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasFieldOrReturnType()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ck0;->a()Lcom/android/tools/r8/internal/bk0;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getFieldOrReturnType()Ljava/lang/String;

    move-result-object p2

    .line 94
    const-string v1, "void"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 96
    new-instance p2, Lcom/android/tools/r8/internal/BT0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/BT0;-><init>(Lcom/android/tools/r8/internal/Qn0;)V

    .line 97
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 98
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2

    .line 99
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    .line 100
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qn0;->a:Lcom/android/tools/r8/retrace/Retracer;

    invoke-interface {v1, p2}, Lcom/android/tools/r8/retrace/Retracer;->retraceType(Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/retrace/RetraceTypeResult;

    move-result-object p2

    .line 101
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 103
    new-instance v2, Lcom/android/tools/r8/internal/CT0;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/tools/r8/internal/CT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeResult;)V

    .line 104
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassResult;)Lcom/android/tools/r8/internal/ck0;
    .locals 2

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ck0;->a()Lcom/android/tools/r8/internal/bk0;

    move-result-object v0

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 70
    new-instance v1, Lcom/android/tools/r8/internal/OT0;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/tools/r8/internal/OT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    .line 71
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object p3, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/internal/ck0;
    .locals 8

    .line 20
    new-instance v5, Lcom/android/tools/r8/internal/C7;

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ck0;->a()Lcom/android/tools/r8/internal/bk0;

    move-result-object v6

    new-instance v0, Lcom/android/tools/r8/internal/JT0;

    invoke-direct {v0, v5}, Lcom/android/tools/r8/internal/JT0;-><init>(Lcom/android/tools/r8/internal/C7;)V

    .line 22
    iput-object v0, v6, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 24
    new-instance v7, Lcom/android/tools/r8/internal/KT0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/KT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;)V

    .line 25
    invoke-interface {p1, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 26
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object p3, v6, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, p3}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;)Ljava/util/stream/Stream;
    .locals 6

    .line 48
    invoke-interface {p6}, Lcom/android/tools/r8/retrace/RetraceFrameElement;->getRetraceStackTraceContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 49
    invoke-interface {p6, p2}, Lcom/android/tools/r8/retrace/RetraceFrameElement;->streamRewritten(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/NT0;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/NT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;)V

    .line 50
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;
    .locals 2

    .line 125
    iget-object v0, p2, Lcom/android/tools/r8/internal/Pn0;->l:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    .line 126
    invoke-interface {p1, v0}, Lcom/android/tools/r8/retrace/RetraceClassResult;->lookupThrownException(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceThrownExceptionResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/QT0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/QT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;)V

    .line 127
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;
    .locals 9

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasLineNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-interface {p1, p2, v0, v1}, Lcom/android/tools/r8/retrace/RetraceClassResult;->lookupFrame(Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Ljava/util/OptionalInt;Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFrameResult;

    move-result-object v8

    .line 32
    invoke-interface {v8}, Lcom/android/tools/r8/retrace/RetraceFrameResult;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/tools/r8/internal/FT0;

    invoke-direct {p4, p0, p5, p1, p3}, Lcom/android/tools/r8/internal/FT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    .line 34
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 35
    :cond_1
    invoke-interface {v8}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/MT0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/internal/MT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;)V

    .line 36
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;
    .locals 1

    .line 73
    invoke-virtual {p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getFieldName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/tools/r8/retrace/RetraceClassResult;->lookupField(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceFieldResult;

    move-result-object p1

    .line 74
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResult;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/ET0;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/tools/r8/internal/ET0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFieldResult;)V

    .line 75
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeResult;Lcom/android/tools/r8/internal/Pn0;)Ljava/util/stream/Stream;
    .locals 1

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/LT0;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/LT0;-><init>(Lcom/android/tools/r8/internal/Qn0;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceTypeResult;)V

    .line 107
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFieldResult;Lcom/android/tools/r8/retrace/RetraceFieldElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFieldResult;Lcom/android/tools/r8/retrace/RetraceFieldElement;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;)Lcom/android/tools/r8/internal/Pn0;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceThrownExceptionElement;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedSingleFrame;)Lcom/android/tools/r8/internal/Pn0;
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/Pn0;Lcom/android/tools/r8/retrace/RetraceFrameResult;Lcom/android/tools/r8/retrace/RetraceFrameElement;Lcom/android/tools/r8/retrace/RetracedSingleFrame;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/internal/ck0;
    .locals 3

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasMethodArguments()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getMethodArgumentTypeReferences()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qn0;->a:Lcom/android/tools/r8/retrace/Retracer;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/xT0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xT0;-><init>(Lcom/android/tools/r8/retrace/Retracer;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/yT0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/yT0;-><init>()V

    .line 11
    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ck0;->a()Lcom/android/tools/r8/internal/bk0;

    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/ck0;->a:Ljava/util/stream/Stream;

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/zT0;

    invoke-direct {v2, p2, v1}, Lcom/android/tools/r8/internal/zT0;-><init>(Ljava/util/List;Z)V

    .line 16
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/ck0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/bk0;->a:Ljava/util/function/Supplier;

    invoke-direct {p2, p1, v0}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    return-object p2
.end method

.method public final retrace(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;
    .locals 13

    new-instance v12, Lcom/android/tools/r8/internal/Pn0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, v12

    move-object v1, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/tools/r8/internal/Pn0;-><init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetracedClassReference;Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/RetracedFieldReference;Lcom/android/tools/r8/retrace/RetracedTypeReference;Ljava/util/List;Lcom/android/tools/r8/retrace/RetracedSourceFile;IZZLcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    invoke-static {v12}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IT0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IT0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ck0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ck0;-><init>(Ljava/util/stream/Stream;Ljava/util/function/Supplier;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasClassName()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasFieldOrReturnType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasMethodArguments()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/internal/ck0;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Qn0;->b(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/internal/ck0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasClassName()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qn0;->a:Lcom/android/tools/r8/retrace/Retracer;

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/r8/retrace/Retracer;->retraceClass(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/retrace/RetraceClassResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasMethodName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassResult;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/internal/ck0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasFieldName()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceClassResult;)Lcom/android/tools/r8/internal/ck0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/ck0;Lcom/android/tools/r8/retrace/RetraceClassResult;)Lcom/android/tools/r8/internal/ck0;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method
