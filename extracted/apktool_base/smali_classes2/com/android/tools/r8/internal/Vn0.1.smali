.class public final Lcom/android/tools/r8/internal/Vn0;
.super Lcom/android/tools/r8/retrace/StackTraceElementProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "Ljava/lang/String;",
        "Lcom/android/tools/r8/internal/Vn0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/internal/Sn0;

.field public final d:Lcom/android/tools/r8/internal/Un0;

.field public final e:Lcom/android/tools/r8/internal/Un0;

.field public final f:Lcom/android/tools/r8/internal/Un0;

.field public final g:Lcom/android/tools/r8/internal/Un0;

.field public final h:Lcom/android/tools/r8/internal/Un0;

.field public final i:Lcom/android/tools/r8/internal/Un0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Sn0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;Lcom/android/tools/r8/internal/Un0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vn0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vn0;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Vn0;->c:Lcom/android/tools/r8/internal/Sn0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Vn0;->d:Lcom/android/tools/r8/internal/Un0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Vn0;->e:Lcom/android/tools/r8/internal/Un0;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Vn0;->g:Lcom/android/tools/r8/internal/Un0;

    iput-object p8, p0, Lcom/android/tools/r8/internal/Vn0;->h:Lcom/android/tools/r8/internal/Un0;

    iput-object p9, p0, Lcom/android/tools/r8/internal/Vn0;->i:Lcom/android/tools/r8/internal/Un0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Vn0;->j:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/Sn0;->e:Lcom/android/tools/r8/internal/Sn0;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->a:Ljava/lang/String;

    iget v1, p1, Lcom/android/tools/r8/internal/Un0;->a:I

    iget p1, p1, Lcom/android/tools/r8/internal/Un0;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getClassReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->c:Lcom/android/tools/r8/internal/Sn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->c:Lcom/android/tools/r8/internal/Sn0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vn0;->a:Ljava/lang/String;

    iget v2, v0, Lcom/android/tools/r8/internal/Un0;->a:I

    iget v3, v0, Lcom/android/tools/r8/internal/Un0;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sn0;->d:Lcom/android/tools/r8/internal/Rn0;

    sget-object v2, Lcom/android/tools/r8/internal/Rn0;->b:Lcom/android/tools/r8/internal/Rn0;

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromBinaryName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->g:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->g:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFieldOrReturnType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->h:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->h:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public final getMethodArguments()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->i:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->i:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->d:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->d:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->e:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->e:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn0;->a(Lcom/android/tools/r8/internal/Un0;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasClassName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->c:Lcom/android/tools/r8/internal/Sn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasFieldName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->g:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasFieldOrReturnType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->h:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasLineNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->f:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasMethodArguments()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->i:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasMethodName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->d:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final hasSourceFile()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vn0;->e:Lcom/android/tools/r8/internal/Un0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Un0;->a()Z

    move-result v0

    return v0
.end method

.method public final toRetracedItem(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Z)Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Vn0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Un0;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Vn0;->a:Ljava/lang/String;

    iget v7, v5, Lcom/android/tools/r8/internal/Un0;->a:I

    invoke-virtual {v0, v6, v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/tools/r8/internal/Un0;->c:Lcom/android/tools/r8/internal/gt0;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, p1, p0, v6}, Lcom/android/tools/r8/internal/gt0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/tools/r8/internal/Un0;->b:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vn0;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p1, v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
