.class public final enum Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;",
        ">;",
        "Lcom/github/javaparser/resolution/types/ResolvedType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum BOOLEAN:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum BYTE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum CHAR:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum DOUBLE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum FLOAT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum LONG:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

.field public static final enum SHORT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;


# instance fields
.field private boxTypeClass:Ljava/lang/Class;

.field private name:Ljava/lang/String;

.field private promotionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v6, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-class v4, Ljava/lang/Byte;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string v1, "BYTE"

    const/4 v2, 0x0

    const-string v3, "byte"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v6, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BYTE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v13, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-class v11, Ljava/lang/Short;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v8, "SHORT"

    const/4 v9, 0x1

    const-string v10, "short"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v13, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->SHORT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v7, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-class v4, Ljava/lang/Character;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const-string v1, "CHAR"

    const/4 v2, 0x2

    const-string v3, "char"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v7, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->CHAR:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v8, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v6, v13, v7}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "INT"

    const/16 v16, 0x3

    const-string v17, "int"

    const-class v18, Ljava/lang/Integer;

    move-object v14, v8

    invoke-direct/range {v14 .. v19}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v8, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v9, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v6, v13, v8, v7}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v1, "LONG"

    const/4 v2, 0x4

    const-string v3, "long"

    const-class v4, Ljava/lang/Long;

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v9, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->LONG:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v10, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    const-class v18, Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    const-string v15, "BOOLEAN"

    const/16 v16, 0x5

    const-string v17, "boolean"

    move-object v14, v10

    invoke-direct/range {v14 .. v19}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v10, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BOOLEAN:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v11, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v9, v8, v13, v6, v7}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    const-string v3, "float"

    const-class v4, Ljava/lang/Float;

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v11, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->FLOAT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    new-instance v12, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-object v1, v9

    move-object v2, v8

    move-object v3, v13

    move-object v4, v6

    move-object v5, v7

    filled-new-array/range {v0 .. v5}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "DOUBLE"

    const/16 v16, 0x7

    const-string v17, "double"

    const-class v18, Ljava/lang/Double;

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    sput-object v12, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->DOUBLE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-object v0, v6

    move-object v1, v13

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    filled-new-array/range {v0 .. v7}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->$VALUES:[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name",
            "boxTypeClass",
            "promotionTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->lambda$in$0(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p0

    return p0
.end method

.method public static byBoxTypeQName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static byName(Ljava/lang/String;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->describe()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNumericPrimitiveTypes()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 7

    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BYTE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->SHORT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v2, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v3, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->LONG:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v4, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->FLOAT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v5, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->DOUBLE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v6, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->CHAR:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array/range {v0 .. v6}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public static isBoxType(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private synthetic lambda$in$0(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "type"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static unp(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isUnboxable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->toUnboxedType()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v2, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BYTE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v3, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->SHORT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v4, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->CHAR:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v5, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v2, v3, v4, v5}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->in([Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v5

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->toUnboxedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->LONG:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v2, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->FLOAT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v3, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->DOUBLE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v1, v2, v3}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->in([Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->toUnboxedType()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object p0

    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BYTE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v2, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->CHAR:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    sget-object v3, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->SHORT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    filled-new-array {v1, v2, v3}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->in([Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1

    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->$VALUES:[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-virtual {v0}, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object v0
.end method


# virtual methods
.method public asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 0

    return-object p0
.end method

.method public bnp(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->DOUBLE:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->FLOAT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->LONG:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    if-eq p0, v0, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->INT:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxTypeClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getBoxTypeQName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs in([Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/resolution/types/d;

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/types/d;-><init>(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->promotionTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method public isBoolean()Z
    .locals 1

    sget-object v0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->BOOLEAN:Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumeric()Z
    .locals 1

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getNumericPrimitiveTypes()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->boxTypeClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/github/javaparser/utils/TypeUtils;->getPrimitiveTypeDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimitiveTypeUsage{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
