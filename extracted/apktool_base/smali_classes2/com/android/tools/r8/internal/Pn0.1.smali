.class public final Lcom/android/tools/r8/internal/Pn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

.field public final c:Lcom/android/tools/r8/retrace/RetracedClassReference;

.field public final d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

.field public final e:Lcom/android/tools/r8/retrace/RetracedFieldReference;

.field public final f:Lcom/android/tools/r8/retrace/RetracedTypeReference;

.field public final g:Ljava/util/List;

.field public final h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetracedClassReference;Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/RetracedFieldReference;Lcom/android/tools/r8/retrace/RetracedTypeReference;Ljava/util/List;Lcom/android/tools/r8/retrace/RetracedSourceFile;IZZLcom/android/tools/r8/retrace/RetraceStackTraceContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Pn0;->m:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pn0;->c:Lcom/android/tools/r8/retrace/RetracedClassReference;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pn0;->d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Pn0;->e:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Pn0;->f:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Pn0;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Pn0;->h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    iput p8, p0, Lcom/android/tools/r8/internal/Pn0;->i:I

    iput-boolean p9, p0, Lcom/android/tools/r8/internal/Pn0;->j:Z

    iput-boolean p10, p0, Lcom/android/tools/r8/internal/Pn0;->k:Z

    iput-object p11, p0, Lcom/android/tools/r8/internal/Pn0;->l:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/On0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/On0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/On0;-><init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->c:Lcom/android/tools/r8/retrace/RetracedClassReference;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->e:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->d:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->f:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->e:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->g:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    iget v1, p0, Lcom/android/tools/r8/internal/Pn0;->i:I

    iput v1, v0, Lcom/android/tools/r8/internal/On0;->h:I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Pn0;->j:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/On0;->i:Z

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Pn0;->k:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/On0;->j:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->l:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    iput-object v1, v0, Lcom/android/tools/r8/internal/On0;->k:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasRetracedClass()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedClass()Z

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasRetracedClass()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->c:Lcom/android/tools/r8/retrace/RetracedClassReference;

    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasRetracedMethod()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethod()Z

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasRetracedMethod()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasSourceFile()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasSourceFile()Z

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    if-eqz v1, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasSourceFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasLineNumber()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasLineNumber()Z

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    if-eqz v1, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pn0;->hasLineNumber()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v0, p0, Lcom/android/tools/r8/internal/Pn0;->i:I

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getLineNumber()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_8
    return v0
.end method

.method public final getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->l:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Pn0;->i:I

    return v0
.end method

.method public final getOriginalItem()Lcom/android/tools/r8/retrace/StackTraceElementProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-object v0
.end method

.method public final getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->c:Lcom/android/tools/r8/retrace/RetracedClassReference;

    return-object v0
.end method

.method public final getRetracedField()Lcom/android/tools/r8/retrace/RetracedFieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->e:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    return-object v0
.end method

.method public final getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->f:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    return-object v0
.end method

.method public final getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    return-object v0
.end method

.method public final getRetracedMethodArguments()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getRetracedSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    return-object v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/Pn0;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pn0;->b:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/tools/r8/retrace/RetracedSourceFile;->getOrInferSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasLineNumber()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Pn0;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetracedClass()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->c:Lcom/android/tools/r8/retrace/RetracedClassReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetracedField()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->e:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetracedFieldOrReturnType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->f:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetracedMethod()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->d:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetracedMethodArguments()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSourceFile()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pn0;->h:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isAmbiguous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Pn0;->j:Z

    return v0
.end method

.method public final isTopFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Pn0;->k:Z

    return v0
.end method
