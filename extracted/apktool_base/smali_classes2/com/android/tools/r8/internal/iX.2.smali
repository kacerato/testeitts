.class public final Lcom/android/tools/r8/internal/iX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/iX;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/iX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iX;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/iX;->b:Lcom/android/tools/r8/internal/iX;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    .line 3
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/iX;->a:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dH;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/iX;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/iX;->a:Lcom/android/tools/r8/internal/dH;

    return-void
.end method
