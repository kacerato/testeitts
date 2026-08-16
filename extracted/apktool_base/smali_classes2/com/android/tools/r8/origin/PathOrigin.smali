.class public Lcom/android/tools/r8/origin/PathOrigin;
.super Lcom/android/tools/r8/origin/Origin;
.source "SourceFile"


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private final f:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->root()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/origin/Origin;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    sget-boolean v0, Lcom/android/tools/r8/origin/PathOrigin;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/origin/PathOrigin;->f:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/origin/PathOrigin;->f:Ljava/nio/file/Path;

    return-object v0
.end method

.method public part()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/origin/PathOrigin;->f:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
