.class public final Lcom/android/tools/r8/internal/Tn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public c:Lcom/android/tools/r8/internal/Sn0;

.field public d:Lcom/android/tools/r8/internal/Un0;

.field public e:Lcom/android/tools/r8/internal/Un0;

.field public f:Lcom/android/tools/r8/internal/Un0;

.field public g:Lcom/android/tools/r8/internal/Un0;

.field public h:Lcom/android/tools/r8/internal/Un0;

.field public i:Lcom/android/tools/r8/internal/Un0;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/tools/r8/internal/Sn0;->e:Lcom/android/tools/r8/internal/Sn0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->c:Lcom/android/tools/r8/internal/Sn0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->d:Lcom/android/tools/r8/internal/Un0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->e:Lcom/android/tools/r8/internal/Un0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->f:Lcom/android/tools/r8/internal/Un0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->g:Lcom/android/tools/r8/internal/Un0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->h:Lcom/android/tools/r8/internal/Un0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->i:Lcom/android/tools/r8/internal/Un0;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Tn0;->j:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Rn0;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/internal/Tn0;->k:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedClass()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/android/tools/r8/internal/Rn0;->b:Lcom/android/tools/r8/internal/Rn0;

    if-ne p0, p2, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getBinaryName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 20
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getFieldName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedField()Lcom/android/tools/r8/retrace/RetracedFieldReference;

    move-result-object p0

    .line 23
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedFieldReference$KnownRetracedFieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedFieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasLineNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p2, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Vn0;->getLineNumber()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->isAmbiguous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 14
    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getLineNumber()I

    move-result p2

    const-string p3, ""

    if-gtz p2, :cond_2

    return-object p3

    :cond_2
    if-eqz p0, :cond_3

    .line 15
    const-string p3, ":"

    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getLineNumber()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_4
    iget-object p0, p2, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    .line 17
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedFieldOrReturnType()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getFieldOrReturnType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->isVoid()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "void"

    return-object p0

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedFieldOrReturnType()Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 5

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethodArguments()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getMethodArguments()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethodArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    const-string p0, ""

    return-object p0

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getMethodArguments()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethodArguments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/retrace/RetracedTypeReference;

    if-eqz v0, :cond_2

    .line 10
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/zq0;->a:[C

    move v0, v1

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    sub-int/2addr v0, v1

    .line 15
    const-string v3, " "

    invoke-static {v3, v0}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v2}, Lcom/android/tools/r8/retrace/RetracedTypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, v0

    const/16 v0, 0x2c

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedMethod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getRetracedMethod()Lcom/android/tools/r8/retrace/RetracedMethodReference;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6
    sget-object p2, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_7

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isUnknown()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/kk0;->b:Z

    if-nez p1, :cond_3

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->isKnown()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->asKnown()Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "void"

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetracedMethodReference$KnownRetracedMethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/TypeReference;

    if-eqz p1, :cond_5

    .line 16
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    goto :goto_2

    .line 18
    :cond_6
    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_7
    :goto_3
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetracedMethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Lcom/android/tools/r8/internal/Vn0;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasSourceFile()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getSourceFile()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Vn0;->getSourceFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/PX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/PX0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->g:Lcom/android/tools/r8/internal/Un0;

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(IILcom/android/tools/r8/internal/Rn0;)V
    .locals 2

    .line 27
    iget v0, p0, Lcom/android/tools/r8/internal/Tn0;->j:I

    if-ge v0, p1, :cond_0

    .line 28
    iput p1, p0, Lcom/android/tools/r8/internal/Tn0;->j:I

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/Sn0;

    new-instance v1, Lcom/android/tools/r8/internal/MX0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/MX0;-><init>(Lcom/android/tools/r8/internal/Rn0;)V

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/tools/r8/internal/Sn0;-><init>(IILcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/Rn0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->c:Lcom/android/tools/r8/internal/Sn0;

    .line 30
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Parsing has to be incremental in the order of characters."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IIZ)V
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/RX0;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/RX0;-><init>(Z)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->f:Lcom/android/tools/r8/internal/Un0;

    .line 7
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/QX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/QX0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->h:Lcom/android/tools/r8/internal/Un0;

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/NX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/NX0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->i:Lcom/android/tools/r8/internal/Un0;

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/LX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/LX0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->d:Lcom/android/tools/r8/internal/Un0;

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Un0;

    new-instance v1, Lcom/android/tools/r8/internal/OX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/OX0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tn0;->e:Lcom/android/tools/r8/internal/Un0;

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Tn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
