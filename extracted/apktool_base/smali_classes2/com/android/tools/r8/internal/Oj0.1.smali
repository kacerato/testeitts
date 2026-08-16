.class public final Lcom/android/tools/r8/internal/Oj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceFieldElement;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/ok0;

.field public final b:Lcom/android/tools/r8/internal/Pj0;

.field public final c:Lcom/android/tools/r8/internal/Mj0;

.field public final d:Lcom/android/tools/r8/naming/V;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Pj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/ok0;Lcom/android/tools/r8/naming/V;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oj0;->c:Lcom/android/tools/r8/internal/Mj0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Oj0;->a:Lcom/android/tools/r8/internal/ok0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oj0;->b:Lcom/android/tools/r8/internal/Pj0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Oj0;->d:Lcom/android/tools/r8/naming/V;

    return-void
.end method


# virtual methods
.method public final getClassElement()Lcom/android/tools/r8/retrace/RetraceClassElement;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->c:Lcom/android/tools/r8/internal/Mj0;

    return-object v0
.end method

.method public final getField()Lcom/android/tools/r8/retrace/RetracedFieldReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->a:Lcom/android/tools/r8/internal/ok0;

    return-object v0
.end method

.method public final getParentResult()Lcom/android/tools/r8/retrace/RetraceResult;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->b:Lcom/android/tools/r8/internal/Pj0;

    return-object v0
.end method

.method public final getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->a:Lcom/android/tools/r8/internal/ok0;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oj0;->b:Lcom/android/tools/r8/internal/Pj0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Pj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-object v2, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    new-instance v2, Lcom/android/tools/r8/internal/tk0;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/dV;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v2
.end method

.method public final isCompilerSynthesized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->d:Lcom/android/tools/r8/naming/V;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUnknown()Z
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Oj0;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->d:Lcom/android/tools/r8/naming/V;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Oj0;->a:Lcom/android/tools/r8/internal/ok0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v2, Lcom/android/tools/r8/internal/mk0;

    xor-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Oj0;->a:Lcom/android/tools/r8/internal/ok0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/mk0;

    xor-int/2addr v0, v1

    return v0
.end method
