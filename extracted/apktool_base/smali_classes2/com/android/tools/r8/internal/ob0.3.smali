.class public final Lcom/android/tools/r8/internal/ob0;
.super Lcom/android/tools/r8/internal/qb0;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public d:Lcom/android/tools/r8/internal/l4;

.field public e:Lcom/android/tools/r8/internal/Zd;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/qb0;-><init>(Lcom/android/tools/r8/internal/ns0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ob0;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ob0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/internal/FW;
    .locals 2

    .line 2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ob0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ob0;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    return-object p1

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/ob0;->i:Z

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_3
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    if-nez v0, :cond_5

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/ob0;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    sget-object p1, Lcom/android/tools/r8/internal/FW;->c:Lcom/android/tools/r8/internal/FW;

    return-object p1

    :cond_6
    if-nez v0, :cond_8

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/ob0;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_8
    :goto_2
    sget-object p1, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/ob0;
    .locals 0

    .line 1
    return-object p0
.end method
