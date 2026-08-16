.class public final Lcom/android/tools/r8/dex/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/Np;

.field public b:Lcom/android/tools/r8/internal/Np;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/dex/T;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    iput-object p2, p0, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    iput-boolean p3, p0, Lcom/android/tools/r8/dex/T;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/dex/T;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/T;->b:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/T;->a:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
