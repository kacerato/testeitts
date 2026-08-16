.class public abstract Lcom/android/tools/r8/internal/Tf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Tl0;

.field public final b:Lcom/android/tools/r8/internal/ig0;

.field public c:Lcom/android/tools/r8/internal/V10;

.field public final d:Ljava/util/HashSet;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tl0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/V10;->c:Lcom/android/tools/r8/internal/V10;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tf0;->c:Lcom/android/tools/r8/internal/V10;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Tf0;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tf0;->a:Lcom/android/tools/r8/internal/Tl0;

    new-instance p1, Lcom/android/tools/r8/internal/ig0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ig0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x25

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 2
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/ig0;->h:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Tf0;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tf0;->a:Lcom/android/tools/r8/internal/Tl0;

    new-instance v1, Lcom/android/tools/r8/internal/zX0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/zX0;-><init>(Lcom/android/tools/r8/internal/Tf0;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/N60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tf0;->a:Lcom/android/tools/r8/internal/Tl0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/N60;-><init>(Lcom/android/tools/r8/internal/Tl0;Lcom/android/tools/r8/internal/ig0;Ljava/util/HashSet;Z)V

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/N60;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Tf0;->e:Z

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Tf0;->f:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    .line 2
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/wX0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/wX0;-><init>()V

    .line 3
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/xX0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/xX0;-><init>()V

    .line 4
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/yX0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/yX0;-><init>()V

    .line 5
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 6
    const-string v3, "\n"

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.content.res.Resources#getIdentifier present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nWeb content present: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\nReferenced Strings:\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
