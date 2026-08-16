.class public final Lcom/android/tools/r8/internal/hc;
.super Lcom/android/tools/r8/internal/Q2;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Q2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Q2;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Q2;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    if-nez v0, :cond_2

    .line 18
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Annotation value name must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;I)V

    return-object v0

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    if-nez v0, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Annotation value name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x31

    .line 14
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 22
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    if-nez v0, :cond_7

    .line 2
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Annotation value name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Byte;

    const-string v1, "Invalid annotation value"

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-nez v0, :cond_3

    instance-of v0, p1, [B

    if-nez v0, :cond_3

    instance-of v0, p1, [Z

    if-nez v0, :cond_3

    instance-of v0, p1, [C

    if-nez v0, :cond_3

    instance-of v0, p1, [S

    if-nez v0, :cond_3

    instance-of v0, p1, [I

    if-nez v0, :cond_3

    instance-of v0, p1, [J

    if-nez v0, :cond_3

    instance-of v0, p1, [F

    if-nez v0, :cond_3

    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 10
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->c:Z

    if-nez v0, :cond_4

    .line 28
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/hc;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Annotation value name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x31

    .line 30
    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    if-eqz p3, :cond_3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Q2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid enum value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
