.class public Lcom/android/tools/r8/internal/L00;
.super Lcom/android/tools/r8/internal/i40;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/i40;
    .locals 4

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    const-string v0, "Prune NonEmptyOpenClosedInterfacesCollection"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v3, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 18
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/L00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/L00;-><init>(Ljava/util/Set;)V

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/i40;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/L00;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/L00;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/i40;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/AL0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/AL0;-><init>(Lcom/android/tools/r8/internal/L00;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite NonEmptyOpenClosedInterfacesCollection"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/i40;

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/L00;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/L00;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
