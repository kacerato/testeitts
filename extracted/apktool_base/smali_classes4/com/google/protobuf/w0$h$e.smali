.class public Lcom/google/protobuf/w0$h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w0$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$h$e$b;,
        Lcom/google/protobuf/w0$h$e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/protobuf/w0$h$e$a;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
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
            "Lcom/google/protobuf/w0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0$b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/protobuf/w0$h$e$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/protobuf/w0$h$e$b;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/google/protobuf/w0$h$e$b;->e(Lcom/google/protobuf/w0$h$e$b;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$h$e;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/protobuf/w0$h$e;->q(Lcom/google/protobuf/w0$h$e$b;)Lcom/google/protobuf/w0$h$e$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    return-void
.end method

.method public static q(Lcom/google/protobuf/w0$h$e$b;)Lcom/google/protobuf/w0$h$e$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessor"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/protobuf/w0$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$e$a;->a(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public b(Lcom/google/protobuf/w0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$e$a;->b(Lcom/google/protobuf/w0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/protobuf/w0$b;)Ljava/lang/Object;
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
            "Lcom/google/protobuf/w0$b<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$e$a;->c(Lcom/google/protobuf/w0$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/protobuf/w0;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$e$a;->d(Lcom/google/protobuf/w0;)I

    move-result p1

    return p1
.end method

.method public e(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h$e;->a(Lcom/google/protobuf/w0$b;)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/w0$h$e;->f(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/w0$h$e$a;->f(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Lcom/google/protobuf/w0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/google/protobuf/w0$b;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "builder",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/w0$h$e$a;->h(Lcom/google/protobuf/w0$b;ILjava/lang/Object;)V

    return-void
.end method

.method public i(Lcom/google/protobuf/w0$b;I)Ljava/lang/Object;
    .locals 1
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/w0$h$e$a;->i(Lcom/google/protobuf/w0$b;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/google/protobuf/w0$b;)Z
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
            "Lcom/google/protobuf/w0$b<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() called on a repeated field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lcom/google/protobuf/w0$b;)I
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
            "Lcom/google/protobuf/w0$b<",
            "*>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$e$a;->k(Lcom/google/protobuf/w0$b;)I

    move-result p1

    return p1
.end method

.method public l()Lcom/google/protobuf/Y0$a;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lcom/google/protobuf/w0;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$e;->b:Lcom/google/protobuf/w0$h$e$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/w0$h$e$a;->m(Lcom/google/protobuf/w0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/google/protobuf/w0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h$e;->b(Lcom/google/protobuf/w0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/protobuf/w0$b;I)Lcom/google/protobuf/Y0$a;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;I)",
            "Lcom/google/protobuf/Y0$a;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lcom/google/protobuf/w0$b;)Lcom/google/protobuf/Y0$a;
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
            "Lcom/google/protobuf/w0$b<",
            "*>;)",
            "Lcom/google/protobuf/Y0$a;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
