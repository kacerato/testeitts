.class public final Lcom/android/tools/r8/graph/J3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/android/tools/r8/graph/H3$c;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/graph/H3$c;->b:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/graph/J3;->d:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p1, v0, Lcom/android/tools/r8/graph/H3$c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H3$e;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$e;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    iput-object v2, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iput-object v2, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    new-instance p1, Lcom/android/tools/r8/graph/H3$b;

    iget-object v0, p0, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    iget-object v2, p0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/H3$b;-><init>(Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H3$f;)Lcom/android/tools/r8/graph/J3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
