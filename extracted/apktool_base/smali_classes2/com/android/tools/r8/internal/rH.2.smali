.class public final Lcom/android/tools/r8/internal/rH;
.super Lcom/android/tools/r8/internal/pH;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/G30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/sH;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/pH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->a()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tH;->b()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/S;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
