.class public final Lcom/android/tools/r8/internal/A00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A00;->b:Lcom/android/tools/r8/graph/y;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/A00;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/A00;->b:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    sget-boolean v1, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l;->b()V

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/A00;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoServiceLoaders"

    return-object v0
.end method
