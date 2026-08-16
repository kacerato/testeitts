.class public Lcom/google/protobuf/v0$h;
.super Lcom/google/protobuf/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/b1;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/a0<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/protobuf/b1;

.field public final d:Lcom/google/protobuf/v0$g;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/b1;Ljava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/v0$g;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "defaultValue",
            "messageDefaultInstance",
            "descriptor",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/protobuf/b1;",
            "Lcom/google/protobuf/v0$g;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/a0;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p4}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/A2$b;->MESSAGE:Lcom/google/protobuf/A2$b;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/v0$h;->a:Lcom/google/protobuf/b1;

    iput-object p2, p0, Lcom/google/protobuf/v0$h;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/v0$h;->c:Lcom/google/protobuf/b1;

    iput-object p4, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/google/protobuf/A2$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/protobuf/b1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->c:Lcom/google/protobuf/b1;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->getNumber()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    iget-boolean v0, v0, Lcom/google/protobuf/v0$g;->e:Z

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->Z1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/A2$c;->ENUM:Lcom/google/protobuf/A2$c;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/v0$h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/protobuf/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->a:Lcom/google/protobuf/b1;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/A2$c;->ENUM:Lcom/google/protobuf/A2$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    iget-object v0, v0, Lcom/google/protobuf/v0$g;->b:Lcom/google/protobuf/D0$d;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$d;->findValueByNumber(I)Lcom/google/protobuf/D0$c;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/A2$c;->ENUM:Lcom/google/protobuf/A2$c;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->Z1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/v0$h;->d:Lcom/google/protobuf/v0$g;

    invoke-virtual {v0}, Lcom/google/protobuf/v0$g;->V1()Lcom/google/protobuf/A2$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/A2$c;->ENUM:Lcom/google/protobuf/A2$c;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v0$h;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
