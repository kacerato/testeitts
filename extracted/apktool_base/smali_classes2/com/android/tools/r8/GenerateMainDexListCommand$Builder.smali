.class public Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
.super Lcom/android/tools/r8/BaseCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/GenerateMainDexListCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "Lcom/android/tools/r8/GenerateMainDexListCommand;",
        "Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/android/tools/r8/graph/u1;

.field private final g:Ljava/util/ArrayList;

.field private h:Lcom/android/tools/r8/StringConsumer;

.field private i:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    .line 9
    new-instance v0, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->h:Lcom/android/tools/r8/StringConsumer;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->i:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 4
    new-instance p1, Lcom/android/tools/r8/graph/u1;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/u1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->h:Lcom/android/tools/r8/StringConsumer;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->i:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/e2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/e2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/z3;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    const-string v3, "."

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/android/tools/r8/shaking/z3;-><init>(Ljava/util/List;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic c([Ljava/nio/file/Path;)V
    .locals 5

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    iget-object v3, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/shaking/y3;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/shaking/y3;-><init>(Ljava/nio/file/Path;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->a(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;[Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->c([Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public addMainDexRules(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/d2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/d2;-><init>(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public addMainDexRulesFiles(Ljava/util/List;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/b2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/b2;-><init>(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs addMainDexRulesFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/c2;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/c2;-><init>(Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;[Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->a(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->makeCommand()Lcom/android/tools/r8/GenerateMainDexListCommand;

    move-result-object v0

    return-object v0
.end method

.method public makeCommand()Lcom/android/tools/r8/GenerateMainDexListCommand;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/shaking/q3;->f:Lcom/android/tools/r8/internal/hC;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 8
    :cond_1
    new-instance v3, Lcom/android/tools/r8/shaking/q3;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/shaking/q3;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/shaking/q3;->a(Ljava/util/List;)V

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/q3;->a()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    goto :goto_0

    .line 11
    :goto_1
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexListCommand;

    iget-object v2, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->f:Lcom/android/tools/r8/graph/u1;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v3

    new-instance v5, Lcom/android/tools/r8/internal/YK;

    iget-object v1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->h:Lcom/android/tools/r8/StringConsumer;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/YK;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    iget-object v6, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->i:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/GenerateMainDexListCommand;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/YK;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/f2;)V

    return-object v0

    .line 14
    :cond_2
    :goto_2
    new-instance v0, Lcom/android/tools/r8/GenerateMainDexListCommand;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/GenerateMainDexListCommand;-><init>(ZZLcom/android/tools/r8/f2;)V

    return-object v0
.end method

.method public setMainDexKeptGraphConsumer(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->i:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    return-object p0
.end method

.method public setMainDexListConsumer(Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->h:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method

.method public setMainDexListOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/StringConsumer$FileConsumer;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    iput-object v0, p0, Lcom/android/tools/r8/GenerateMainDexListCommand$Builder;->h:Lcom/android/tools/r8/StringConsumer;

    return-object p0
.end method
