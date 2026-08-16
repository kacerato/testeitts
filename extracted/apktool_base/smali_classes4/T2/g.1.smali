.class public final LT2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT2/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LT2/F<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LT2/v;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:LT2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LT2/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILT2/k;Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "LT2/F<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "LT2/v;",
            ">;II",
            "LT2/k<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LT2/g;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LT2/g;->b:Ljava/util/Set;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LT2/g;->c:Ljava/util/Set;

    .line 6
    iput p4, p0, LT2/g;->d:I

    .line 7
    iput p5, p0, LT2/g;->e:I

    .line 8
    iput-object p6, p0, LT2/g;->f:LT2/k;

    .line 9
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LT2/g;->g:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILT2/k;Ljava/util/Set;LT2/g$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, LT2/g;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILT2/k;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic A(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/Object;)LT2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LT2/g;->h(Ljava/lang/Class;)LT2/g$b;

    move-result-object p0

    new-instance v0, LT2/e;

    invoke-direct {v0, p1}, LT2/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs C(Ljava/lang/Object;LT2/F;[LT2/F;)LT2/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LT2/F<",
            "TT;>;[",
            "LT2/F<",
            "-TT;>;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, LT2/g;->g(LT2/F;[LT2/F;)LT2/g$b;

    move-result-object p1

    new-instance p2, LT2/b;

    invoke-direct {p2, p0}, LT2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)LT2/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, LT2/g;->i(Ljava/lang/Class;[Ljava/lang/Class;)LT2/g$b;

    move-result-object p1

    new-instance p2, LT2/f;

    invoke-direct {p2, p0}, LT2/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LT2/g;->z(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LT2/g;->y(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LT2/g;->A(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LT2/g;->w(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LT2/g;->x(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(LT2/F;)LT2/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LT2/g$b;

    const/4 v1, 0x0

    new-array v1, v1, [LT2/F;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LT2/g$b;-><init>(LT2/F;[LT2/F;LT2/g$a;)V

    return-object v0
.end method

.method public static varargs g(LT2/F;[LT2/F;)LT2/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;[",
            "LT2/F<",
            "-TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, LT2/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LT2/g$b;-><init>(LT2/F;[LT2/F;LT2/g$a;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Class;)LT2/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LT2/g$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LT2/g$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;LT2/g$a;)V

    return-object v0
.end method

.method public static varargs i(Ljava/lang/Class;[Ljava/lang/Class;)LT2/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, LT2/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LT2/g$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;LT2/g$a;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;LT2/F;)LT2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LT2/F<",
            "TT;>;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/g;->q(LT2/F;)LT2/g$b;

    move-result-object p1

    new-instance v0, LT2/c;

    invoke-direct {v0, p0}, LT2/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/Class;)LT2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LT2/g;->r(Ljava/lang/Class;)LT2/g$b;

    move-result-object p1

    new-instance v0, LT2/d;

    invoke-direct {v0, p0}, LT2/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object p0

    invoke-virtual {p0}, LT2/g$b;->d()LT2/g;

    move-result-object p0

    return-object p0
.end method

.method public static q(LT2/F;)LT2/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LT2/F<",
            "TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object p0

    invoke-static {p0}, LT2/g$b;->a(LT2/g$b;)LT2/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Class;)LT2/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "LT2/g$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LT2/g;->h(Ljava/lang/Class;)LT2/g$b;

    move-result-object p0

    invoke-static {p0}, LT2/g$b;->a(LT2/g$b;)LT2/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic x(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/Object;LT2/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public E(LT2/k;)LT2/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT2/k<",
            "TT;>;)",
            "LT2/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, LT2/g;

    iget-object v1, p0, LT2/g;->a:Ljava/lang/String;

    iget-object v2, p0, LT2/g;->b:Ljava/util/Set;

    iget-object v3, p0, LT2/g;->c:Ljava/util/Set;

    iget v4, p0, LT2/g;->d:I

    iget v5, p0, LT2/g;->e:I

    iget-object v7, p0, LT2/g;->g:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, LT2/g;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILT2/k;Ljava/util/Set;)V

    return-object v8
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LT2/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LT2/g;->c:Ljava/util/Set;

    return-object v0
.end method

.method public k()LT2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LT2/k<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LT2/g;->f:LT2/k;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LT2/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LT2/F<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, LT2/g;->b:Ljava/util/Set;

    return-object v0
.end method

.method public n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, LT2/g;->g:Ljava/util/Set;

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, LT2/g;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 2

    iget v0, p0, LT2/g;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LT2/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LT2/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LT2/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LT2/g;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget v0, p0, LT2/g;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    iget v0, p0, LT2/g;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
