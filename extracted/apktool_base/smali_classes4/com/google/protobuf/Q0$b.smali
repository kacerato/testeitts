.class public Lcom/google/protobuf/Q0$b;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/a$a<",
        "Lcom/google/protobuf/Q0$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/protobuf/Q0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Q0$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    iget-object v2, p1, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/Q0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "metadata",
            "key",
            "value",
            "hasKey",
            "hasValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    .line 6
    iput-object p2, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lcom/google/protobuf/Q0$b;->e:Z

    .line 9
    iput-boolean p5, p0, Lcom/google/protobuf/Q0$b;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/google/protobuf/Q0$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method


# virtual methods
.method public final I1(Lcom/google/protobuf/Descriptors$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v1, v1, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong FieldDescriptor \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" used in message \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object p1, p1, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public T0()Lcom/google/protobuf/Q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->m1()Lcom/google/protobuf/Q0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public a5()Lcom/google/protobuf/Q0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v0, v0, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/Q0$b;->e:Z

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Q0$b;->S0(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->T0()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->T0()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->m1()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->m1()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->v3(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->r6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->r6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->r6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->r6()Lcom/google/protobuf/Q0$b;

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
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->r6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v1, v1, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Q0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Q0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->s6()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->s6()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v0, v0, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->I1(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->t6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->u6()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$c;->ENUM:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->s()Lcom/google/protobuf/Descriptors$d;

    move-result-object p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Descriptors$d;->k(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "There is no repeated field in a map entry message."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUnknownFields()Lcom/google/protobuf/r2;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

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

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->I1(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/protobuf/Q0$b;->e:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/protobuf/Q0$b;->f:Z

    :goto_0
    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Q0;->V4(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m1()Lcom/google/protobuf/Q0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Q0;

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v2, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/Q0$a;)V

    return-object v0
.end method

.method public newBuilderForField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->I1(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-interface {p1}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not a message value field."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q6()Lcom/google/protobuf/Q0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v0, v0, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/Q0$b;->f:Z

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/Q0$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/protobuf/Q0$b;

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v2, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/google/protobuf/Q0$b;->e:Z

    iget-boolean v5, p0, Lcom/google/protobuf/Q0$b;->f:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-object v6
.end method

.method public s6()Lcom/google/protobuf/Q0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Q0;

    iget-object v1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object v2, v1, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/Q0$a;)V

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Q0$b;->v6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Q0$b;->x6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Q0$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public u6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public v3(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Q0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            ")",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->I1(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->a5()Lcom/google/protobuf/Q0$b;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Q0$b;->q6()Lcom/google/protobuf/Q0$b;

    :goto_0
    return-object p0
.end method

.method public v6(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;
    .locals 2
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Q0$b;->I1(Lcom/google/protobuf/Descriptors$f;)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/Q0$b;->w6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->ENUM:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_1

    check-cast p2, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object p1

    sget-object v0, Lcom/google/protobuf/Descriptors$f$c;->MESSAGE:Lcom/google/protobuf/Descriptors$f$c;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object p1, p1, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/protobuf/Q0$b;->b:Lcom/google/protobuf/Q0$c;

    iget-object p1, p1, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-interface {p1}, Lcom/google/protobuf/Y0;->toBuilder()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    check-cast p2, Lcom/google/protobuf/Y0;

    invoke-interface {p1, p2}, Lcom/google/protobuf/Y0$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/Q0$b;->z6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;

    :goto_1
    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Q0$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/Q0$b;->e:Z

    return-object p0
.end method

.method public x6(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/Q0$b;
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$f;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "There is no repeated field in a map entry message."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Q0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2;",
            ")",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public z6(Ljava/lang/Object;)Lcom/google/protobuf/Q0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/Q0$b;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/Q0$b;->f:Z

    return-object p0
.end method
