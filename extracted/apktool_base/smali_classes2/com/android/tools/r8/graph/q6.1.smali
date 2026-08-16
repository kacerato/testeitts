.class public final synthetic Lcom/android/tools/r8/graph/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/A0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/b;

.field public final synthetic b:Ljava/nio/file/Path;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/q6;->a:Lcom/android/tools/r8/naming/b;

    iput-object p2, p0, Lcom/android/tools/r8/graph/q6;->b:Ljava/nio/file/Path;

    iput-object p3, p0, Lcom/android/tools/r8/graph/q6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/q6;->a:Lcom/android/tools/r8/naming/b;

    iget-object v1, p0, Lcom/android/tools/r8/graph/q6;->b:Ljava/nio/file/Path;

    iget-object v2, p0, Lcom/android/tools/r8/graph/q6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/B0;->a(Lcom/android/tools/r8/naming/b;Ljava/nio/file/Path;Ljava/lang/String;Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method
