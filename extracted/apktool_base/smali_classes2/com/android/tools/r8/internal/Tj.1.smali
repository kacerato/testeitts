.class public abstract Lcom/android/tools/r8/internal/Tj;
.super Lcom/android/tools/r8/internal/Uj;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Uj;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tj;->d:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/Rj;)Ljava/util/List;
    .locals 1

    .line 3
    sget-boolean p0, Lcom/android/tools/r8/internal/Tj;->e:Z

    if-eqz p0, :cond_0

    .line 4
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unexpected joining of not visited node"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Qj;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Rj;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Rj;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/util/List;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Rj;
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Uj;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/Qj;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Rj;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Rj;Ljava/util/List;)Lcom/android/tools/r8/internal/Ys0;
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Rj;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Tj;->a(Lcom/android/tools/r8/internal/Rj;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Rj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tj;->d:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/AX0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AX0;-><init>()V

    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Tj;->a(Lcom/android/tools/r8/internal/Rj;Ljava/util/List;)Lcom/android/tools/r8/internal/Ys0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/BX0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BX0;-><init>(Lcom/android/tools/r8/internal/Tj;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/internal/Qj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/Rj;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Tj;->b(Lcom/android/tools/r8/internal/Rj;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Rj;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tj;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    sget-boolean v2, Lcom/android/tools/r8/internal/Tj;->e:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/CX0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/CX0;-><init>(Lcom/android/tools/r8/internal/Tj;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Tj;->a(Lcom/android/tools/r8/internal/Rj;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uj;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Qj;

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/Rj;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Rj;->d:Ljava/lang/Object;

    return-object p1
.end method
