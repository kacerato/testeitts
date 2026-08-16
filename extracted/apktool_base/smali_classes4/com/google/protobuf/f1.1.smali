.class public Lcom/google/protobuf/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/f1$d;,
        Lcom/google/protobuf/f1$c;,
        Lcom/google/protobuf/f1$b;,
        Lcom/google/protobuf/f1$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/protobuf/C;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d0;Lcom/google/protobuf/f1$e;)V
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
            "extension",
            "extensionRegistry",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    iget-object p1, p1, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    invoke-interface {p3, p0, p2, v0, p1}, Lcom/google/protobuf/f1$e;->g(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    return-void
.end method

.method public static c(Lcom/google/protobuf/e1;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/e1;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/f1;->d(Lcom/google/protobuf/e1;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lcom/google/protobuf/e1;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "prefix",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/e1;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Lcom/google/protobuf/e1;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$f;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/e1;

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/f1;->k(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p2}, Lcom/google/protobuf/f1;->d(Lcom/google/protobuf/e1;Ljava/lang/String;Ljava/util/List;)V

    move v3, v5

    goto :goto_2

    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/e1;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v1, Lcom/google/protobuf/e1;

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/f1;->k(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/protobuf/f1;->d(Lcom/google/protobuf/e1;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static e(Lcom/google/protobuf/Y0;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "fields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Y0;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$f;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v3

    check-cast v2, Lcom/google/protobuf/Y0;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->E0(ILcom/google/protobuf/b1;)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->q(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/r2;->m1()I

    move-result p0

    :goto_2
    add-int/2addr v1, p0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result p0

    goto :goto_2

    :goto_3
    return v1
.end method

.method public static f(Lcom/google/protobuf/e1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Lcom/google/protobuf/e1;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getAllFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Y0;

    invoke-interface {v1}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "type",
            "target",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/google/protobuf/A2;->q:I

    if-ne p5, v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/f1;->j(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;)V

    return v1

    :cond_0
    invoke-static {p5}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    invoke-static {p5}, Lcom/google/protobuf/A2;->a(I)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/google/protobuf/Descriptors$b;->z(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    instance-of v3, p2, Lcom/google/protobuf/b0;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/b0;

    invoke-interface {p4, v3, p3, v2}, Lcom/google/protobuf/f1$e;->c(Lcom/google/protobuf/b0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p3, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    iget-object p3, p3, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    if-nez p3, :cond_5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v3

    sget-object v5, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Message-typed extension lacked default instance: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object p3, v4

    goto :goto_1

    :cond_4
    invoke-interface {p4}, Lcom/google/protobuf/f1$e;->h()Lcom/google/protobuf/f1$e$a;

    move-result-object v3

    sget-object v5, Lcom/google/protobuf/f1$e$a;->MESSAGE:Lcom/google/protobuf/f1$e$a;

    if-ne v3, v5, :cond_3

    invoke-virtual {p3, v2}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object p3

    move-object v6, v4

    move-object v4, p3

    move-object p3, v6

    :cond_5
    :goto_1
    const/4 v3, 0x0

    if-nez v4, :cond_7

    :cond_6
    move v0, v3

    move v3, v1

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/protobuf/o0;->A(Lcom/google/protobuf/A2$b;Z)I

    move-result v5

    if-ne v0, v5, :cond_8

    move v0, v3

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->I()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/protobuf/o0;->A(Lcom/google/protobuf/A2$b;Z)I

    move-result v5

    if-ne v0, v5, :cond_6

    move v0, v1

    :goto_2
    if-eqz v3, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1, p5, p0}, Lcom/google/protobuf/r2$b;->v6(ILcom/google/protobuf/C;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0, p5}, Lcom/google/protobuf/C;->h0(I)Z

    move-result p0

    return p0

    :cond_a
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/protobuf/C;->O()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/C;->u(I)I

    move-result p2

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p3

    sget-object p5, Lcom/google/protobuf/A2$b;->ENUM:Lcom/google/protobuf/A2$b;

    if-ne p3, p5, :cond_e

    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/C;->g()I

    move-result p3

    if-lez p3, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/C;->A()I

    move-result p3

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/protobuf/Descriptors$g;->H()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/Descriptors$d;->k(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p3

    invoke-interface {p4, v4, p3}, Lcom/google/protobuf/f1$e;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_3

    :cond_c
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p5

    if-nez p5, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2, p3}, Lcom/google/protobuf/r2$b;->J6(II)Lcom/google/protobuf/r2$b;

    goto :goto_3

    :cond_d
    invoke-interface {p4, v4, p5}, Lcom/google/protobuf/f1$e;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_3

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/C;->g()I

    move-result p1

    if-lez p1, :cond_f

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p1

    invoke-interface {p4, v4}, Lcom/google/protobuf/f1$e;->e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/A2$d;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/google/protobuf/A2;->d(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p4, v4, p1}, Lcom/google/protobuf/f1$e;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p2}, Lcom/google/protobuf/C;->t(I)V

    goto :goto_6

    :cond_10
    sget-object p5, Lcom/google/protobuf/f1$a;->a:[I

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p5, p5, v0

    if-eq p5, v1, :cond_17

    const/4 v0, 0x2

    if-eq p5, v0, :cond_16

    const/4 p2, 0x3

    if-eq p5, p2, :cond_11

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p1

    invoke-interface {p4, v4}, Lcom/google/protobuf/f1$e;->e(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/A2$d;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/A2;->d(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$d;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/C;->A()I

    move-result p0

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$g;->H()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/Descriptors$d;->k(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p0

    goto :goto_5

    :cond_12
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/protobuf/Descriptors$d;->j(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    invoke-virtual {p1, v2, p0}, Lcom/google/protobuf/r2$b;->J6(II)Lcom/google/protobuf/r2$b;

    :cond_13
    return v1

    :cond_14
    move-object p0, p2

    :goto_5
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {p4, v4, p0}, Lcom/google/protobuf/f1$e;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_6

    :cond_15
    invoke-interface {p4, v4, p0}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_6
    return v1

    :cond_16
    invoke-interface {p4, p0, p2, v4, p3}, Lcom/google/protobuf/f1$e;->i(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V

    return v1

    :cond_17
    invoke-interface {p4, p0, p2, v4, p3}, Lcom/google/protobuf/f1$e;->l(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)V

    return v1
.end method

.method public static h(Lcom/google/protobuf/Y0$a;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "unknownFields",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/google/protobuf/f1$b;

    invoke-direct {v6, p0}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/C;->Z()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p0

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f1;->g(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method public static i(Lcom/google/protobuf/x;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d0;Lcom/google/protobuf/f1$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawBytes",
            "extension",
            "extensionRegistry",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/protobuf/b0$c;->a:Lcom/google/protobuf/Descriptors$f;

    invoke-interface {p3, v0}, Lcom/google/protobuf/f1$e;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/protobuf/d0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/protobuf/H0;

    iget-object p1, p1, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    invoke-direct {v1, p1, p2, p0}, Lcom/google/protobuf/H0;-><init>(Lcom/google/protobuf/b1;Lcom/google/protobuf/d0;Lcom/google/protobuf/x;)V

    invoke-interface {p3, v0, v1}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/google/protobuf/b0$c;->b:Lcom/google/protobuf/Y0;

    invoke-interface {p3, p0, p2, v0, p1}, Lcom/google/protobuf/f1$e;->f(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/Y0;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Lcom/google/protobuf/f1$e;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/f1$e;

    :goto_1
    return-void
.end method

.method public static j(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "type",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/C;->Z()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget v5, Lcom/google/protobuf/A2;->s:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    if-eqz v0, :cond_0

    instance-of v4, p2, Lcom/google/protobuf/b0;

    if-eqz v4, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/b0;

    invoke-interface {p4, v3, p3, v0}, Lcom/google/protobuf/f1$e;->c(Lcom/google/protobuf/b0;Lcom/google/protobuf/Descriptors$b;I)Lcom/google/protobuf/b0$c;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget v5, Lcom/google/protobuf/A2;->t:I

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/google/protobuf/d0;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v3, p2, p4}, Lcom/google/protobuf/f1;->b(Lcom/google/protobuf/C;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d0;Lcom/google/protobuf/f1$e;)V

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/protobuf/C;->h0(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    sget p3, Lcom/google/protobuf/A2;->r:I

    invoke-virtual {p0, p3}, Lcom/google/protobuf/C;->a(I)V

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    invoke-static {v2, v3, p2, p4}, Lcom/google/protobuf/f1;->i(Lcom/google/protobuf/x;Lcom/google/protobuf/b0$c;Lcom/google/protobuf/d0;Lcom/google/protobuf/f1$e;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/google/protobuf/r2$c;->u()Lcom/google/protobuf/r2$c$a;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/r2$c$a;->e(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/r2$c$a;->g()Lcom/google/protobuf/r2$c;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/protobuf/r2$b;->u6(ILcom/google/protobuf/r2$c;)Lcom/google/protobuf/r2$b;

    :cond_6
    :goto_2
    return-void
.end method

.method public static k(Ljava/lang/String;Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "prefix",
            "field",
            "index"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    const/16 p0, 0x5b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/google/protobuf/Y0;Ljava/util/Map;Lcom/google/protobuf/CodedOutputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fields",
            "output",
            "alwaysWriteRequiredFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Y0;",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v0

    if-eqz p3, :cond_2

    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v1}, Lcom/google/protobuf/e1;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p1, p3

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v1

    check-cast p3, Lcom/google/protobuf/Y0;

    invoke-virtual {p2, v1, p3}, Lcom/google/protobuf/CodedOutputStream;->P1(ILcom/google/protobuf/b1;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, p3, p2}, Lcom/google/protobuf/o0;->U(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/google/protobuf/r2;->a5(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_2
    return-void
.end method
