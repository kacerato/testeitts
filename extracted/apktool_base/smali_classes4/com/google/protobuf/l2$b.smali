.class public final Lcom/google/protobuf/l2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l2$b;->a:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/l2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/l2$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/l2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/l2$b;->c(Lcom/google/protobuf/Descriptors$g;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A TypeRegistry.Builder can only be used once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/protobuf/l2$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Descriptors$b;",
            ">;)",
            "Lcom/google/protobuf/l2$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l2$b;->c(Lcom/google/protobuf/Descriptors$g;)V

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A TypeRegistry.Builder can only be used once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/protobuf/Descriptors$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/l2$b;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$g;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/l2$b;->c(Lcom/google/protobuf/Descriptors$g;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/l2$b;->d(Lcom/google/protobuf/Descriptors$b;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final d(Lcom/google/protobuf/Descriptors$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/l2$b;->d(Lcom/google/protobuf/Descriptors$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/l2;->a()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is added multiple times."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Lcom/google/protobuf/l2;
    .locals 2

    new-instance v0, Lcom/google/protobuf/l2;

    iget-object v1, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/protobuf/l2;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/protobuf/l2$b;->b:Ljava/util/Map;

    return-object v0
.end method
