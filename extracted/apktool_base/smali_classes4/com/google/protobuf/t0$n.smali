.class public Lcom/google/protobuf/t0$n;
.super Lcom/google/protobuf/Z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/Y0;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/Z<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/protobuf/t0$l;

.field public final b:Ljava/lang/Class;

.field public final c:Lcom/google/protobuf/Y0;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Lcom/google/protobuf/Z$a;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/t0$l;Ljava/lang/Class;Lcom/google/protobuf/Y0;Lcom/google/protobuf/Z$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptorRetriever",
            "singularType",
            "messageDefaultInstance",
            "extensionType"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Z;-><init>()V

    const-class v0, Lcom/google/protobuf/Y0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad messageDefaultInstance for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/t0$n;->a:Lcom/google/protobuf/t0$l;

    iput-object p2, p0, Lcom/google/protobuf/t0$n;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/protobuf/t0$n;->c:Lcom/google/protobuf/Y0;

    const-class p1, Lcom/google/protobuf/B1;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Lcom/google/protobuf/Descriptors$e;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-string p3, "valueOf"

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/t0;->H3(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t0$n;->d:Ljava/lang/reflect/Method;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Class;

    const-string p3, "getValueDescriptor"

    invoke-static {p2, p3, p1}, Lcom/google/protobuf/t0;->H3(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/t0$n;->e:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/t0$n;->d:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/google/protobuf/t0$n;->e:Ljava/lang/reflect/Method;

    :goto_1
    iput-object p4, p0, Lcom/google/protobuf/t0$n;->f:Lcom/google/protobuf/Z$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/t0$n;->c:Lcom/google/protobuf/Y0;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/t0$n;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/protobuf/A2$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->U1()Lcom/google/protobuf/A2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/protobuf/b1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->j()Lcom/google/protobuf/Y0;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0$n;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$n;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/protobuf/Descriptors$f;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/t0$n;->a:Lcom/google/protobuf/t0$l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/t0$l;->getDescriptor()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getDescriptor() called before internalInit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/google/protobuf/Z$a;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$n;->f:Lcom/google/protobuf/Z$a;

    return-object v0
.end method

.method public j()Lcom/google/protobuf/Y0;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/t0$n;->c:Lcom/google/protobuf/Y0;

    return-object v0
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/t0$e;->a:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t0$n;->d:Ljava/lang/reflect/Method;

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/t0;->i4(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/t0$n;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/t0$n;->c:Lcom/google/protobuf/Y0;

    invoke-interface {v0}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/t0$e;->a:[I

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/t0$n;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/t0;->i4(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/t0$n;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

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

    invoke-virtual {p0, v1}, Lcom/google/protobuf/t0$n;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/t0$n;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/google/protobuf/Descriptors$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "descriptor"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/t0$n;->a:Lcom/google/protobuf/t0$l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/t0$n$a;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/t0$n$a;-><init>(Lcom/google/protobuf/t0$n;Lcom/google/protobuf/Descriptors$f;)V

    iput-object v0, p0, Lcom/google/protobuf/t0$n;->a:Lcom/google/protobuf/t0$l;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
