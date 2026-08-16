.class public Lcom/google/protobuf/t0$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t0$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$f;

.field public final b:Lcom/google/protobuf/Y0;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "camelCaseName",
            "messageClass",
            "builderClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/t0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/t0$f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/t0$m$b;->a:Lcom/google/protobuf/Descriptors$f;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Class;

    const-string p4, "getDefaultInstance"

    invoke-static {p3, p4, p2}, Lcom/google/protobuf/t0;->H3(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 p3, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/t0;->i4(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->b(Lcom/google/protobuf/t0;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->k()Lcom/google/protobuf/Y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t0$m$b;->b:Lcom/google/protobuf/Y0;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(Lcom/google/protobuf/t0$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->c(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public C(Lcom/google/protobuf/t0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Lcom/google/protobuf/t0$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t0$f;",
            ")",
            "Lcom/google/protobuf/S0<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0$m$b;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/t0$f;->internalGetMapField(I)Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/protobuf/t0;)Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t0;",
            ")",
            "Lcom/google/protobuf/S0<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0$m$b;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/t0;->internalGetMapField(I)Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t0$f;",
            ")",
            "Lcom/google/protobuf/S0<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0$m$b;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/t0$f;->internalGetMutableMapField(I)Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/protobuf/Y0$a;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$m$b;->b:Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/google/protobuf/t0$f;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->B(Lcom/google/protobuf/t0$f;)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/t0$m$b;->u(Lcom/google/protobuf/t0$f;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Lcom/google/protobuf/t0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->r(Lcom/google/protobuf/t0;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/t0$m$b;->y(Lcom/google/protobuf/t0;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/protobuf/t0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->n(Lcom/google/protobuf/t0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/google/protobuf/t0$f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->q(Lcom/google/protobuf/t0$f;)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/t0$m$b;->t(Lcom/google/protobuf/t0$f;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/protobuf/t0$f;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->a(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public r(Lcom/google/protobuf/t0;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->b(Lcom/google/protobuf/t0;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public s(Lcom/google/protobuf/t0$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->p(Lcom/google/protobuf/t0$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/google/protobuf/t0$f;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->a(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/google/protobuf/t0$f;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->c(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->l()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/Y0;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Lcom/google/protobuf/t0;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$m$b;->y(Lcom/google/protobuf/t0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/google/protobuf/t0$f;I)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "index"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Nested builder not supported for map fields."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lcom/google/protobuf/t0$f;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$m$b;->t(Lcom/google/protobuf/t0$f;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/google/protobuf/t0;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->b(Lcom/google/protobuf/t0;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(Lcom/google/protobuf/t0$f;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$m$b;->c(Lcom/google/protobuf/t0$f;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->l()Ljava/util/List;

    move-result-object p1

    check-cast p3, Lcom/google/protobuf/Y0;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
