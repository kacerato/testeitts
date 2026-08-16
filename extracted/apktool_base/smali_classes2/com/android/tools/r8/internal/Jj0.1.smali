.class public final Lcom/android/tools/r8/internal/Jj0;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Jj0;->a:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Ljava/util/function/Function;Ljava/util/function/Function;)Z
    .locals 1

    .line 53
    invoke-static {p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/dK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dK0;-><init>()V

    .line 54
    invoke-static {v0}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    .line 55
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/XJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/XJ0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/YJ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/YJ0;-><init>()V

    invoke-static {p1, p2, v1, v2}, Lcom/android/tools/r8/internal/Jj0;->a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Ljava/util/function/Function;Ljava/util/function/Function;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/tools/r8/internal/ZJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ZJ0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/aK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/aK0;-><init>()V

    .line 4
    invoke-static {p1, p2, v1, v3}, Lcom/android/tools/r8/internal/Jj0;->a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Ljava/util/function/Function;Ljava/util/function/Function;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/Jj0;->b:Z

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object v3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Jj0;->a:Z

    if-nez v1, :cond_4

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->hasLineNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_5

    .line 8
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/bK0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bK0;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/cK0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/cK0;-><init>()V

    invoke-static {p1, p2, v1, v3}, Lcom/android/tools/r8/internal/Jj0;->a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Ljava/util/function/Function;Ljava/util/function/Function;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 9
    :cond_5
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethod()Z

    move-result v1

    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethod()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 10
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethod()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object v1

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object v3

    .line 13
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isKnown()Z

    move-result v4

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isKnown()Z

    move-result v5

    if-eq v4, v5, :cond_7

    return v2

    .line 14
    :cond_7
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    return v2

    .line 15
    :cond_8
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Jj0;->a:Z

    if-eqz v4, :cond_b

    .line 16
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isKnown()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 17
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;

    move-result-object v4

    .line 18
    invoke-interface {v4}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 21
    :cond_9
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isKnown()Z

    move-result v4

    if-nez v4, :cond_b

    .line 22
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return v2

    .line 23
    :cond_b
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedField()Z

    move-result v1

    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedField()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 24
    :cond_c
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedField()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 25
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object v1

    .line 26
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object v3

    .line 27
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->isKnown()Z

    move-result v4

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->isKnown()Z

    move-result v5

    if-eq v4, v5, :cond_d

    return v2

    .line 28
    :cond_d
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    return v2

    .line 29
    :cond_e
    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Jj0;->a:Z

    if-eqz v4, :cond_11

    .line 30
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->isKnown()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 31
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;

    move-result-object v4

    .line 32
    invoke-interface {v4}, Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 35
    :cond_f
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->isUnknown()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 36
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    return v2

    .line 37
    :cond_11
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedFieldOrReturnType()Z

    move-result v1

    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedFieldOrReturnType()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 38
    :cond_12
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedFieldOrReturnType()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 39
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object v1

    .line 40
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object v3

    .line 41
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v4

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v5

    if-ne v4, v5, :cond_13

    .line 42
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1

    :cond_13
    return v2

    .line 43
    :cond_14
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethodArguments()Z

    move-result v1

    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethodArguments()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 44
    :cond_15
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethodArguments()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 45
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethodArguments()Ljava/util/List;

    move-result-object p1

    .line 46
    invoke-interface {p2}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethodArguments()Ljava/util/List;

    move-result-object p2

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    .line 48
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/retrace/RetracedTypeReference;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/retrace/RetracedTypeReference;

    .line 50
    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v5

    invoke-interface {v4}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v6

    if-ne v5, v6, :cond_18

    .line 51
    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-interface {v3}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    return v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0

    :cond_1a
    :goto_3
    return v2
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    check-cast p2, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Jj0;->a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Z

    move-result p1

    return p1
.end method
