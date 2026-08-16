.class public final Lcom/android/tools/r8/internal/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/C;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/android/tools/r8/internal/C;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/C;->c:Lcom/android/tools/r8/internal/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/C;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
