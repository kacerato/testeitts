.class public final Lcom/android/tools/r8/internal/kf0;
.super Lcom/android/tools/r8/internal/bt0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    sget-boolean p1, Lcom/android/tools/r8/internal/kf0;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/kf0;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/tools/r8/internal/kf0;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    return-object p1
.end method
