.class public final Lcom/android/tools/r8/internal/Uu0;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/concurrent/ExecutionException;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutionException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uu0;->b:Ljava/util/concurrent/ExecutionException;

    return-void
.end method
