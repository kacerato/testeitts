.class public abstract Lcom/android/tools/r8/internal/Fn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/zE;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/zE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Fn;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/Fn;->c:I

    sget-boolean v0, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Fn;->a:Lcom/android/tools/r8/internal/zE;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Fn;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/Fn;->b:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Fn;->b:I

    return v0
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Kn;)I
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method
