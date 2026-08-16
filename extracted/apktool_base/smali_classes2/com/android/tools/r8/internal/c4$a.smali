.class public Lcom/android/tools/r8/internal/c4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
.implements Lcom/android/tools/r8/internal/l1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/profile/art/ArtProfileBuilder;",
        "Lcom/android/tools/r8/internal/l1;"
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/Ef0;

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->b:Lcom/android/tools/r8/graph/u1;

    .line 9
    iget-object p1, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->b:Lcom/android/tools/r8/graph/u1;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/z4;)Lcom/android/tools/r8/internal/z4;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    .line 13
    :cond_0
    check-cast p2, Lcom/android/tools/r8/internal/q4;

    .line 14
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 16
    iput-object v0, p1, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p0

    .line 18
    iget v1, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 19
    iget p0, p0, Lcom/android/tools/r8/internal/r4;->a:I

    or-int/2addr p0, v1

    .line 20
    iput p0, v0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 21
    iget-object p0, p1, Lcom/android/tools/r8/internal/q4$a;->c:Lcom/android/tools/r8/internal/r4$a;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/q4;->f()Lcom/android/tools/r8/internal/r4;

    move-result-object p2

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 23
    iget p2, p2, Lcom/android/tools/r8/internal/r4;->a:I

    or-int/2addr p2, v0

    .line 24
    iput p2, p0, Lcom/android/tools/r8/internal/r4$a;->a:I

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/j4;)Lcom/android/tools/r8/internal/c4$a;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/internal/j4;->b:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/q4;->e()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/Q61;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Q61;-><init>(Lcom/android/tools/r8/internal/q4;)V

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/z4;)Lcom/android/tools/r8/internal/c4$a;
    .locals 2

    .line 26
    new-instance v0, Lcom/android/tools/r8/internal/O61;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/O61;-><init>(Lcom/android/tools/r8/internal/c4$a;)V

    new-instance v1, Lcom/android/tools/r8/internal/P61;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/P61;-><init>(Lcom/android/tools/r8/internal/c4$a;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/z4;->a(Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/internal/Xr0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/c4$a;

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/internal/c4;
    .locals 2

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/c4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c4;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/o1;)Lcom/android/tools/r8/internal/l1;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/j4;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/j4;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/q4;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/r1;)Lcom/android/tools/r8/internal/l1;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    check-cast p1, Lcom/android/tools/r8/internal/z4;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/z4;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 29
    new-instance v1, Lcom/android/tools/r8/internal/i4;

    .line 30
    new-instance v1, Lcom/android/tools/r8/internal/j4;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addClassRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v1, Lcom/android/tools/r8/internal/i4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/i4;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/tools/r8/internal/j4;

    iget-object v0, v1, Lcom/android/tools/r8/internal/i4;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/j4;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/c4$a;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/c4$a;
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/HA;->a()Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/c4$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/R61;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/R61;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    .line 4
    iput-object v2, v0, Lcom/android/tools/r8/internal/HA$a;->a:Ljava/util/function/Consumer;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/c4$a;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/HA$a;->a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/HA$a;->a(Lcom/android/tools/r8/profile/art/ArtProfileBuilder;)Lcom/android/tools/r8/internal/HA$a;

    move-result-object v0

    .line 8
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/HA$a;->a()Lcom/android/tools/r8/internal/HA;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/HA;->a(Lcom/android/tools/r8/TextInputStream;Lcom/android/tools/r8/origin/Origin;)V

    return-object p0
.end method

.method public final bridge synthetic addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/c4$a;->addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object p1

    return-object p1
.end method

.method public final addMethodRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c4$a;->b:Lcom/android/tools/r8/graph/u1;

    sget-boolean v1, Lcom/android/tools/r8/internal/q4;->d:Z

    new-instance v1, Lcom/android/tools/r8/internal/q4$a;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/q4$a;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/q4$a;->b()Lcom/android/tools/r8/internal/q4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;)Lcom/android/tools/r8/internal/c4$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/m1;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/c4$a;->a()Lcom/android/tools/r8/internal/c4;

    move-result-object v0

    return-object v0
.end method
