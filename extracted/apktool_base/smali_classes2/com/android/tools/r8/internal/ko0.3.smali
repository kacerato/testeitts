.class public final Lcom/android/tools/r8/internal/ko0;
.super Lcom/android/tools/r8/internal/xw0;
.source "SourceFile"


# static fields
.field public static final synthetic r:Z = true


# instance fields
.field public final p:I

.field public final q:Lcom/android/tools/r8/internal/Ju0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    iput p3, p0, Lcom/android/tools/r8/internal/ko0;->p:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/ko0;->q:Lcom/android/tools/r8/internal/Ju0;

    sget-boolean p1, Lcom/android/tools/r8/internal/ko0;->r:Z

    if-nez p1, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ju0;ILcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ko0;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/ko0;

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Ju0;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/ko0;-><init>(Lcom/android/tools/r8/internal/Ju0;Lcom/android/tools/r8/internal/pu0;I)V

    return-object v0
.end method


# virtual methods
.method public final T()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/ko0;->r:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/ko0;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
