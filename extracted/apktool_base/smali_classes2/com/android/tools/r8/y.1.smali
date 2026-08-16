.class public final Lcom/android/tools/r8/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/B;


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/y;->a:Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/android/tools/r8/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/graph/A0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/y;->a:Ljava/nio/file/Path;

    iget-object v1, p0, Lcom/android/tools/r8/y;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;)Lcom/android/tools/r8/graph/A0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/function/Consumer;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/j4;

    invoke-direct {v0}, Lcom/android/tools/r8/j4;-><init>()V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method
