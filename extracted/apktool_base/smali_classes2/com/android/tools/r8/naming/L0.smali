.class public final Lcom/android/tools/r8/naming/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/naming/b;

.field public final b:Lcom/android/tools/r8/internal/nJ;

.field public final c:Lcom/android/tools/r8/naming/Q;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public final e:Lcom/android/tools/r8/dex/W$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/naming/L0;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/b;->e()Lcom/android/tools/r8/naming/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/L0;->a:Lcom/android/tools/r8/naming/b;

    iget-object p1, p3, Lcom/android/tools/r8/internal/nJ;->Q1:Lcom/android/tools/r8/naming/Q;

    iput-object p1, p0, Lcom/android/tools/r8/naming/L0;->c:Lcom/android/tools/r8/naming/Q;

    iput-object p3, p0, Lcom/android/tools/r8/naming/L0;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/naming/L0;->d:Lcom/android/tools/r8/internal/Ef0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/L0;->e:Lcom/android/tools/r8/dex/W$b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/naming/I0;
    .locals 9

    new-instance v0, Lcom/android/tools/r8/naming/K0;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/K0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/naming/L0;->a:Lcom/android/tools/r8/naming/b;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/internal/Kb;)V

    iget-object v1, p0, Lcom/android/tools/r8/naming/L0;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->a2:Lcom/android/tools/r8/MapIdProvider;

    iget-object v0, v0, Lcom/android/tools/r8/naming/K0;->a:Lcom/android/tools/r8/internal/lA;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/lA;->a()Lcom/android/tools/r8/internal/fA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/android/tools/r8/naming/K0;->a(Lcom/android/tools/r8/MapIdProvider;)Lcom/android/tools/r8/MapIdProvider;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/naming/J0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/J0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/MapIdProvider;->get(Lcom/android/tools/r8/MapIdEnvironment;)Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/tools/r8/naming/I0;

    invoke-direct {v8, v1, v0}, Lcom/android/tools/r8/naming/I0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->e:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v4

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v5

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->f1:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_EXPERIMENTAL:Lcom/android/tools/r8/naming/MapVersion;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->STABLE:Lcom/android/tools/r8/naming/MapVersion;

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/tools/r8/naming/z0;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/naming/z0;-><init>(Ljava/lang/String;ZLcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/naming/I0;)V

    iget-object v1, p0, Lcom/android/tools/r8/naming/L0;->a:Lcom/android/tools/r8/naming/b;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/z0;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/naming/L0;->a:Lcom/android/tools/r8/naming/b;

    iget-object v2, v2, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    sget-boolean v3, Lcom/android/tools/r8/internal/AT;->a:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v3

    :goto_2
    iput-object v0, v1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->c:Lcom/android/tools/r8/naming/Q;

    iget-object v1, p0, Lcom/android/tools/r8/naming/L0;->d:Lcom/android/tools/r8/internal/Ef0;

    iget-object v2, p0, Lcom/android/tools/r8/naming/L0;->a:Lcom/android/tools/r8/naming/b;

    invoke-interface {v0, v1, v2}, Lcom/android/tools/r8/naming/Q;->a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/b;)V

    iget-object v0, p0, Lcom/android/tools/r8/naming/L0;->d:Lcom/android/tools/r8/internal/Ef0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/L0;->c:Lcom/android/tools/r8/naming/Q;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/naming/f2;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/naming/f2;-><init>(Lcom/android/tools/r8/naming/Q;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;)V

    return-object v8
.end method
