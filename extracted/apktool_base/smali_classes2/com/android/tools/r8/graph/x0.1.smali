.class public abstract Lcom/android/tools/r8/graph/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Lcom/android/tools/r8/naming/b;

.field public final c:Lcom/android/tools/r8/internal/ns0;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Lcom/android/tools/r8/graph/u1;

.field public final f:Lcom/android/tools/r8/graph/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/x0;->b:Lcom/android/tools/r8/naming/b;

    iput-object p2, p0, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    iput-object p3, p0, Lcom/android/tools/r8/graph/x0;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p4, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p4, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    iput-object p5, p0, Lcom/android/tools/r8/graph/x0;->c:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/w4$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/w4$a;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/graph/w4$a;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/Dh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Dh;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/graph/g3;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Cannot use a LazyDexApplication where a DirectDexApplication is expected."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Ljava/util/function/Consumer;)V
.end method

.method public final b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    return-object v0
.end method

.method public abstract b(Ljava/util/function/Consumer;)V
.end method

.method public abstract c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
.end method

.method public abstract c()Lcom/android/tools/r8/graph/w0;
.end method

.method public d()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->h()Ljava/util/Collection;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/x0;->g:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/tools/r8/internal/nJ;->e2:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/H2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/graph/Dh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Dh;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->h()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public final f()Lcom/android/tools/r8/graph/z0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->f:Lcom/android/tools/r8/graph/z0;

    return-object v0
.end method

.method public abstract g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
.end method

.method public g()Lcom/android/tools/r8/naming/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->b:Lcom/android/tools/r8/naming/b;

    return-object v0
.end method

.method public abstract h()Ljava/util/Collection;
.end method

.method public abstract i()Lcom/android/tools/r8/graph/g3;
.end method
