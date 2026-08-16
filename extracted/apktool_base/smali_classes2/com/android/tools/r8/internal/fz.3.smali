.class public abstract Lcom/android/tools/r8/internal/fz;
.super Lcom/android/tools/r8/internal/I0;
.source "SourceFile"


# instance fields
.field private builderParent:Lcom/android/tools/r8/internal/gz;

.field private isClean:Z

.field private meAsParent:Lcom/android/tools/r8/internal/ez;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/ez;"
        }
    .end annotation
.end field

.field private unknownFields:Lcom/android/tools/r8/internal/pv0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/gz;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/I0;-><init>()V

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/fz;->builderParent:Lcom/android/tools/r8/internal/gz;

    return-void
.end method

.method private a()Ljava/util/TreeMap;
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    if-eqz v4, :cond_1

    iget v3, v4, Lcom/android/tools/r8/internal/Sl;->g:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/fz;->hasOneof(Lcom/android/tools/r8/internal/Sl;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/fz;->getOneofFieldDescriptor(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/Ol;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/fz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/fz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/fz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic access$900(Lcom/android/tools/r8/internal/fz;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;->a()Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public clear()Lcom/android/tools/r8/internal/fz;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/fz;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->d(Lcom/android/tools/r8/internal/fz;)V

    return-object p0
.end method

.method public clearOneof(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/fz;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Lcom/android/tools/r8/internal/fz;
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/fW;->newBuilderForType()Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fz;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/eW;->buildPartial()Lcom/android/tools/r8/internal/fW;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fz;->builderParent:Lcom/android/tools/r8/internal/gz;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;->a()Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/jz;->c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->e(Lcom/android/tools/r8/internal/fz;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/Ol;
    .locals 7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/QI;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result v0

    if-lez v0, :cond_4

    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v3, p1

    sget-object v4, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    sget-object v4, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-gt v2, v3, :cond_4

    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    aget-object v5, p1, v4

    iget-object v6, v5, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v6, v6, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ge v0, v6, :cond_2

    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_2
    if-le v0, v6, :cond_3

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v5

    :cond_4
    return-object v1
.end method

.method public getParentForChildren()Lcom/android/tools/r8/internal/gz;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->meAsParent:Lcom/android/tools/r8/internal/ez;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ez;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ez;-><init>(Lcom/android/tools/r8/internal/fz;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fz;->meAsParent:Lcom/android/tools/r8/internal/ez;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->meAsParent:Lcom/android/tools/r8/internal/ez;

    return-object v0
.end method

.method public getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/android/tools/r8/internal/Ol;I)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;I)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/fz;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/android/tools/r8/internal/Sl;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/fz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
.end method

.method public internalGetMapField(I)Lcom/android/tools/r8/internal/NU;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No map fields found in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internalGetMutableMapField(I)Lcom/android/tools/r8/internal/NU;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No map fields found in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isClean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fz;->isClean:Z

    return v0
.end method

.method public markClean()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/fz;->isClean:Z

    return-void
.end method

.method public mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    sget-object v1, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jz;->a()Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public onBuilt()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->builderParent:Lcom/android/tools/r8/internal/gz;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->markClean()V

    :cond_0
    return-void
.end method

.method public final onChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fz;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fz;->builderParent:Lcom/android/tools/r8/internal/gz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/J0;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/fz;->isClean:Z

    :cond_0
    return-void
.end method

.method public setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setRepeatedField(Lcom/android/tools/r8/internal/Ol;ILjava/lang/Object;)Lcom/android/tools/r8/internal/fz;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V

    return-object p0
.end method

.method public setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public setUnknownFieldsProto3(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/pv0;",
            ")",
            "Lcom/android/tools/r8/internal/fz;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/tools/r8/internal/fz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method
