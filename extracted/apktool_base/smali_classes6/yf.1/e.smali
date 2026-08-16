.class public final Lyf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyf/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,200:1\n1#2:201\n*E\n"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field public final b:Lyf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lyf/j$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Lyf/j$b;)V
    .locals 1
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf/e;->b:Lyf/j;

    iput-object p2, p0, Lyf/e;->c:Lyf/j$b;

    return-void
.end method

.method public static synthetic g([Lyf/j;Lkotlin/jvm/internal/m0$f;Lnf/P0;Lyf/j$b;)Lnf/P0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lyf/e;->s([Lyf/j;Lkotlin/jvm/internal/m0$f;Lnf/P0;Lyf/j$b;)Lnf/P0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lyf/j$b;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lyf/e;->p(Ljava/lang/String;Lyf/j$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final m(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final o()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lyf/e;->b:Lyf/j;

    instance-of v2, v1, Lyf/e;

    if-eqz v2, :cond_0

    check-cast v1, Lyf/e;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final p(Ljava/lang/String;Lyf/j$b;)Ljava/lang/String;
    .locals 1

    const-string v0, "acc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final r()Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, Lyf/e;->o()I

    move-result v0

    new-array v1, v0, [Lyf/j;

    new-instance v2, Lkotlin/jvm/internal/m0$f;

    invoke-direct {v2}, Lkotlin/jvm/internal/m0$f;-><init>()V

    sget-object v3, Lnf/P0;->a:Lnf/P0;

    new-instance v4, Lyf/c;

    invoke-direct {v4, v1, v2}, Lyf/c;-><init>([Lyf/j;Lkotlin/jvm/internal/m0$f;)V

    invoke-virtual {p0, v3, v4}, Lyf/e;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    iget v2, v2, Lkotlin/jvm/internal/m0$f;->b:I

    if-ne v2, v0, :cond_0

    new-instance v0, Lyf/e$a;

    invoke-direct {v0, v1}, Lyf/e$a;-><init>([Lyf/j;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final s([Lyf/j;Lkotlin/jvm/internal/m0$f;Lnf/P0;Lyf/j$b;)Lnf/P0;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "element"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p1, Lkotlin/jvm/internal/m0$f;->b:I

    aput-object p3, p0, p2

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lyf/e;

    if-eqz v0, :cond_0

    check-cast p1, Lyf/e;

    invoke-direct {p1}, Lyf/e;->o()I

    move-result v0

    invoke-direct {p0}, Lyf/e;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lyf/e;->k(Lyf/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LMf/p<",
            "-TR;-",
            "Lyf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyf/e;->b:Lyf/j;

    invoke-interface {v0, p1, p2}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lyf/e;->c:Lyf/j$b;

    invoke-interface {p2, p1, v0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lyf/j$c;)Lyf/j$b;
    .locals 2
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lyf/j$b;",
            ">(",
            "Lyf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lyf/e;->c:Lyf/j$b;

    invoke-interface {v1, p1}, Lyf/j$b;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lyf/e;->b:Lyf/j;

    instance-of v1, v0, Lyf/e;

    if-eqz v1, :cond_1

    check-cast v0, Lyf/e;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lyf/e;->b:Lyf/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lyf/e;->c:Lyf/j$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j(Lyf/j$b;)Z
    .locals 1

    invoke-interface {p1}, Lyf/j$b;->getKey()Lyf/j$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyf/e;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k(Lyf/e;)Z
    .locals 1

    :goto_0
    iget-object v0, p1, Lyf/e;->c:Lyf/j$b;

    invoke-virtual {p0, v0}, Lyf/e;->j(Lyf/j$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lyf/e;->b:Lyf/j;

    instance-of v0, p1, Lyf/e;

    if-eqz v0, :cond_1

    check-cast p1, Lyf/e;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lyf/j$b;

    invoke-virtual {p0, p1}, Lyf/e;->j(Lyf/j$b;)Z

    move-result p1

    return p1
.end method

.method public minusKey(Lyf/j$c;)Lyf/j;
    .locals 2
    .param p1    # Lyf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j$c<",
            "*>;)",
            "Lyf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyf/e;->c:Lyf/j$b;

    invoke-interface {v0, p1}, Lyf/j$b;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lyf/e;->b:Lyf/j;

    return-object p1

    :cond_0
    iget-object v0, p0, Lyf/e;->b:Lyf/j;

    invoke-interface {v0, p1}, Lyf/j;->minusKey(Lyf/j$c;)Lyf/j;

    move-result-object p1

    iget-object v0, p0, Lyf/e;->b:Lyf/j;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object v0, Lyf/l;->b:Lyf/l;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lyf/e;->c:Lyf/j$b;

    goto :goto_0

    :cond_2
    new-instance v0, Lyf/e;

    iget-object v1, p0, Lyf/e;->c:Lyf/j$b;

    invoke-direct {v0, p1, v1}, Lyf/e;-><init>(Lyf/j;Lyf/j$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge plus(Lyf/j;)Lyf/j;
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lyf/j$a;->b(Lyf/j;Lyf/j;)Lyf/j;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lyf/d;

    invoke-direct {v1}, Lyf/d;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lyf/e;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
