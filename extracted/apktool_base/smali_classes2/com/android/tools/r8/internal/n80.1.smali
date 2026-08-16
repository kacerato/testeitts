.class public Lcom/android/tools/r8/internal/n80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/function/Consumer;

.field public final b:Ljava/util/function/Consumer;

.field public c:Ljava/util/function/Consumer;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/om1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/om1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/tools/r8/internal/pm1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pm1;-><init>(Lcom/android/tools/r8/internal/n80;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->b:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/tools/r8/internal/qm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qm1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->c:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/tools/r8/internal/rm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rm1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/tools/r8/internal/rm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rm1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/tools/r8/internal/rm1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rm1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n80;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/n80;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/internal/n80;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/n80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/n80;-><init>()V

    .line 4
    iput-object p0, v0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    .line 5
    new-instance p0, Lcom/android/tools/r8/internal/lm1;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/lm1;-><init>(Lcom/android/tools/r8/internal/n80;)V

    .line 6
    iput-object p0, v0, Lcom/android/tools/r8/internal/n80;->d:Ljava/lang/Runnable;

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/mm1;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/mm1;-><init>(Lcom/android/tools/r8/internal/n80;)V

    .line 8
    iput-object p0, v0, Lcom/android/tools/r8/internal/n80;->e:Ljava/lang/Runnable;

    .line 9
    new-instance p0, Lcom/android/tools/r8/internal/nm1;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/nm1;-><init>(Lcom/android/tools/r8/internal/n80;)V

    .line 10
    iput-object p0, v0, Lcom/android/tools/r8/internal/n80;->f:Ljava/lang/Runnable;

    .line 11
    iget-object p0, v0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/n80;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/n80;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unhandled"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/n80;)V
    .locals 1

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    const-string v0, "-dontshrink"

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unhandled"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/n80;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    const-string v0, "-dontoptimize"

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/n80;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    const-string v0, "-dontobfuscate"

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unhandled"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/n80;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/internal/n80;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/n80;->c:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-dontobfuscate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/n80;->f:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string v1, "-dontoptimize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/n80;->e:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    const-string v1, "-dontshrink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/n80;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    const-string v1, "-print"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/n80;->c:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/n80;->b:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/n80;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
