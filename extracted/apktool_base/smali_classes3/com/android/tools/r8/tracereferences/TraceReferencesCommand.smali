.class public Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Lcom/android/tools/r8/internal/Ef0;

.field private final d:Lcom/android/tools/r8/internal/hC;

.field private final e:Lcom/android/tools/r8/internal/hC;

.field private final f:Lcom/android/tools/r8/internal/hC;

.field private final g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->a:Z

    .line 11
    iput-boolean p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->b:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->d:Lcom/android/tools/r8/internal/hC;

    .line 14
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->e:Lcom/android/tools/r8/internal/hC;

    .line 15
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->f:Lcom/android/tools/r8/internal/hC;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    return-void
.end method

.method public constructor <init>(ZZLcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->b:Z

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    iput-object p4, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->d:Lcom/android/tools/r8/internal/hC;

    .line 6
    iput-object p5, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->e:Lcom/android/tools/r8/internal/hC;

    .line 7
    iput-object p6, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->f:Lcom/android/tools/r8/internal/hC;

    .line 8
    iput-object p7, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    return-void
.end method

.method public static builder()Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    .line 3
    new-instance v1, Lcom/android/tools/r8/tracereferences/c;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/c;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/tracereferences/I;)V

    return-object v0
.end method

.method public static builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/tracereferences/I;)V

    return-object v0
.end method

.method public static parse(Ljava/util/Collection;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/origin/Origin;",
            ")",
            "Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/android/tools/r8/tracereferences/h;

    invoke-static {}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->builder()Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/tracereferences/h;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/tracereferences/h;

    invoke-static {}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->builder()Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/tracereferences/h;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/tracereferences/h;

    .line 5
    invoke-static {p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/tracereferences/h;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;)Lcom/android/tools/r8/tracereferences/TraceReferencesCommand$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/internal/nJ;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->T0:Z

    iget-object v1, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->g:Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer;

    sget-object v2, Lcom/android/tools/r8/dex/W$b;->h:Lcom/android/tools/r8/dex/W$b;

    invoke-static {v2}, Lcom/android/tools/r8/internal/rt;->a(Lcom/android/tools/r8/dex/W$b;)Lcom/android/tools/r8/internal/rt$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/rt$a;->c()Lcom/android/tools/r8/internal/rt$a;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/internal/rt$a;->y:Ljava/lang/String;

    instance-of v3, v1, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;

    invoke-virtual {v1}, Lcom/android/tools/r8/tracereferences/TraceReferencesKeepRules;->allowObfuscation()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/rt$a;->d(Z)Lcom/android/tools/r8/internal/rt$a;

    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/rt$a;->a()Lcom/android/tools/r8/internal/rt;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/nJ;->w0:Lcom/android/tools/r8/internal/rt;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->d:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/Ef0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->c:Lcom/android/tools/r8/internal/Ef0;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->f:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/hC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->e:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public isPrintHelp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->a:Z

    return v0
.end method

.method public isPrintVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/tracereferences/TraceReferencesCommand;->b:Z

    return v0
.end method
