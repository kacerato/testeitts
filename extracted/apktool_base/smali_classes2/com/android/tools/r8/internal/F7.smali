.class public final Lcom/android/tools/r8/internal/F7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/we;


# static fields
.field public static final f:Lcom/android/tools/r8/internal/F7;

.field public static final g:Lcom/android/tools/r8/internal/F7;

.field public static final h:Lcom/android/tools/r8/internal/F7;

.field public static final synthetic i:Z = true


# instance fields
.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/F7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/F7;-><init>(ZZ)V

    sput-object v0, Lcom/android/tools/r8/internal/F7;->f:Lcom/android/tools/r8/internal/F7;

    new-instance v0, Lcom/android/tools/r8/internal/F7;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/F7;-><init>(ZZ)V

    sput-object v0, Lcom/android/tools/r8/internal/F7;->g:Lcom/android/tools/r8/internal/F7;

    new-instance v0, Lcom/android/tools/r8/internal/F7;

    invoke-direct {v0, v2, v2}, Lcom/android/tools/r8/internal/F7;-><init>(ZZ)V

    sput-object v0, Lcom/android/tools/r8/internal/F7;->h:Lcom/android/tools/r8/internal/F7;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/F7;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/F7;->d:Z

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/F7;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/t40;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/F7;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/F7;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/F7;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/F7;->e:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    return-object v0
.end method
