.class public Lcom/android/tools/r8/internal/pa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/pa0;->b:Z

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/pa0;->c:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/pa0;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/pa0;->e:Z

    iput-boolean p6, p0, Lcom/android/tools/r8/internal/pa0;->f:Z

    sget-boolean p1, Lcom/android/tools/r8/internal/pa0;->g:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa0;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ZLcom/android/tools/r8/internal/qa0;)I
    .locals 3

    .line 4
    iget p2, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1b

    const/4 v2, 0x2

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p2, v0, :cond_2

    const/16 p1, 0x31

    if-eq p2, p1, :cond_1

    const/16 p1, 0x32

    if-eq p2, p1, :cond_0

    return v1

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/pa0;->e:Z

    invoke-static {p1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    add-int/2addr p1, v2

    return p1

    :cond_1
    return v2

    :cond_2
    if-nez p1, :cond_4

    .line 6
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/pa0;->e:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v1

    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public a()Lcom/android/tools/r8/internal/Ea0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa0;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/pa0;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pa0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/pa0;->g:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    const/16 v1, 0x33

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/pa0;->a:I

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/pa0;->b:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x100

    :cond_0
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/pa0;->c:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x200

    :cond_1
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/pa0;->d:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x400

    :cond_2
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/pa0;->e:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x800

    :cond_3
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/pa0;->f:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x1000

    :cond_4
    return v0
.end method
