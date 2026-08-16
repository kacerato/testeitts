.class public Lcom/google/protobuf/f1$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Y0$a;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/f1$b;->b:Z

    iput-object p1, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "defaultInstance"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f1$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f1$b;->m(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/protobuf/f1$b;

    invoke-direct {p1, v0}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_1
    new-instance p1, Lcom/google/protobuf/f1$b;

    invoke-direct {p1, p2}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
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

    instance-of v0, p2, Lcom/google/protobuf/b1$a;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/protobuf/b1$a;

    invoke-interface {p2}, Lcom/google/protobuf/b1$a;->buildPartial()Lcom/google/protobuf/b1;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Y0$a;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    return-object v0
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Y0$a;->clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/f1$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Y0$a;->clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Y0$a;

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
            "field",
            "defaultInstance"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {p2, p1}, Lcom/google/protobuf/Y0$a;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/google/protobuf/f1$b;

    invoke-direct {p2, p1}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    return-object p2
.end method

.method public e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/A2$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/protobuf/A2$d;->STRICT:Lcom/google/protobuf/A2$d;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    instance-of p1, p1, Lcom/google/protobuf/t0$f;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/protobuf/A2$d;->LAZY:Lcom/google/protobuf/A2$d;

    return-object p1

    :cond_1
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

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Y0;

    if-eqz p3, :cond_1

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_1
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

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/protobuf/Y0;

    if-eqz p3, :cond_1

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0}, Lcom/google/protobuf/Y0$a;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/e1;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/e1;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/protobuf/f1$e$a;
    .locals 1

    sget-object v0, Lcom/google/protobuf/f1$e$a;->MESSAGE:Lcom/google/protobuf/f1$e$a;

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

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/e1;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/e1;->hasOneof(Lcom/google/protobuf/Descriptors$k;)Z

    move-result p1

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

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->m(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;

    invoke-interface {p4, v0}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$b;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

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

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {p4, p3}, Lcom/google/protobuf/Y0$a;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;

    if-eqz v0, :cond_1

    invoke-interface {p4, v0}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    :cond_1
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

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->m(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p3

    invoke-virtual {p1, p3, v0, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/f1$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;

    invoke-interface {p4, v0}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    :goto_0
    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$b;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/google/protobuf/f1$b;->n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    invoke-interface {p4}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/protobuf/f1$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_1
    return-void
.end method

.method public final m(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/f1$b;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Y0$a;->getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/protobuf/f1$b;->b:Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "defaultInstance"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {p2, p1}, Lcom/google/protobuf/Y0$a;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
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

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/protobuf/b1$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/f1$b;->m(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    check-cast p2, Lcom/google/protobuf/b1$a;

    invoke-interface {p2}, Lcom/google/protobuf/b1$a;->buildPartial()Lcom/google/protobuf/b1;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Y0$a;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Y0$a;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/f1$e;
    .locals 1
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

    instance-of v0, p3, Lcom/google/protobuf/b1$a;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/protobuf/b1$a;

    invoke-interface {p3}, Lcom/google/protobuf/b1$a;->buildPartial()Lcom/google/protobuf/b1;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/f1$b;->a:Lcom/google/protobuf/Y0$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Y0$a;->setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Y0$a;

    return-object p0
.end method
