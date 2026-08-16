.class public final Lcom/google/protobuf/Q0;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Q0$b;,
        Lcom/google/protobuf/Q0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/a;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/protobuf/Q0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile e:I


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/A2$b;Ljava/lang/Object;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "keyType",
            "defaultKey",
            "valueType",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/A2$b;",
            "TK;",
            "Lcom/google/protobuf/A2$b;",
            "TV;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/protobuf/Q0;->e:I

    .line 5
    iput-object p3, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    .line 7
    new-instance p3, Lcom/google/protobuf/Q0$c;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/google/protobuf/Q0$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/Q0;Lcom/google/protobuf/A2$b;Lcom/google/protobuf/A2$b;)V

    iput-object p3, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "metadata",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;",
            "Lcom/google/protobuf/C;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/google/protobuf/Q0;->e:I

    .line 15
    :try_start_0
    iput-object p1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    .line 16
    invoke-static {p2, p1, p3}, Lcom/google/protobuf/R0;->h(Lcom/google/protobuf/C;Lcom/google/protobuf/R0$b;Lcom/google/protobuf/d0;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 19
    :goto_0
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 20
    :goto_1
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/b1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;Lcom/google/protobuf/Q0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "metadata",
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Q0$c;",
            "TK;TV;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/protobuf/Q0;->e:I

    .line 10
    iput-object p2, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/protobuf/Q0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic H3(Lcom/google/protobuf/Q0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic V4(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/Q0;->v6(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i4(Lcom/google/protobuf/Q0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private q6(Lcom/google/protobuf/Descriptors$f;)V
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

    iget-object v1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

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

    iget-object p1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object p1, p1, Lcom/google/protobuf/Q0$c;->e:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v6(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metadata",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Q0$c;",
            "TV;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/protobuf/R0$b;->c:Lcom/google/protobuf/A2$b;

    invoke-virtual {p0}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-ne p0, v0, :cond_0

    check-cast p1, Lcom/google/protobuf/b1;

    invoke-interface {p1}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static x6(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/A2$b;Ljava/lang/Object;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)Lcom/google/protobuf/Q0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "keyType",
            "defaultKey",
            "valueType",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/A2$b;",
            "TK;",
            "Lcom/google/protobuf/A2$b;",
            "TV;)",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/protobuf/Q0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/A2$b;Ljava/lang/Object;Lcom/google/protobuf/A2$b;Ljava/lang/Object;)V

    return-object v6
.end method


# virtual methods
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

    iget-object v1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

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

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Q0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Q0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->r6()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->r6()Lcom/google/protobuf/Q0;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

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

    invoke-direct {p0, p1}, Lcom/google/protobuf/Q0;->q6(Lcom/google/protobuf/Descriptors$f;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->s6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->u6()Ljava/lang/Object;

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

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v0, v0, Lcom/google/protobuf/Q0$c;->f:Lcom/google/protobuf/w1;

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

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/Q0;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/protobuf/Q0;->e:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/R0;->b(Lcom/google/protobuf/R0$b;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/Q0;->e:I

    return v0
.end method

.method public getUnknownFields()Lcom/google/protobuf/r2;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/Q0;->q6(Lcom/google/protobuf/Descriptors$f;)V

    const/4 p1, 0x1

    return p1
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Q0;->v6(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->w6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->w6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public r6()Lcom/google/protobuf/Q0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Q0;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v2, v1, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q0;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public s6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final t6()Lcom/google/protobuf/Q0$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->y6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/Q0;->y6()Lcom/google/protobuf/Q0$b;

    move-result-object v0

    return-object v0
.end method

.method public u6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public w6()Lcom/google/protobuf/Q0$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Q0$b;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;Lcom/google/protobuf/Q0$a;)V

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/R0;->l(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/R0$b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public y6()Lcom/google/protobuf/Q0$b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q0$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v7, Lcom/google/protobuf/Q0$b;

    iget-object v1, p0, Lcom/google/protobuf/Q0;->d:Lcom/google/protobuf/Q0$c;

    iget-object v2, p0, Lcom/google/protobuf/Q0;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/protobuf/Q0;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/Q0$b;-><init>(Lcom/google/protobuf/Q0$c;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/google/protobuf/Q0$a;)V

    return-object v7
.end method
