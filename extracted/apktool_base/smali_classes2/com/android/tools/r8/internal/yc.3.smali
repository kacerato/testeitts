.class public final Lcom/android/tools/r8/internal/yc;
.super Lcom/android/tools/r8/internal/hc0;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/hc0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/hc0;-><init>(ILcom/android/tools/r8/internal/hc0;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yc;->b:Z

    if-nez v0, :cond_2

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 18
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    const/16 v0, 0x31

    .line 19
    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/hc0;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 26
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yc;->b:Z

    if-nez v0, :cond_1

    const/16 v0, 0x31

    .line 2
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/hc0;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yc;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/yc;->b:Z

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hc0;->a()V

    :cond_0
    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yc;->b:Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hc0;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
