.class public Lcom/google/protobuf/f1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/f1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/o0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0$b<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/o0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0$b<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f1$e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "defaultInstance"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "newMergeTargetForField() called on FieldSet object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "finish() called on FieldSet object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/google/protobuf/b0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "registry",
            "containingType",
            "fieldNumber"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/b0;->q(Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/f1$e;
    .locals 0
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    return-object p0
.end method

.method public d(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f1$e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "defaultInstance"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "newEmptyTargetForField() called on FieldSet object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/A2$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/protobuf/A2$d;->STRICT:Lcom/google/protobuf/A2$d;

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/protobuf/A2$d;->LOOSE:Lcom/google/protobuf/A2$d;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "registry",
            "field",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$d;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Y0;

    if-eqz p3, :cond_0

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "registry",
            "field",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$d;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Y0;

    if-eqz p3, :cond_0

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDescriptorForType() called on FieldSet object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->i(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public h()Lcom/google/protobuf/f1$e$a;
    .locals 1

    sget-object v0, Lcom/google/protobuf/f1$e$a;->EXTENSION_SET:Lcom/google/protobuf/f1$e$a;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public i(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry",
            "field",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$d;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {p4, p3}, Lcom/google/protobuf/o0$b;->j(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Lcom/google/protobuf/b1$a;

    if-eqz v0, :cond_0

    check-cast p4, Lcom/google/protobuf/b1$a;

    goto :goto_0

    :cond_0
    check-cast p4, Lcom/google/protobuf/b1;

    invoke-interface {p4}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    return-void

    :cond_1
    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$d;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_1

    :cond_2
    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$d;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_1
    return-void
.end method

.method public j(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "registry",
            "field",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$d;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;

    if-eqz v0, :cond_0

    invoke-interface {p4, v0}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/google/protobuf/b0;Ljava/lang/String;)Lcom/google/protobuf/b0$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "registry",
            "name"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/b0;->p(Ljava/lang/String;)Lcom/google/protobuf/b0$c;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry",
            "field",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$d;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {p4, p3}, Lcom/google/protobuf/o0$b;->j(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Lcom/google/protobuf/b1$a;

    if-eqz v0, :cond_0

    check-cast p4, Lcom/google/protobuf/b1$a;

    goto :goto_0

    :cond_0
    check-cast p4, Lcom/google/protobuf/b1;

    invoke-interface {p4}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    return-void

    :cond_1
    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$d;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_1

    :cond_2
    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$d;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_1
    return-void
.end method

.method public setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$d;->a:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    return-object p0
.end method
