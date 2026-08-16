.class public final Lcom/android/tools/r8/internal/cw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/mS;

.field public final b:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/mS;Lcom/android/tools/r8/internal/qd0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/cw0;->c:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/android/tools/r8/internal/x1;->b:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/cw0;->a:Lcom/android/tools/r8/internal/mS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cw0;->b:Lcom/android/tools/r8/internal/qd0;

    return-void
.end method
