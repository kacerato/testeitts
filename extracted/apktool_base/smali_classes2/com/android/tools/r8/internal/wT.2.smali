.class public final Lcom/android/tools/r8/internal/wT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/X7;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/X7;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/wT;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/kT;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v2, 0xff

    if-nez v1, :cond_5

    if-ltz p1, :cond_4

    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    and-int/2addr p1, v2

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/X7;->a(I)V

    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/wT;->c:Z

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v2, 0xff

    if-nez v1, :cond_5

    if-ltz p1, :cond_4

    if-gt p1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    and-int/2addr p1, v2

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/X7;->a(I)V

    if-gt p2, v2, :cond_8

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    if-nez v1, :cond_7

    if-ltz p2, :cond_6

    if-gt p2, v2, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    and-int/lit16 v0, p2, 0xff

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/X7;->a(I)V

    goto :goto_4

    .line 14
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/X7;->a(I)V

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    .line 16
    :goto_4
    iput p2, p0, Lcom/android/tools/r8/internal/wT;->b:I

    return-void
.end method

.method public final b(I)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/wT;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/wT;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/wT;->a:Lcom/android/tools/r8/internal/X7;

    sget-boolean v1, Lcom/android/tools/r8/internal/o8;->a:Z

    const/16 v2, 0xff

    if-nez v1, :cond_3

    if-ltz p1, :cond_2

    if-gt p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    and-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/X7;->a(I)V

    return-void
.end method
