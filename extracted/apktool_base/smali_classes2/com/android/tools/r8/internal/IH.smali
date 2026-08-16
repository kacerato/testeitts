.class public Lcom/android/tools/r8/internal/IH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IH;->d(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/IH;->b:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->c()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/IH;->c(I)V

    return v0
.end method

.method public final b(I)I
    .locals 1

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IH;->c(I)V

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/IH;->c(I)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/IH;->b:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/tools/r8/internal/IH;->a:I

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/IH;->c(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/IH;->a:I

    return-void
.end method
