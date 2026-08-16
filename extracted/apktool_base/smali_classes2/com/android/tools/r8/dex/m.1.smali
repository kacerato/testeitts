.class public abstract Lcom/android/tools/r8/dex/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/dex/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/dex/m;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-static {p2}, Lcom/android/tools/r8/dex/s;->b([B)Lcom/android/tools/r8/dex/s;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->c()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v1, :cond_1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method

.method public final a(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/s;->b(I)I

    move-result p1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/m;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/s;->c(I)V

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/s;->d()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sget-boolean v1, Lcom/android/tools/r8/dex/m;->c:Z

    if-nez v1, :cond_1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method
