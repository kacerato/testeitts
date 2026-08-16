.class public final Lcom/android/tools/r8/internal/nt;
.super Lcom/android/tools/r8/internal/pt;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/nt;->a:Ljava/nio/file/Path;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pt;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nt;->a:Ljava/nio/file/Path;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
