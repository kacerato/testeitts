.class public abstract Lcom/google/protobuf/w0$b;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderT:",
        "Lcom/google/protobuf/w0$b<",
        "TBuilderT;>;>",
        "Lcom/google/protobuf/a$a<",
        "TBuilderT;>;"
    }
.end annotation


# instance fields
.field private builderParent:Lcom/google/protobuf/w0$c;

.field private isClean:Z

.field private meAsParent:Lcom/google/protobuf/w0$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w0$b<",
            "TBuilderT;>.a;"
        }
    .end annotation
.end field

.field private unknownFieldsOrBuilder:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderParent"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/protobuf/w0$b;->builderParent:Lcom/google/protobuf/w0$c;

    return-void
.end method

.method private S0()Ljava/util/Map;
    .locals 6
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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/w0$h;->a(Lcom/google/protobuf/w0$h;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$k;->o()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/google/protobuf/w0$b;->hasOneof(Lcom/google/protobuf/Descriptors$k;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/protobuf/w0$b;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/w0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/protobuf/w0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic access$900(Lcom/google/protobuf/w0$b;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/w0$b;->S0()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final T0(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2;",
            ")TBuilderT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;
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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/w0$h$a;->f(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/w0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$b;
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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/w0$h$a;->a(Lcom/google/protobuf/w0$b;)V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$k;",
            ")TBuilderT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->b(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/w0$h$c;->a(Lcom/google/protobuf/w0$b;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clone()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clone()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clone()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clone()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/w0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderT;"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDefaultInstanceForType()Lcom/google/protobuf/Y0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/w0$b;

    .line 7
    invoke-interface {p0}, Lcom/google/protobuf/Y0$a;->buildPartial()Lcom/google/protobuf/Y0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

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
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->clone()Lcom/google/protobuf/w0$b;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/w0$b;->builderParent:Lcom/google/protobuf/w0$c;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/w0$b;->S0()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/w0$h;->a(Lcom/google/protobuf/w0$h;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/w0$h$a;->c(Lcom/google/protobuf/w0$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/w0$h$a;->p(Lcom/google/protobuf/w0$b;)Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->b(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/w0$h$c;->b(Lcom/google/protobuf/w0$b;)Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    return-object p1
.end method

.method public getParentForChildren()Lcom/google/protobuf/w0$c;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->meAsParent:Lcom/google/protobuf/w0$b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/w0$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/w0$b$a;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/w0$a;)V

    iput-object v0, p0, Lcom/google/protobuf/w0$b;->meAsParent:Lcom/google/protobuf/w0$b$a;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/w0$b;->meAsParent:Lcom/google/protobuf/w0$b$a;

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/w0$h$a;->i(Lcom/google/protobuf/w0$b;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$f;I)Lcom/google/protobuf/Y0$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/w0$h$a;->o(Lcom/google/protobuf/w0$b;I)Lcom/google/protobuf/Y0$a;

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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/w0$h$a;->k(Lcom/google/protobuf/w0$b;)I

    move-result p1

    return p1
.end method

.method public getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/protobuf/r2;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->V4()Lcom/google/protobuf/r2$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/r2$b;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/r2;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/protobuf/r2;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/protobuf/r2;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/r2$b;

    invoke-virtual {v0}, Lcom/google/protobuf/r2$b;->m1()Lcom/google/protobuf/r2;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/w0$h$a;->j(Lcom/google/protobuf/w0$b;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oneof"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->b(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/w0$h$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/w0$h$c;->d(Lcom/google/protobuf/w0$b;)Z

    move-result p1

    return p1
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/S0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No map fields found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetMutableMapField(I)Lcom/google/protobuf/S0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No map fields found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/w0$b;->isClean:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Y0;

    invoke-interface {v2}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/w0$b;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/w0$b;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Y0;

    invoke-interface {v1}, Lcom/google/protobuf/c1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public markClean()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/w0$b;->isClean:Z

    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2;",
            ")TBuilderT;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/protobuf/r2;->b0()Lcom/google/protobuf/r2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/r2$b;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownLengthDelimitedField(ILcom/google/protobuf/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "bytes"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/r2$b;->I6(ILcom/google/protobuf/x;)Lcom/google/protobuf/r2$b;

    return-void
.end method

.method public final mergeUnknownVarintField(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/r2$b;->J6(II)Lcom/google/protobuf/r2$b;

    return-void
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

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/w0$h$a;->l()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    return-object p1
.end method

.method public onBuilt()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->builderParent:Lcom/google/protobuf/w0$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->markClean()V

    :cond_0
    return-void
.end method

.method public final onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/w0$b;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/w0$b;->builderParent:Lcom/google/protobuf/w0$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/a$b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/w0$b;->isClean:Z

    :cond_0
    return-void
.end method

.method public parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z
    .locals 0
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

    invoke-virtual {p1}, Lcom/google/protobuf/C;->g0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/google/protobuf/C;->h0(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getUnknownFieldSetBuilder()Lcom/google/protobuf/r2$b;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/protobuf/r2$b;->v6(ILcom/google/protobuf/C;)Z

    move-result p1

    return p1
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$b;->setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Lcom/google/protobuf/w0$b;
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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/w0$h$a;->e(Lcom/google/protobuf/w0$b;Ljava/lang/Object;)V

    return-object p0
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

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w0$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$f;ILjava/lang/Object;)Lcom/google/protobuf/w0$b;
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

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/w0$h;->c(Lcom/google/protobuf/w0$h;Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/w0$h$a;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Lcom/google/protobuf/w0$h$a;->h(Lcom/google/protobuf/w0$b;ILjava/lang/Object;)V

    return-object p0
.end method

.method public setUnknownFieldSetBuilder(Lcom/google/protobuf/r2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/w0$b;->unknownFieldsOrBuilder:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-void
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2;",
            ")TBuilderT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->T0(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFieldsProto3(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2;",
            ")TBuilderT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$b;->T0(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    return-object p1
.end method
