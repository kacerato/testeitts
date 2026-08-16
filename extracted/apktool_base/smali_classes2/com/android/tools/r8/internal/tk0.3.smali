.class public final Lcom/android/tools/r8/internal/tk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedSourceFile;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/RetracedClassReference;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/tk0;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/tk0;->a:Lcom/android/tools/r8/retrace/RetracedClassReference;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tk0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrInferSourceFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/tk0;->getOrInferSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrInferSourceFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tk0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/tk0;->a:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 4
    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    .line 5
    const-string p1, ""

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/tk0;->a:Lcom/android/tools/r8/retrace/RetracedClassReference;

    .line 6
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->isKnown()Z

    move-result v1

    .line 7
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/kk0;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final hasRetraceResult()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tk0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
