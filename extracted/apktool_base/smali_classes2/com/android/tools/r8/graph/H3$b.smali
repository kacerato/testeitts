.class public Lcom/android/tools/r8/graph/H3$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/graph/H3$d<",
        "Lcom/android/tools/r8/graph/E0;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/android/tools/r8/graph/H3$b;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/AbstractCollection;

.field public final b:Lcom/android/tools/r8/graph/H3$c;

.field public final c:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/graph/H3$b;

    sget-object v1, Lcom/android/tools/r8/graph/H3;->a:Lcom/android/tools/r8/internal/Xe0;

    sget-object v2, Lcom/android/tools/r8/graph/H3;->c:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/graph/H3$b;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$b;->d:Lcom/android/tools/r8/graph/H3$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/H3$b;->e:Z

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

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    check-cast p3, Ljava/util/AbstractCollection;

    iput-object p3, p0, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static f()Lcom/android/tools/r8/graph/H3$b;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/H3$b;->d:Lcom/android/tools/r8/graph/H3$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/b4;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    .line 3
    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/b4;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 5
    invoke-interface {p1, v1}, Lcom/android/tools/r8/graph/b4;->a(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    .line 7
    invoke-interface {p1, v2}, Lcom/android/tools/r8/graph/b4;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    if-ne v2, p1, :cond_1

    :goto_0
    return-object p0

    .line 9
    :cond_1
    new-instance v2, Lcom/android/tools/r8/graph/J3;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/J3;-><init>()V

    .line 10
    iget-object v3, v2, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iput-object v1, v2, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 12
    iget-object v0, v2, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {v2, p2}, Lcom/android/tools/r8/graph/J3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 2

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/graph/H3$b;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 17
    :goto_1
    iget-object p1, v0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_3

    .line 18
    iget-object p1, v0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    return-object p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H3$c;

    .line 20
    iget-object v1, v0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v1, p2, :cond_4

    .line 21
    iget-object p1, v0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Z
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$b;->a:Ljava/util/AbstractCollection;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/graph/H3$c;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$b;->b:Lcom/android/tools/r8/graph/H3$c;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/graph/H3$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/H3$b;->c:Ljava/util/AbstractCollection;

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

    invoke-virtual {v2, p0}, Lcom/android/tools/r8/graph/V3;->a(Lcom/android/tools/r8/graph/H3$b;)Lcom/android/tools/r8/graph/H3$b;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/V3;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
