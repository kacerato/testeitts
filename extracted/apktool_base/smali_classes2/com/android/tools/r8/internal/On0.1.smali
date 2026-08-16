.class public final Lcom/android/tools/r8/internal/On0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

.field public b:Lcom/android/tools/r8/retrace/RetracedClassReference;

.field public c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

.field public d:Lcom/android/tools/r8/retrace/RetracedFieldReference;

.field public e:Lcom/android/tools/r8/retrace/RetracedTypeReference;

.field public f:Ljava/util/List;

.field public g:Lcom/android/tools/r8/retrace/RetracedSourceFile;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/On0;->h:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/On0;->a:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Z)Lcom/android/tools/r8/internal/On0;
    .locals 0

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/On0;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/On0;->i:Z

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/internal/On0;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/Pn0;
    .locals 13

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/On0;->b:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/On0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Pn0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/On0;->a:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    iget-object v4, p0, Lcom/android/tools/r8/internal/On0;->c:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iget-object v5, p0, Lcom/android/tools/r8/internal/On0;->d:Lcom/android/tools/r8/retrace/RetracedFieldReference;

    iget-object v6, p0, Lcom/android/tools/r8/internal/On0;->e:Lcom/android/tools/r8/retrace/RetracedTypeReference;

    iget-object v7, p0, Lcom/android/tools/r8/internal/On0;->f:Ljava/util/List;

    iget-object v8, p0, Lcom/android/tools/r8/internal/On0;->g:Lcom/android/tools/r8/retrace/RetracedSourceFile;

    iget v9, p0, Lcom/android/tools/r8/internal/On0;->h:I

    iget-boolean v10, p0, Lcom/android/tools/r8/internal/On0;->i:Z

    iget-boolean v11, p0, Lcom/android/tools/r8/internal/On0;->j:Z

    iget-object v12, p0, Lcom/android/tools/r8/internal/On0;->k:Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/tools/r8/internal/Pn0;-><init>(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetracedClassReference;Lcom/android/tools/r8/retrace/RetracedMethodReference;Lcom/android/tools/r8/retrace/RetracedFieldReference;Lcom/android/tools/r8/retrace/RetracedTypeReference;Ljava/util/List;Lcom/android/tools/r8/retrace/RetracedSourceFile;IZZLcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method
