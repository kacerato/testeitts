.class public Lcom/android/tools/r8/graph/H3$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/H3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/graph/H3$d<",
        "Lcom/android/tools/r8/graph/j1;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/android/tools/r8/graph/H3$g;

.field public static final synthetic f:Z = true


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$i;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/android/tools/r8/graph/H3$h;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/graph/H3$g;

    sget-object v1, Lcom/android/tools/r8/graph/H3;->a:Lcom/android/tools/r8/internal/Xe0;

    sget-object v2, Lcom/android/tools/r8/graph/H3;->d:Lcom/android/tools/r8/internal/Xe0;

    sget-object v3, Lcom/android/tools/r8/graph/H3$h;->b:Lcom/android/tools/r8/graph/H3$h;

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/tools/r8/graph/H3$g;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/H3$h;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$g;->e:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/H3$h;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/H3$g;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/graph/H3$g;->c:Lcom/android/tools/r8/graph/H3$h;

    iput-object p4, p0, Lcom/android/tools/r8/graph/H3$g;->d:Ljava/util/List;

    return-void
.end method

.method public static d()Lcom/android/tools/r8/graph/H3$g;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3$g;->e:Lcom/android/tools/r8/graph/H3$g;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b4;)Lcom/android/tools/r8/graph/H3$g;
    .locals 4

    .line 3
    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    .line 5
    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b4;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/b4;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$g;->c:Lcom/android/tools/r8/graph/H3$h;

    invoke-interface {p1, v2}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/H3$h;)Lcom/android/tools/r8/graph/H3$h;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$g;->d:Ljava/util/List;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/graph/b4;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    if-ne v3, v1, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$g;->c:Lcom/android/tools/r8/graph/H3$h;

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/graph/H3$g;->d:Ljava/util/List;

    if-ne v3, p1, :cond_1

    :goto_0
    return-object p0

    .line 10
    :cond_1
    new-instance v3, Lcom/android/tools/r8/graph/H3$g;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/tools/r8/graph/H3$g;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/H3$h;Ljava/util/List;)V

    return-object v3
.end method

.method public a(I)Lcom/android/tools/r8/graph/H3$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H3$i;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3$g;->e:Lcom/android/tools/r8/graph/H3$g;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/graph/H3$h;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$g;->c:Lcom/android/tools/r8/graph/H3$h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/graph/V3;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/graph/V3;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/Predicate;)V

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
