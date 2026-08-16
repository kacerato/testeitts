.class public abstract Lcom/google/protobuf/w0$d;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageT:",
        "Lcom/google/protobuf/w0$e<",
        "TMessageT;>;BuilderT:",
        "Lcom/google/protobuf/w0$d<",
        "TMessageT;TBuilderT;>;>",
        "Lcom/google/protobuf/w0$b<",
        "TBuilderT;>;",
        "Lcom/google/protobuf/w0$f<",
        "TMessageT;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/protobuf/o0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0$b<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private J6(Lcom/google/protobuf/Descriptors$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private K6(Lcom/google/protobuf/Z;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic m1(Lcom/google/protobuf/w0$d;)Lcom/google/protobuf/o0;
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->r6()Lcom/google/protobuf/o0;

    move-result-object p0

    return-object p0
.end method

.method private r6()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/o0$b;->d()Lcom/google/protobuf/o0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private x6()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/o0;->M()Lcom/google/protobuf/o0$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A6(Lcom/google/protobuf/w0$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$e<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0$e;->t6(Lcom/google/protobuf/w0$e;)Lcom/google/protobuf/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-static {p1}, Lcom/google/protobuf/w0$e;->t6(Lcom/google/protobuf/w0$e;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->p(Lcom/google/protobuf/o0;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-void
.end method

.method public final B(Lcom/google/protobuf/t0$n;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final B6(Lcom/google/protobuf/Z;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "extension",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;ITT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w0$d;->D6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public final C6(Lcom/google/protobuf/Z;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->E6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public final D6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "extensionLite",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;ITT;)TBuilderT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/Z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final E6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extensionLite",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public F6(Lcom/google/protobuf/t0$n;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "extension",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;ITT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w0$d;->D6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public G6(Lcom/google/protobuf/t0$n;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->E6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public H6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ")TBuilderT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/w0$b;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/w0$d;

    return-object p1
.end method

.method public final I1(Lcom/google/protobuf/Z;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->v3(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public I6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/w0$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/w0$d;

    return-object p1
.end method

.method public final M(Lcom/google/protobuf/Z;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lcom/google/protobuf/t0$n;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public final R(Lcom/google/protobuf/t0$n;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final X(Lcom/google/protobuf/Z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final Z(Lcom/google/protobuf/Z;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public a5(Lcom/google/protobuf/t0$n;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->v3(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->q6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->q6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->s6()Lcom/google/protobuf/w0$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "field"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->w6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->w6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/w0$b;->access$900(Lcom/google/protobuf/w0$b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/o0$b;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->i(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->j(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/Y0$a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/Y0$a;

    return-object v0

    :cond_1
    instance-of v1, v0, Lcom/google/protobuf/Y0;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/Y0;->toBuilder()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/o0$b;->v(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->k(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/w0$b;->getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$f;I)Lcom/google/protobuf/Y0$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    const-string v2, "getRepeatedFieldBuilder() called on a non-Message type."

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->l(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/protobuf/Y0$a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/Y0$a;

    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/google/protobuf/Y0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/Y0;->toBuilder()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/protobuf/o0$b;->w(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/w0$b;->getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$f;I)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->m(Lcom/google/protobuf/o0$c;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I

    move-result p1

    return p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$d;->y6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l0(Lcom/google/protobuf/Z;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/P;->u6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P$c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    invoke-virtual {p1}, Lcom/google/protobuf/C;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v4

    new-instance v5, Lcom/google/protobuf/f1$d;

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-direct {v5, v0}, Lcom/google/protobuf/f1$d;-><init>(Lcom/google/protobuf/o0$b;)V

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/f1;->g(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;I)Z

    move-result p1

    return p1
.end method

.method public q6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ")TBuilderT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0$b;->a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/w0$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/w0$d;

    return-object p1
.end method

.method public final r(Lcom/google/protobuf/a0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/protobuf/o0$b;->i(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->j()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/protobuf/Z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/google/protobuf/a0;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->m(Lcom/google/protobuf/o0$c;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final s0(Lcom/google/protobuf/t0$n;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s6()Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/w0$d;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->H6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$d;->H6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w0$d;->I6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w0$d;->I6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public final t6(Lcom/google/protobuf/Z;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->u6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lcom/google/protobuf/a0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->n(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final u6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;)TBuilderT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final v3(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/w0$d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extensionLite",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;TT;)TBuilderT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/o0$b;->a(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public v6(Lcom/google/protobuf/t0$n;)Lcom/google/protobuf/w0$d;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;)TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$d;->u6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/w0$d;

    move-result-object p1

    return-object p1
.end method

.method public w6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            ")TBuilderT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->J6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-direct {p0}, Lcom/google/protobuf/w0$d;->x6()V

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0$b;->e(Lcom/google/protobuf/o0$c;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/w0$d;

    return-object p1
.end method

.method public y6()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/o0$b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extensionLite",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$d;->K6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/o0$b;->k(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public z6(Lcom/google/protobuf/o0;)V
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
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/o0$b;->g(Lcom/google/protobuf/o0;)Lcom/google/protobuf/o0$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$d;->b:Lcom/google/protobuf/o0$b;

    return-void
.end method
