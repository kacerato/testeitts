.class public final Lw2/M;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/M$g;,
        Lw2/M$h;,
        Lw2/M$f;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation

.annotation runtime Lw2/k;
.end annotation


# instance fields
.field public final a:Lw2/e;

.field public final b:Z

.field public final c:Lw2/M$h;

.field public final d:I


# direct methods
.method public constructor <init>(Lw2/M$h;)V
    .locals 3

    .line 1
    invoke-static {}, Lw2/e;->G()Lw2/e;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lw2/M;-><init>(Lw2/M$h;ZLw2/e;I)V

    return-void
.end method

.method public constructor <init>(Lw2/M$h;ZLw2/e;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw2/M;->c:Lw2/M$h;

    .line 4
    iput-boolean p2, p0, Lw2/M;->b:Z

    .line 5
    iput-object p3, p0, Lw2/M;->a:Lw2/e;

    .line 6
    iput p4, p0, Lw2/M;->d:I

    return-void
.end method

.method public static synthetic a(Lw2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Lw2/M;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lw2/M;)Lw2/e;
    .locals 0

    iget-object p0, p0, Lw2/M;->a:Lw2/e;

    return-object p0
.end method

.method public static synthetic c(Lw2/M;)Z
    .locals 0

    iget-boolean p0, p0, Lw2/M;->b:Z

    return p0
.end method

.method public static synthetic d(Lw2/M;)I
    .locals 0

    iget p0, p0, Lw2/M;->d:I

    return p0
.end method

.method public static e(I)Lw2/M;
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    new-instance v0, Lw2/M;

    new-instance v1, Lw2/M$d;

    invoke-direct {v1, p0}, Lw2/M$d;-><init>(I)V

    invoke-direct {v0, v1}, Lw2/M;-><init>(Lw2/M$h;)V

    return-object v0
.end method

.method public static h(C)Lw2/M;
    .locals 0

    invoke-static {p0}, Lw2/e;->q(C)Lw2/e;

    move-result-object p0

    invoke-static {p0}, Lw2/M;->k(Lw2/e;)Lw2/M;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lw2/M;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lw2/H;->e(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lw2/M;->h(C)Lw2/M;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lw2/M;

    new-instance v1, Lw2/M$b;

    invoke-direct {v1, p0}, Lw2/M$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lw2/M;-><init>(Lw2/M$h;)V

    return-object v0
.end method

.method public static j(Ljava/util/regex/Pattern;)Lw2/M;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lw2/x;

    invoke-direct {v0, p0}, Lw2/x;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lw2/M;->l(Lw2/h;)Lw2/M;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lw2/e;)Lw2/M;
    .locals 2

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw2/M;

    new-instance v1, Lw2/M$a;

    invoke-direct {v1, p0}, Lw2/M$a;-><init>(Lw2/e;)V

    invoke-direct {v0, v1}, Lw2/M;-><init>(Lw2/M$h;)V

    return-object v0
.end method

.method public static l(Lw2/h;)Lw2/M;
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lw2/h;->d(Ljava/lang/CharSequence;)Lw2/g;

    move-result-object v0

    invoke-virtual {v0}, Lw2/g;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lw2/M;

    new-instance v1, Lw2/M$c;

    invoke-direct {v1, p0}, Lw2/M$c;-><init>(Lw2/h;)V

    invoke-direct {v0, v1}, Lw2/M;-><init>(Lw2/M$h;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lw2/M;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lw2/G;->b(Ljava/lang/String;)Lw2/h;

    move-result-object p0

    invoke-static {p0}, Lw2/M;->l(Lw2/h;)Lw2/M;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(I)Lw2/M;
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must be greater than zero: %s"

    invoke-static {v0, v1, p1}, Lw2/H;->k(ZLjava/lang/String;I)V

    new-instance v0, Lw2/M;

    iget-object v1, p0, Lw2/M;->c:Lw2/M$h;

    iget-boolean v2, p0, Lw2/M;->b:Z

    iget-object v3, p0, Lw2/M;->a:Lw2/e;

    invoke-direct {v0, v1, v2, v3, p1}, Lw2/M;-><init>(Lw2/M$h;ZLw2/e;I)V

    return-object v0
.end method

.method public g()Lw2/M;
    .locals 5

    new-instance v0, Lw2/M;

    iget-object v1, p0, Lw2/M;->c:Lw2/M$h;

    iget-object v2, p0, Lw2/M;->a:Lw2/e;

    iget v3, p0, Lw2/M;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lw2/M;-><init>(Lw2/M$h;ZLw2/e;I)V

    return-object v0
.end method

.method public n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw2/M$e;

    invoke-direct {v0, p0, p1}, Lw2/M$e;-><init>(Lw2/M;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lw2/M;->p(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lw2/M;->c:Lw2/M$h;

    invoke-interface {v0, p0, p1}, Lw2/M$h;->a(Lw2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public q()Lw2/M;
    .locals 1

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw2/M;->r(Lw2/e;)Lw2/M;

    move-result-object v0

    return-object v0
.end method

.method public r(Lw2/e;)Lw2/M;
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lw2/M;

    iget-object v1, p0, Lw2/M;->c:Lw2/M$h;

    iget-boolean v2, p0, Lw2/M;->b:Z

    iget v3, p0, Lw2/M;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, Lw2/M;-><init>(Lw2/M$h;ZLw2/e;I)V

    return-object v0
.end method

.method public s(C)Lw2/M$f;
    .locals 0
    .annotation build Lv2/a;
    .end annotation

    invoke-static {p1}, Lw2/M;->h(C)Lw2/M;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/M;->u(Lw2/M;)Lw2/M$f;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;)Lw2/M$f;
    .locals 0
    .annotation build Lv2/a;
    .end annotation

    invoke-static {p1}, Lw2/M;->i(Ljava/lang/String;)Lw2/M;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/M;->u(Lw2/M;)Lw2/M$f;

    move-result-object p1

    return-object p1
.end method

.method public u(Lw2/M;)Lw2/M$f;
    .locals 2
    .annotation build Lv2/a;
    .end annotation

    new-instance v0, Lw2/M$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lw2/M$f;-><init>(Lw2/M;Lw2/M;Lw2/M$a;)V

    return-object v0
.end method
