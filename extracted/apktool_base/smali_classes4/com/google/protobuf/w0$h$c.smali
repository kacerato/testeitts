.class public Lcom/google/protobuf/w0$h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$b;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Lcom/google/protobuf/Descriptors$f;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
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
            "oneofIndex",
            "camelCaseName",
            "messageClass",
            "builderClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/w0$b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/w0$h$c;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$k;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->t()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/google/protobuf/w0$h$c;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/google/protobuf/w0$h$c;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$k;->q()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$f;

    iput-object p1, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Case"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Class;

    invoke-static {p4, p1, v3}, Lcom/google/protobuf/w0;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$h$c;->b:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/google/protobuf/w0;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$h$c;->c:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clear"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    invoke-static {p5, p1, p2}, Lcom/google/protobuf/w0;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$h$c;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/w0$b;)V
    .locals 2
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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/w0;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/google/protobuf/w0$b;)Lcom/google/protobuf/Descriptors$f;
    .locals 3
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
            "Lcom/google/protobuf/Descriptors$f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/w0;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public c(Lcom/google/protobuf/w0;)Lcom/google/protobuf/Descriptors$f;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/w0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/w0;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public d(Lcom/google/protobuf/w0$b;)Z
    .locals 3
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

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/w0;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e(Lcom/google/protobuf/w0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->e:Lcom/google/protobuf/Descriptors$f;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/w0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/w0$h$c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/google/protobuf/w0;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/D0$c;

    invoke-interface {p1}, Lcom/google/protobuf/D0$c;->getNumber()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
