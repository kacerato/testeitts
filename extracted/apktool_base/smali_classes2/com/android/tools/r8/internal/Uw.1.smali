.class public abstract Lcom/android/tools/r8/internal/Uw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lcom/android/tools/r8/internal/Uw;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/Uw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported api "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/android/tools/r8/internal/Dh;->a(Ljava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/android/tools/r8/internal/Uw;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    return-void
.end method


# virtual methods
.method public a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/Uw;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Uw;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Uw;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Uw;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uw;->b:Lcom/android/tools/r8/internal/Uw;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Uw;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void
.end method
