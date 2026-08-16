.class public final Lcom/android/tools/r8/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/CompilationMode;

.field public b:Lcom/android/tools/r8/OutputMode;

.field public c:Ljava/nio/file/Path;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/m0;->a:Lcom/android/tools/r8/CompilationMode;

    iput-object v0, p0, Lcom/android/tools/r8/m0;->b:Lcom/android/tools/r8/OutputMode;

    iput-object v0, p0, Lcom/android/tools/r8/m0;->c:Ljava/nio/file/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/m0;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/m0;->e:Z

    return-void
.end method
