.class public abstract Lcom/google/protobuf/v0$e;
.super Lcom/google/protobuf/v0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/v0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/v0$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/v0$e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/v0$d<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/v0<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/v0$f<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public i:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/v0$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/v0;-><init>()V

    invoke-static {}, Lcom/google/protobuf/o0;->s()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    return-void
.end method

.method private A7(Lcom/google/protobuf/v0$h;)V
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

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->z6()Lcom/google/protobuf/v0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final m7(Lcom/google/protobuf/C;Lcom/google/protobuf/v0$h;Lcom/google/protobuf/d0;I)V
    .locals 7
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
            "typeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/v0$h<",
            "**>;",
            "Lcom/google/protobuf/d0;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p4, v0}, Lcom/google/protobuf/A2;->c(II)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/v0$e;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/v0$h;II)Z

    return-void
.end method

.method public n7()Lcom/google/protobuf/o0;
    .locals 1
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/v0$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    return-object v0
.end method

.method public p7()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->E()Z

    move-result v0

    return v0
.end method

.method public q7()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->z()I

    move-result v0

    return v0
.end method

.method public final r(Lcom/google/protobuf/a0;)Ljava/lang/Object;
    .locals 2
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

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0$e;->A7(Lcom/google/protobuf/v0$h;)V

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object v1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/protobuf/v0$h;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/v0$h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r7()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->v()I

    move-result v0

    return v0
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

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0$e;->A7(Lcom/google/protobuf/v0$h;)V

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1
.end method

.method public final s7(Lcom/google/protobuf/v0$e;)V
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
            "(TMessageType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->k()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p1, p1, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->K(Lcom/google/protobuf/o0;)V

    return-void
.end method

