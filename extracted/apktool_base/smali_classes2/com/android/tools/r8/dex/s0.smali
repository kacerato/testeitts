.class public final Lcom/android/tools/r8/dex/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/dex/M;


# static fields
.field public static final synthetic r:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/Set;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/Set;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/IdentityHashMap;

.field public final l:Ljava/util/IdentityHashMap;

.field public final m:Ljava/util/IdentityHashMap;

.field public final n:Ljava/util/IdentityHashMap;

.field public final o:Ljava/util/IdentityHashMap;

.field public final p:Ljava/util/IdentityHashMap;

.field public final q:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->d:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->i:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->k:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->l:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->m:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->n:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->o:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->p:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/dex/s0;->q:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/s0;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->d:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/dex/s0;->b:Ljava/util/HashMap;

    new-instance v2, Lu/G1;

    invoke-direct {v2, p0}, Lu/G1;-><init>(Lcom/android/tools/r8/dex/s0;)V

    iget-object v3, p0, Lcom/android/tools/r8/dex/s0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/AbstractMap;Ljava/util/HashMap;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/dex/s0;->r:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/I2;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/dex/s0;->d:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/dex/s0;->b:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/dex/s0;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/I2;Ljava/util/AbstractMap;Ljava/util/HashMap;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/u1;)Z

    move-result p1

    return p1
.end method
