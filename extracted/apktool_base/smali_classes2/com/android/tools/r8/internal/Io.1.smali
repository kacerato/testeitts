.class public final Lcom/android/tools/r8/internal/Io;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Lcom/android/tools/r8/internal/xb0;

.field public c:Z

.field public final d:Lcom/android/tools/r8/internal/CX;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/xb0;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Io;->a:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Io;->b:Lcom/android/tools/r8/internal/xb0;

    new-instance p1, Lcom/android/tools/r8/internal/CX;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/CX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Io;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    iget-boolean v1, v0, Lcom/android/tools/r8/internal/CX;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/CX;->b:Ljava/lang/String;

    const-string v1, "<clinit>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Io;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Io;->d:Lcom/android/tools/r8/internal/CX;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/CX;->a:Z

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
