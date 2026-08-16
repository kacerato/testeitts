.class public final Lcom/android/tools/r8/internal/nt0;
.super Lcom/android/tools/r8/internal/BJ;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/Callable;

.field public final synthetic e:Lcom/android/tools/r8/internal/ot0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ot0;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/nt0;->e:Lcom/android/tools/r8/internal/ot0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/BJ;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nt0;->d:Ljava/util/concurrent/Callable;

    return-void
.end method
