.class public abstract Lcom/google/protobuf/v0$d;
.super Lcom/google/protobuf/v0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/v0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/v0$e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/v0$d<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/v0$b<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/v0$f<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/protobuf/v0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0$b;-><init>(Lcom/google/protobuf/v0;)V

    return-void
.end method

.method private B6()Lcom/google/protobuf/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/v0$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    iget-object v0, v0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v1, Lcom/google/protobuf/v0$e;

    iput-object v0, v1, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final A6(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$d;
    .locals 1
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$d;->F6(Lcom/google/protobuf/v0$h;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    invoke-direct {p0}, Lcom/google/protobuf/v0$d;->B6()Lcom/google/protobuf/o0;

    move-result-object v0

    iget-object p1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->j(Lcom/google/protobuf/o0$c;)V

    return-object p0
.end method

.method public C6(Lcom/google/protobuf/o0;)V
    .locals 1
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
            "Lcom/google/protobuf/v0$g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    iput-object p1, v0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    return-void
.end method

.method public final D6(Lcom/google/protobuf/a0;ILjava/lang/Object;)Lcom/google/protobuf/v0$d;
    .locals 2
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$d;->F6(Lcom/google/protobuf/v0$h;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    invoke-direct {p0}, Lcom/google/protobuf/v0$d;->B6()Lcom/google/protobuf/o0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/google/protobuf/o0;->Q(Lcom/google/protobuf/o0$c;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final E6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/v0$d;
    .locals 2
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$d;->F6(Lcom/google/protobuf/v0$h;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    invoke-direct {p0}, Lcom/google/protobuf/v0$d;->B6()Lcom/google/protobuf/o0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/v0$h;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final F6(Lcom/google/protobuf/v0$h;)V
    .locals 1
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
            "Lcom/google/protobuf/v0$h<",
            "TMessageType;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/v0$h;->h()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->q6()Lcom/google/protobuf/v0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic T0()Lcom/google/protobuf/v0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$d;->z6()Lcom/google/protobuf/v0$e;

    move-result-object v0

    return-object v0
.end method

.method public a5()V
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/v0$b;->a5()V

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    iget-object v0, v0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/v0$e;

    check-cast v0, Lcom/google/protobuf/v0$e;

    iget-object v0, v0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    :cond_0
    return-void
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$d;->z6()Lcom/google/protobuf/v0$e;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lcom/google/protobuf/a0;)Ljava/lang/Object;
    .locals 1
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0$e;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

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
            "extension"
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

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0$e;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public final u(Lcom/google/protobuf/a0;)Z
    .locals 1
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/v0$e;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final y6(Lcom/google/protobuf/a0;Ljava/lang/Object;)Lcom/google/protobuf/v0$d;
    .locals 2
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$d;->F6(Lcom/google/protobuf/v0$h;)V

    invoke-virtual {p0}, Lcom/google/protobuf/v0$b;->v3()V

    invoke-direct {p0}, Lcom/google/protobuf/v0$d;->B6()Lcom/google/protobuf/o0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;
    .locals 1
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
            "Lcom/google/protobuf/a0<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/v0$e;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z6()Lcom/google/protobuf/v0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->F6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0$b;->c:Lcom/google/protobuf/v0;

    check-cast v0, Lcom/google/protobuf/v0$e;

    iget-object v0, v0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->J()V

    invoke-super {p0}, Lcom/google/protobuf/v0$b;->T0()Lcom/google/protobuf/v0;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/v0$e;

    return-object v0
.end method
