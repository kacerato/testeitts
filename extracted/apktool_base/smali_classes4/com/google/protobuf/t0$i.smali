.class public abstract Lcom/google/protobuf/t0$i;
.super Lcom/google/protobuf/t0$f;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t0$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/t0$j;",
        "BuilderType:",
        "Lcom/google/protobuf/t0$i<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/t0$f<",
        "TBuilderType;>;",
        "Lcom/google/protobuf/t0$k<",
        "TMessageType;>;"
    }
.end annotation


# instance fields
.field public f:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/t0$f;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/t0$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$f;-><init>(Lcom/google/protobuf/t0$g;)V

    .line 4
    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    return-void
.end method

.method private W6(Lcom/google/protobuf/Descriptors$f;)V
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

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic y6(Lcom/google/protobuf/t0$i;)Lcom/google/protobuf/o0;
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->D6()Lcom/google/protobuf/o0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public B6(Lcom/google/protobuf/t0$n;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->A6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public C6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/t0$f;->T0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$f;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0$i;

    return-object p1
.end method

.method public final D6()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->J()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    return-object v0
.end method

.method public E6()Lcom/google/protobuf/t0$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-super {p0}, Lcom/google/protobuf/t0$f;->m1()Lcom/google/protobuf/t0$f;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t0$i;

    return-object v0
.end method

.method public final F6(Lcom/google/protobuf/Z;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->G6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public final G6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->j(Lcom/google/protobuf/o0$c;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0
.end method

.method public H6(Lcom/google/protobuf/t0$n;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->G6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I1(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->I6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public I6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$i;
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
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->j(Lcom/google/protobuf/o0$c;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/t0$f;->I1(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$f;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0$i;

    return-object p1
.end method

.method public J6()Lcom/google/protobuf/t0$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/t0$f;->a5()Lcom/google/protobuf/t0$f;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/t0$i;

    return-object v0
.end method

.method public final K6()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    :cond_0
    return-void
.end method

.method public L6()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->E()Z

    move-result v0

    return v0
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public M6(Lcom/google/protobuf/o0;)V
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

    iput-object p1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    return-void
.end method

.method public final N6(Lcom/google/protobuf/t0$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-static {p1}, Lcom/google/protobuf/t0$j;->A6(Lcom/google/protobuf/t0$j;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->K(Lcom/google/protobuf/o0;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-void
.end method

.method public final O6(Lcom/google/protobuf/Z;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0$i;->Q6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public final P6(Lcom/google/protobuf/Z;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->R6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public final Q6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/Z;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Lcom/google/protobuf/o0;->Q(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final R6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0
.end method

.method public S6(Lcom/google/protobuf/t0$n;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0$i;->Q6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$f;
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->C6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public T6(Lcom/google/protobuf/t0$n;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->R6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public U6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/t0$f;->v6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$f;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0$i;

    return-object p1
.end method

.method public V6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->K6()V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/o0;->Q(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->onChanged()V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/t0$f;->w6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/t0$f;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/t0$i;

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final X6(Lcom/google/protobuf/Z;)V
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
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

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

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a5()Lcom/google/protobuf/t0$f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->C6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->E6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->E6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->E6()Lcom/google/protobuf/t0$i;

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->I6(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->J6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
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

    invoke-static {p0}, Lcom/google/protobuf/t0$f;->S0(Lcom/google/protobuf/t0$f;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v1}, Lcom/google/protobuf/o0;->t()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

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

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/t0$f;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

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

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/t0$f;->getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;

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

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/t0$f;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I

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

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/t0$i;->W6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/t0$f;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/t0$f;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->L6()Z

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m1()Lcom/google/protobuf/t0$f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$i;->E6()Lcom/google/protobuf/t0$i;

    move-result-object v0

    return-object v0
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->j()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->U6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0$i;->V6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;

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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    iget-object v0, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public u6(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$f;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/f1$b;

    invoke-direct {v4, p0}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/Y0$a;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f1;->g(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic v6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$f;
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->U6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/t0$f;
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/t0$i;->V6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/t0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$i;->X6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/t0$i;->f:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z6(Lcom/google/protobuf/Z;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;
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
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/t0$i;->A6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/t0$i;

    move-result-object p1

    return-object p1
.end method