.method public final t7(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;Lcom/google/protobuf/v0$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rawBytes",
            "extensionRegistry",
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/x;",
            "Lcom/google/protobuf/d0;",
            "Lcom/google/protobuf/v0$h<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object v1, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/b1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/protobuf/v0$h;->c()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/b1;->newBuilderForType()Lcom/google/protobuf/b1$a;

    move-result-object v0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;

    invoke-interface {v0}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/v0$e;->n7()Lcom/google/protobuf/o0;

    move-result-object p2

    iget-object v0, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    return-void
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

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0$e;->A7(Lcom/google/protobuf/v0$h;)V

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public final u7(Lcom/google/protobuf/b1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/b1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")V"
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
    invoke-virtual {p2}, Lcom/google/protobuf/C;->Z()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget v5, Lcom/google/protobuf/A2;->s:I

    if-ne v4, v5, :cond_2

    invoke-virtual {p2}, Lcom/google/protobuf/C;->a0()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v0}, Lcom/google/protobuf/d0;->c(Lcom/google/protobuf/b1;I)Lcom/google/protobuf/v0$h;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget v5, Lcom/google/protobuf/A2;->t:I

    if-ne v4, v5, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2, v3, p3, v0}, Lcom/google/protobuf/v0$e;->m7(Lcom/google/protobuf/C;Lcom/google/protobuf/v0$h;Lcom/google/protobuf/d0;I)V

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/C;->h0(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    sget p1, Lcom/google/protobuf/A2;->r:I

    invoke-virtual {p2, p1}, Lcom/google/protobuf/C;->a(I)V

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, p3, v3}, Lcom/google/protobuf/v0$e;->t7(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;Lcom/google/protobuf/v0$h;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/v0;->I6(ILcom/google/protobuf/x;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public v7()Lcom/google/protobuf/v0$e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0$e<",
            "TMessageType;TBuilderType;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/v0$e$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/v0$e$a;-><init>(Lcom/google/protobuf/v0$e;ZLcom/google/protobuf/v0$a;)V

    return-object v0
.end method

.method public w7()Lcom/google/protobuf/v0$e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0$e<",
            "TMessageType;TBuilderType;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/v0$e$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/v0$e$a;-><init>(Lcom/google/protobuf/v0$e;ZLcom/google/protobuf/v0$a;)V

    return-object v0
.end method

.method public final x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/v0$h;II)Z
    .locals 5
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
            "extensionRegistry",
            "extension",
            "tag",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            "Lcom/google/protobuf/v0$h<",
            "**>;II)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v3}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->A(Lcom/google/protobuf/A2$b;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v2

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v3, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    iget-boolean v4, v3, Lcom/google/protobuf/v0$g;->e:Z

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/google/protobuf/v0$g;->d:Lcom/google/protobuf/A2$b;

    invoke-virtual {v3}, Lcom/google/protobuf/A2$b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v3}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/protobuf/o0;->A(Lcom/google/protobuf/A2$b;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    move v3, v1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, p4, p1}, Lcom/google/protobuf/v0;->i7(ILcom/google/protobuf/C;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/v0$e;->n7()Lcom/google/protobuf/o0;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->u(I)I

    move-result p2

    iget-object p4, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p4}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p4

    sget-object p5, Lcom/google/protobuf/A2$b;->ENUM:Lcom/google/protobuf/A2$b;

    if-ne p4, p5, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result p4

    if-lez p4, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result p4

    iget-object p5, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p5}, Lcom/google/protobuf/v0$g;->W1()Lcom/google/protobuf/D0$d;

    move-result-object p5

    invoke-interface {p5, p4}, Lcom/google/protobuf/D0$d;->findValueByNumber(I)Lcom/google/protobuf/D0$c;

    move-result-object p4

    if-nez p4, :cond_4

    return v1

    :cond_4
    iget-object p5, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object v0, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p3, p4}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result p4

    if-lez p4, :cond_6

    iget-object p4, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p4}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p4

    invoke-static {p1, p4, v2}, Lcom/google/protobuf/o0;->O(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Z)Ljava/lang/Object;

    move-result-object p4

    iget-object p5, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object v0, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p5, v0, p4}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/C;->t(I)V

    goto/16 :goto_6

    :cond_7
    sget-object p4, Lcom/google/protobuf/v0$a;->a:[I

    iget-object v0, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v1, :cond_a

    const/4 p2, 0x2

    if-eq p4, p2, :cond_8

    iget-object p2, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p2}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/google/protobuf/o0;->O(Lcom/google/protobuf/C;Lcom/google/protobuf/A2$b;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result p1

    iget-object p2, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p2}, Lcom/google/protobuf/v0$g;->W1()Lcom/google/protobuf/D0$d;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/protobuf/D0$d;->findValueByNumber(I)Lcom/google/protobuf/D0$c;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-virtual {p0, p5, p1}, Lcom/google/protobuf/v0;->K6(II)V

    return v1

    :cond_9
    move-object p1, p2

    goto :goto_5

    :cond_a
    iget-object p4, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p4}, Lcom/google/protobuf/v0$g;->Z1()Z

    move-result p4

    if-nez p4, :cond_b

    iget-object p4, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p5, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p4, p5}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/protobuf/b1;

    if-eqz p4, :cond_b

    invoke-interface {p4}, Lcom/google/protobuf/b1;->toBuilder()Lcom/google/protobuf/b1$a;

    move-result-object p4

    goto :goto_3

    :cond_b
    const/4 p4, 0x0

    :goto_3
    if-nez p4, :cond_c

    invoke-virtual {p3}, Lcom/google/protobuf/v0$h;->c()Lcom/google/protobuf/b1;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/protobuf/b1;->newBuilderForType()Lcom/google/protobuf/b1$a;

    move-result-object p4

    :cond_c
    iget-object p5, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p5}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/A2$b;->GROUP:Lcom/google/protobuf/A2$b;

    if-ne p5, v0, :cond_d

    invoke-virtual {p3}, Lcom/google/protobuf/v0$h;->d()I

    move-result p5

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/protobuf/C;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    :goto_4
    invoke-interface {p4}, Lcom/google/protobuf/b1$a;->build()Lcom/google/protobuf/b1;

    move-result-object p1

    :goto_5
    iget-object p2, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p2}, Lcom/google/protobuf/v0$g;->Z1()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p4, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/o0;->h(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object p2, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object p4, p3, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {p3, p1}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    :goto_6
    return v1
.end method

.method public y7(Lcom/google/protobuf/b1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/b1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/protobuf/A2;->a(I)I

    move-result v5

    invoke-virtual {p3, p1, v5}, Lcom/google/protobuf/d0;->c(Lcom/google/protobuf/b1;I)Lcom/google/protobuf/v0$h;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/v0$e;->x7(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/v0$h;II)Z

    move-result p1

    return p1
.end method

.method public final z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;
    .locals 2
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

    invoke-static {p1}, Lcom/google/protobuf/v0;->b0(Lcom/google/protobuf/a0;)Lcom/google/protobuf/v0$h;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/v0$e;->A7(Lcom/google/protobuf/v0$h;)V

    iget-object v0, p0, Lcom/google/protobuf/v0$e;->i:Lcom/google/protobuf/o0;

    iget-object v1, p1, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/v0$h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z7(Lcom/google/protobuf/b1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/b1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/google/protobuf/A2;->q:I

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v0$e;->u7(Lcom/google/protobuf/b1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {p4}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v0$e;->y7(Lcom/google/protobuf/b1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/C;->h0(I)Z

    move-result p1

    return p1
.end method
