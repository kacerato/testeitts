.class public abstract Lcom/android/tools/r8/internal/v50;
.super Lcom/android/tools/r8/internal/D1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)Lcom/android/tools/r8/internal/u50;
.end method

.method public abstract a(ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/v50;
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    check-cast p2, Lcom/android/tools/r8/internal/v50;

    instance-of p1, p0, Lcom/android/tools/r8/internal/v7;

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Lcom/android/tools/r8/internal/v7;

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    instance-of p1, p0, Lcom/android/tools/r8/internal/wv0;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/android/tools/r8/internal/wv0;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/v50;->d()Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/v50;->d()Lcom/android/tools/r8/internal/O00;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/O00;->a(Lcom/android/tools/r8/internal/O00;)Lcom/android/tools/r8/internal/O00;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/wv0;->b:Lcom/android/tools/r8/internal/wv0;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/D1;
    .locals 0

    return-object p0
.end method

.method public d()Lcom/android/tools/r8/internal/O00;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract e()Lcom/android/tools/r8/internal/v50;
.end method
