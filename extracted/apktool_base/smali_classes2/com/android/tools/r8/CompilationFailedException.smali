.class public Lcom/android/tools/r8/CompilationFailedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/CompilationFailedException;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-boolean p3, p0, Lcom/android/tools/r8/CompilationFailedException;->b:Z

    return-void
.end method


# virtual methods
.method public wasCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/CompilationFailedException;->b:Z

    return v0
.end method
