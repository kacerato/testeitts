.class public final Lcom/android/tools/r8/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/B;


# instance fields
.field public final a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/A;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/graph/A0;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/x0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/x0;-><init>(Lcom/android/tools/r8/A;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/A;->a:Ljava/io/PrintStream;

    return-object p1
.end method

.method public final a()Ljava/util/function/Consumer;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/A;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    iget-object v0, p0, Lcom/android/tools/r8/A;->a:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method
