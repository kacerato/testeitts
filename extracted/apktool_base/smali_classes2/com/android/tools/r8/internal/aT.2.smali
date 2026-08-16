.class public abstract Lcom/android/tools/r8/internal/aT;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/z10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/z10;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/aT;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/aT;->a:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/aT;->a:Z

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/aT;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result p1

    return p1
.end method

.method public abstract a(ILjava/util/function/IntFunction;Lcom/android/tools/r8/internal/z7;Ljava/util/function/Function;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/f60;
.end method

.method public abstract a(ILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
.end method

.method public abstract a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;
.end method

.method public abstract a(Ljava/lang/Object;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/xw0;
.end method
