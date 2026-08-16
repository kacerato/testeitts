.class public LOm/a$b;
.super LWm/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LWm/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LWm/h;LWm/g;)LWm/f;
    .locals 3

    invoke-interface {p1}, LWm/h;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2}, LWm/g;->b()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, LOm/a;->h(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, LOm/a;->i(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, LOm/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, LOm/a;-><init>(Ljava/util/List;Ljava/util/List;LOm/a$a;)V

    const/4 p2, 0x1

    new-array p2, p2, [LWm/d;

    const/4 v0, 0x0

    aput-object v1, p2, v0

    invoke-static {p2}, LWm/f;->d([LWm/d;)LWm/f;

    move-result-object p2

    invoke-interface {p1}, LWm/h;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, LWm/f;->b(I)LWm/f;

    move-result-object p1

    invoke-virtual {p1}, LWm/f;->e()LWm/f;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LWm/f;->c()LWm/f;

    move-result-object p1

    return-object p1
.end method
