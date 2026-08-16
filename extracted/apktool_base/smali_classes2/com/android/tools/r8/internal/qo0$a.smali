.class public Lcom/android/tools/r8/internal/qo0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/l1;
.implements Lcom/android/tools/r8/startup/StartupProfileBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/qo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/l1;",
        "Lcom/android/tools/r8/startup/StartupProfileBuilder;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

.field public c:Lcom/android/tools/r8/internal/Ef0;

.field public final d:Lcom/android/tools/r8/startup/StartupProfileProvider;

.field public final e:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->d:Lcom/android/tools/r8/startup/StartupProfileProvider;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->d:Lcom/android/tools/r8/startup/StartupProfileProvider;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;Lcom/android/tools/r8/startup/StartupProfileProvider;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->a:Lcom/android/tools/r8/graph/u1;

    .line 15
    iput-object p2, p0, Lcom/android/tools/r8/internal/qo0$a;->b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qo0$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 17
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    .line 18
    iput-object p3, p0, Lcom/android/tools/r8/internal/qo0$a;->d:Lcom/android/tools/r8/startup/StartupProfileProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/o1;)Lcom/android/tools/r8/internal/l1;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/to0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/to0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;
    .locals 2

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/r1;)Lcom/android/tools/r8/internal/l1;
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/yo0;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/yo0;)Lcom/android/tools/r8/internal/qo0$a;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/qo0;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/P00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/P00;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    .line 10
    new-instance v1, Lcom/android/tools/r8/internal/so0;

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/to0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/to0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/to0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/internal/HA;->a()Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/HA$a;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    invoke-static {p0}, Lcom/android/tools/r8/internal/h4;->a(Lcom/android/tools/r8/startup/StartupProfileBuilder;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/HA$a;->a(Lcom/android/tools/r8/profile/art/ArtProfileBuilder;)Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/HA$a;->a()Lcom/android/tools/r8/internal/HA;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->d:Lcom/android/tools/r8/startup/StartupProfileProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/HA;->a(Lcom/android/tools/r8/TextInputStream;Lcom/android/tools/r8/origin/Origin;)V

    return-object p0
.end method

.method public final addStartupClass(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v1, Lcom/android/tools/r8/internal/so0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/so0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/tools/r8/internal/to0;

    iget-object v0, v1, Lcom/android/tools/r8/internal/so0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/to0;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    iget-object v2, v1, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a:Lcom/android/tools/r8/graph/x0;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/android/tools/r8/graph/d1;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, v1, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a:Lcom/android/tools/r8/graph/x0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v1, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addStartupMethod(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v1, Lcom/android/tools/r8/internal/uo0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/uo0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/tools/r8/internal/vo0;

    iget-object v0, v1, Lcom/android/tools/r8/internal/uo0;->b:Lcom/android/tools/r8/graph/A2;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/vo0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->b:Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    iget-object v1, v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a:Lcom/android/tools/r8/graph/x0;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->L:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/qo0$a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vo0;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/m1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qo0$a;->a()Lcom/android/tools/r8/internal/qo0;

    move-result-object v0

    return-object v0
.end method
