.class public abstract Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    iput p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    iput p2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;)I
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez v0, :cond_0

    iget-boolean v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez v1, :cond_0

    const/4 p1, -0x1

    move v1, p1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_6

    .line 3
    iget-boolean v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    iget v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    add-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    .line 6
    iget p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    move v1, v0

    goto :goto_3

    .line 7
    :cond_2
    iget p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    iget v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x15

    const/16 v4, 0x13

    if-ne v0, v4, :cond_4

    if-ne v1, v3, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    if-ne p1, v4, :cond_5

    if-ne v2, v3, :cond_5

    :goto_0
    move p1, v0

    goto :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot merge ranges."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 9
    iget v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    goto :goto_2

    :cond_7
    iget v1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    :goto_2
    if-eqz v0, :cond_8

    .line 10
    iget p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    goto :goto_3

    :cond_8
    iget p1, p1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->c:I

    .line 11
    :goto_3
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->d:Z

    if-nez v0, :cond_a

    const v0, 0x8000

    if-ge p1, v0, :cond_9

    if-ge v1, v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    return v0
.end method
