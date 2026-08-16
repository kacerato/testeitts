.class public final Lcom/android/tools/r8/internal/Pj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceFieldResult;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lcom/android/tools/r8/internal/cw;

.field public final c:Lcom/android/tools/r8/internal/wk0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Nj0;Ljava/util/List;Lcom/android/tools/r8/internal/cw;Lcom/android/tools/r8/internal/wk0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pj0;->b:Lcom/android/tools/r8/internal/cw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Pj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-boolean p3, Lcom/android/tools/r8/internal/Pj0;->d:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/internal/Oj0;
    .locals 4

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/V;->a()Lcom/android/tools/r8/naming/V$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->f()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/lk0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/internal/lk0;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 19
    :goto_0
    new-instance v1, Lcom/android/tools/r8/internal/Oj0;

    .line 20
    iget-object v2, v2, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 23
    :cond_1
    iget-object v3, v0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/naming/V$a;->c:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    .line 25
    invoke-static {v2, v3, v0}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object v0

    .line 26
    new-instance v2, Lcom/android/tools/r8/internal/mk0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/mk0;-><init>(Lcom/android/tools/r8/references/FieldReference;)V

    .line 27
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/android/tools/r8/internal/Oj0;-><init>(Lcom/android/tools/r8/internal/Pj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/ok0;Lcom/android/tools/r8/naming/V;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/o50;)Ljava/util/stream/Stream;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Mj0;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Oj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pj0;->b:Lcom/android/tools/r8/internal/cw;

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/internal/Mj0;->b:Lcom/android/tools/r8/internal/lk0;

    .line 5
    iget-object v2, v2, Lcom/android/tools/r8/internal/lk0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/cw;->a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/internal/cw;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/nk0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/nk0;-><init>(Lcom/android/tools/r8/internal/cw;)V

    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/tools/r8/internal/Oj0;-><init>(Lcom/android/tools/r8/internal/Pj0;Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/internal/ok0;Lcom/android/tools/r8/naming/V;)V

    .line 9
    invoke-static {p1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/vR0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/vR0;-><init>(Lcom/android/tools/r8/internal/Pj0;Lcom/android/tools/r8/internal/Mj0;)V

    .line 11
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final isAmbiguous()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/o50;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pj0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/uR0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/uR0;-><init>(Lcom/android/tools/r8/internal/Pj0;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
