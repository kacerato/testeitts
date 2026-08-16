.class public final Lcom/android/tools/r8/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/u;

.field public static final d:Lcom/android/tools/r8/internal/u;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/D;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/android/tools/r8/internal/u;->d:Lcom/android/tools/r8/internal/u;

    sput-object v1, Lcom/android/tools/r8/internal/u;->c:Lcom/android/tools/r8/internal/u;

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/u;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/u;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, Lcom/android/tools/r8/internal/u;->d:Lcom/android/tools/r8/internal/u;

    new-instance v0, Lcom/android/tools/r8/internal/u;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/u;-><init>(ZLjava/lang/RuntimeException;)V

    sput-object v0, Lcom/android/tools/r8/internal/u;->c:Lcom/android/tools/r8/internal/u;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/u;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/u;->b:Ljava/lang/RuntimeException;

    return-void
.end method
