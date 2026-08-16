.class public final Lcom/android/tools/r8/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/android/tools/r8/CompilationFailedException;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/CompilationFailedException;

    const-string v1, "Compilation failed to complete"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/CompilationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/CompilationFailedException;
    .locals 3

    .line 4
    new-instance v0, Lcom/android/tools/r8/CompilationFailedException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/CompilationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;Z)Lcom/android/tools/r8/CompilationFailedException;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/CompilationFailedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/CompilationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/android/tools/r8/CompilationFailedException;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/CompilationFailedException;

    const-string v1, "Compilation failed to complete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/tools/r8/CompilationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-object v0
.end method
