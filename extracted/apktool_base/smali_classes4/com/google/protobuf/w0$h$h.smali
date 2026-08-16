.class public Lcom/google/protobuf/w0$h$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$h$h$b;,
        Lcom/google/protobuf/w0$h$h$a;
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

.field public final b:Lcom/google/protobuf/Descriptors$f;

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/google/protobuf/w0$h$h$a;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "descriptor",
            "camelCaseName",
            "messageClass",
            "builderClass",
            "containingOneofCamelCaseName"
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
            "*>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$k;->t()Z

    move-result v1

    if-nez v1, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    iput-boolean v10, v0, Lcom/google/protobuf/w0$h$h;->c:Z

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$g$b;->PROTO2:Lcom/google/protobuf/Descriptors$g$b;

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->C()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v10, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v11, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v3

    :goto_2
    iput-boolean v11, v0, Lcom/google/protobuf/w0$h$h;->d:Z

    new-instance v1, Lcom/google/protobuf/w0$h$h$b;

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v11}, Lcom/google/protobuf/w0$h$h$b;-><init>(Lcom/google/protobuf/Descriptors$f;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    move-object v2, p1

    iput-object v2, v0, Lcom/google/protobuf/w0$h$h;->b:Lcom/google/protobuf/Descriptors$f;

    invoke-static {v1}, Lcom/google/protobuf/w0$h$h$b;->h(Lcom/google/protobuf/w0$h$h$b;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/protobuf/w0$h$h;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/protobuf/w0$h$h;->q(Lcom/google/protobuf/w0$h$h$b;)Lcom/google/protobuf/w0$h$h$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    return-void
.end method

.method public static q(Lcom/google/protobuf/w0$h$h$b;)Lcom/google/protobuf/w0$h$h$a;
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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->a(Lcom/google/protobuf/w0$b;)V

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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->b(Lcom/google/protobuf/w0;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->c(Lcom/google/protobuf/w0$b;)Ljava/lang/Object;

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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/w0$h$h$a;->e(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V
    .locals 0
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/google/protobuf/w0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/w0$h$h;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/protobuf/w0$h$h;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->d(Lcom/google/protobuf/w0;)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->b:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h$h;->b(Lcom/google/protobuf/w0;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->b:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->g(Lcom/google/protobuf/w0;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/google/protobuf/w0$b;ILjava/lang/Object;)V
    .locals 0
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Lcom/google/protobuf/w0$b;I)Ljava/lang/Object;
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
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lcom/google/protobuf/w0$b;)Z
    .locals 2
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

    iget-boolean v0, p0, Lcom/google/protobuf/w0$h$h;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/protobuf/w0$h$h;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->f(Lcom/google/protobuf/w0$b;)I

    move-result p1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->b:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h$h;->c(Lcom/google/protobuf/w0$b;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->b:Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/w0$h$h;->e:Lcom/google/protobuf/w0$h$h$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/w0$h$h$a;->j(Lcom/google/protobuf/w0$b;)Z

    move-result p1

    return p1
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Lcom/google/protobuf/Y0$a;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Lcom/google/protobuf/w0;I)Ljava/lang/Object;
    .locals 0
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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$h$h;->b(Lcom/google/protobuf/w0;)Ljava/lang/Object;

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
