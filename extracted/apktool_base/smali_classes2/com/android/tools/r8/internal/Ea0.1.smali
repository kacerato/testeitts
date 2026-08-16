.class public final Lcom/android/tools/r8/internal/Ea0;
.super Lcom/android/tools/r8/internal/pa0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/tools/r8/internal/pa0;-><init>(IZZZZZ)V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/android/tools/r8/internal/qa0;)I
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa0;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x33

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/qa0;->a(I)Lcom/android/tools/r8/internal/pa0;

    move-result-object p2

    .line 4
    iget p2, p2, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    const/4 v2, 0x0

    if-eq p2, v0, :cond_0

    const/16 p1, 0x11

    if-eq p2, p1, :cond_3

    return v2

    :cond_0
    if-nez p1, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/pa0;->e:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 6
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final a()Lcom/android/tools/r8/internal/Ea0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Z)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/Ea0;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v1, 0x33

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
