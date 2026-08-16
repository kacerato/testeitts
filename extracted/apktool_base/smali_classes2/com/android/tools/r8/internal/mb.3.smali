.class public final Lcom/android/tools/r8/internal/mb;
.super Lcom/android/tools/r8/internal/sb;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/sb;)V
    .locals 1

    iget v0, p1, Lcom/android/tools/r8/internal/sb;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/sb;-><init>(ILcom/android/tools/r8/internal/sb;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sb;->d()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/mb;->c:I

    sget-boolean v0, Lcom/android/tools/r8/internal/mb;->d:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(I)Lcom/android/tools/r8/internal/ob;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/mb;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/mb;->c:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/ob;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    iget v1, p0, Lcom/android/tools/r8/internal/mb;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/sb;->b(I)Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/mb;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sb;->a:Lcom/android/tools/r8/internal/sb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; pop"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
