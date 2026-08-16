.class public final Lcom/android/tools/r8/internal/nq0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/W5;

.field public final b:Lcom/android/tools/r8/internal/f60;

.field public final c:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f60;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nq0;->c:Lcom/android/tools/r8/internal/dH;

    sget-boolean v0, Lcom/android/tools/r8/internal/nq0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/nq0;->b:Lcom/android/tools/r8/internal/f60;

    return-void
.end method
