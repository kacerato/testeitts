.class public final Lcom/android/tools/r8/internal/NA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/j;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 96
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 99
    :goto_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/tools/r8/internal/BU;->f:Lcom/android/tools/r8/internal/kC;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/NA;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->h1()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/IA;)Z
    .locals 2

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object p2

    .line 89
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 92
    sget-boolean v1, Lcom/android/tools/r8/internal/NA;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 93
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/EN0;

    invoke-direct {v1, p2, v0}, Lcom/android/tools/r8/internal/EN0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/A2;)V

    .line 94
    invoke-virtual {p1, p0, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/internal/BU;->g:Lcom/android/tools/r8/internal/kC;

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    iget-object p2, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 39
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot generate emulated dispatch for static method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating (seemingly unnecessary) emulated dispatch for final method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 47
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retargeting non final method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which could lead to invalid runtime execution in overrides."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 34
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/BN0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/BN0;-><init>(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    new-instance v1, Lcom/android/tools/r8/internal/CN0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/CN0;-><init>(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2, p3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p3

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 12
    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v2, p3, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 13
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-nez v1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Static method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is flagged as having a covariant return type, which is not possible."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Covariant retargeting of non final method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which could lead to invalid runtime execution in overrides."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 23
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->e:Lcom/android/tools/r8/internal/kC;

    .line 24
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    new-instance v1, Lcom/android/tools/r8/internal/xN0;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/tools/r8/internal/xN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/j1;)V

    .line 101
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 103
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 104
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 105
    iget-object v1, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 106
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    iget-object p4, p4, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    .line 107
    invoke-virtual {v0, v1, p2, p4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 108
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->g:Lcom/android/tools/r8/internal/kC;

    .line 109
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    iget-object v1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->d:Lcom/android/tools/r8/internal/kC;

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/tools/r8/internal/FN0;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/tools/r8/internal/FN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/android/tools/r8/internal/AN0;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/tools/r8/internal/AN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-static {p4, v0, p2}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/IA;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 54
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->i:Lcom/android/tools/r8/internal/kC;

    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void

    .line 56
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 57
    new-instance p3, Lcom/android/tools/r8/internal/Yj;

    .line 58
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    const/4 v1, 0x1

    invoke-direct {p3, v1, v0}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 59
    new-instance v0, Lcom/android/tools/r8/internal/Yj;

    .line 60
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/Yj;-><init>(ILcom/android/tools/r8/graph/A2;)V

    .line 61
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/cu;

    invoke-direct {v2, p3, v0, p2, v1}, Lcom/android/tools/r8/internal/cu;-><init>(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/Yj;Ljava/util/LinkedHashMap;)V

    .line 63
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->h:Lcom/android/tools/r8/internal/kC;

    .line 64
    invoke-virtual {p1, p4, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    .line 86
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, p3, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/BU;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 65
    iget-object v0, p1, Lcom/android/tools/r8/internal/IA;->f:Lcom/android/tools/r8/internal/nC;

    .line 66
    new-instance v1, Lcom/android/tools/r8/internal/GN0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/GN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;)V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 68
    iget-object v0, p1, Lcom/android/tools/r8/internal/IA;->g:Lcom/android/tools/r8/internal/nC;

    .line 69
    new-instance v1, Lcom/android/tools/r8/internal/HN0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/HN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IN0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/IN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;)V

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 73
    iget-object v0, p1, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 74
    new-instance v1, Lcom/android/tools/r8/internal/JN0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/JN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 76
    iget-object v0, p1, Lcom/android/tools/r8/internal/IA;->j:Lcom/android/tools/r8/internal/nC;

    .line 77
    new-instance v1, Lcom/android/tools/r8/internal/KN0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/KN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 79
    iget-object v0, p1, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    .line 80
    new-instance v1, Lcom/android/tools/r8/internal/LN0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/LN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 82
    iget-object p1, p0, Lcom/android/tools/r8/internal/NA;->b:Ljava/util/Set;

    const-string p2, "Cannot retarget missing references: "

    invoke-interface {p3, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/yN0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/internal/yN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;)V

    new-instance v1, Lcom/android/tools/r8/internal/zN0;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/tools/r8/internal/zN0;-><init>(Lcom/android/tools/r8/internal/NA;Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/NA;->a:Lcom/android/tools/r8/graph/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/DN0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/DN0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    .line 7
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 9
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/NA;->b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/NA;->b(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
