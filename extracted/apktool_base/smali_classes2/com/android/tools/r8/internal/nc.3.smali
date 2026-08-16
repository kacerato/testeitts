.class public final Lcom/android/tools/r8/internal/nc;
.super Lcom/android/tools/r8/internal/Uw;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/Uw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Uw;-><init>(ILcom/android/tools/r8/internal/Uw;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 14
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nc;->c:Z

    if-nez v0, :cond_1

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    const/16 v0, 0x31

    .line 16
    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Uw;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nc;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0x31

    .line 2
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/Uw;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nc;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nc;->c:Z

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uw;->a()V

    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nc;->c:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uw;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call a visit method after visitEnd has been called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
