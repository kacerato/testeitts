.class public final Lcom/android/tools/r8/graph/G4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/Set;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/G4;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/G4;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/G4;->c:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/G4;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/G4;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/G4;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/G4;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/G4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/D4;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/G4;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/G4;->a:Ljava/util/IdentityHashMap;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/D4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/D4;->getReference()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
