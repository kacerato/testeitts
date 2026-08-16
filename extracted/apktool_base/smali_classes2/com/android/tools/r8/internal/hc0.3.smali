.class public abstract Lcom/android/tools/r8/internal/hc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/hc0;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/hc0;)V
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
    iput-object p2, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
.end method

.method public abstract a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
.end method

.method public abstract a()V
.end method

.method public a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/hc0;->a:Lcom/android/tools/r8/internal/hc0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hc0;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void
.end method
