.class public interface abstract Lcom/android/tools/r8/internal/nA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b()Lcom/android/tools/r8/internal/nA;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/mA;

    sget v1, Lcom/android/tools/r8/internal/pA;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/oA;->a:Lcom/android/tools/r8/internal/hW;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hW;->a()Lcom/android/tools/r8/internal/lA;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/mA;-><init>(Lcom/android/tools/r8/internal/lA;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(D)V
.end method

.method public abstract a(F)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract a([B)V
.end method
