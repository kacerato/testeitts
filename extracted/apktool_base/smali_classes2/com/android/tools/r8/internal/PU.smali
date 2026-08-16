.class public Lcom/android/tools/r8/internal/PU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MapIdProvider;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/nC;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    invoke-static {}, Lcom/android/tools/r8/internal/PU;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/bR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bR0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/PU;->c:Lcom/android/tools/r8/internal/nC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/PU;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/MapIdProvider;
    .locals 7

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/PU;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/PU;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    const/16 v0, 0x25

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    :goto_2
    if-ltz v2, :cond_4

    .line 6
    sget-object v3, Lcom/android/tools/r8/internal/PU;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3

    :cond_3
    add-int/2addr v4, v2

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid template variable starting with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    add-int/lit8 v2, v2, 0x1

    .line 11
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/PU;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/PU;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MAP_HASH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/MapIdEnvironment;Ljava/lang/String;Lcom/android/tools/r8/MapIdProvider;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    invoke-interface {p3, p1}, Lcom/android/tools/r8/MapIdProvider;->get(Lcom/android/tools/r8/MapIdEnvironment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    return-void
.end method

.method public final get(Lcom/android/tools/r8/MapIdEnvironment;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/PU;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    sget-object v0, Lcom/android/tools/r8/internal/PU;->c:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/internal/cR0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/cR0;-><init>(Lcom/android/tools/r8/internal/PU;Lcom/android/tools/r8/MapIdEnvironment;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/PU;->b:Ljava/lang/String;

    return-object p1
.end method
