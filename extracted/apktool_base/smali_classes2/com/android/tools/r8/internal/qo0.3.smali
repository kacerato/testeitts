.class public abstract Lcom/android/tools/r8/internal/qo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/qo0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/m1;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/internal/qo0$a;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/qo0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/qo0$a;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;Lcom/android/tools/r8/startup/StartupProfileProvider;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/qo0;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    new-instance v1, Lcom/android/tools/r8/internal/gr1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/gr1;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/qo0;
    .locals 5

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    .line 14
    sget-boolean v1, Lcom/android/tools/r8/internal/po0;->j:Z

    if-nez v1, :cond_1

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/po0;->i:Lcom/android/tools/r8/internal/nJ;

    .line 16
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v1, :cond_1

    .line 17
    instance-of v1, v1, Lcom/android/tools/r8/internal/ob0;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/startup/StartupProfileProvider;

    .line 22
    invoke-interface {v2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    .line 23
    invoke-static {p0, v3, v2}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;Lcom/android/tools/r8/startup/StartupProfileProvider;)Lcom/android/tools/r8/internal/qo0$a;

    move-result-object v4

    .line 24
    invoke-interface {v2, v4}, Lcom/android/tools/r8/startup/StartupProfileProvider;->getStartupProfile(Lcom/android/tools/r8/startup/StartupProfileBuilder;)V

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/qo0$a;->a()Lcom/android/tools/r8/internal/qo0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, v3, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v3}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {v1}, Lcom/android/tools/r8/internal/qo0;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_5

    return-object p0

    .line 30
    :cond_5
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/qo0;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/qo0$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qo0$a;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/qo0;

    .line 3
    new-instance v4, Lcom/android/tools/r8/internal/fr1;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/fr1;-><init>(Lcom/android/tools/r8/internal/qo0$a;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/Wr0;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qo0$a;->a()Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;-><init>(Lcom/android/tools/r8/graph/x0;)V

    .line 8
    iput-object p1, v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->c:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
    .locals 0

    .line 9
    invoke-static {}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/android/tools/r8/internal/qo0;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/Zt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zt;-><init>()V

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/qo0;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object p0

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/pb0;->g:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/pb0;->f:Lcom/android/tools/r8/internal/qo0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/pb0;->f:Lcom/android/tools/r8/internal/qo0;

    return-object p0

    .line 8
    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/hr1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hr1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/qo0;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/qo0;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Wr0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/tools/r8/internal/Wr0<",
            "-",
            "Lcom/android/tools/r8/internal/yo0;",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public abstract c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;
.end method

.method public abstract c()Z
.end method
