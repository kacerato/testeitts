.class public final enum Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/type/PrimitiveType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Primitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum BOOLEAN:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum BYTE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum CHAR:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum DOUBLE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum FLOAT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum INT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum LONG:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

.field public static final enum SHORT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;


# instance fields
.field private codeRepresentation:Ljava/lang/String;

.field final descriptor:Ljava/lang/String;

.field final nameOfBoxedType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v1, "Boolean"

    const-string v2, "Z"

    const-string v3, "BOOLEAN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->BOOLEAN:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v2, "Character"

    const-string v3, "C"

    const-string v4, "CHAR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->CHAR:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v2, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v3, "Byte"

    const-string v4, "B"

    const-string v5, "BYTE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->BYTE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v3, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v4, "Short"

    const-string v5, "S"

    const-string v6, "SHORT"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->SHORT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v4, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v5, "Integer"

    const-string v6, "I"

    const-string v7, "INT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->INT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v5, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v6, "Long"

    const-string v7, "J"

    const-string v8, "LONG"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->LONG:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v6, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v7, "Float"

    const-string v8, "F"

    const-string v9, "FLOAT"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->FLOAT:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    new-instance v7, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    const-string v8, "Double"

    const-string v9, "D"

    const-string v10, "DOUBLE"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->DOUBLE:Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    filled-new-array/range {v0 .. v7}, [Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->$VALUES:[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "nameOfBoxedType",
            "descriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->codeRepresentation:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->descriptor:Ljava/lang/String;

    return-void
.end method

.method public static byBoxedTypeName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simpleName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/type/PrimitiveType;->unboxMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static byTypeName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->values()[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->$VALUES:[Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    invoke-virtual {v0}, [Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->codeRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toBoxedType()Lcom/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->nameOfBoxedType:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/javaparser/StaticJavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/type/PrimitiveType$Primitive;->descriptor:Ljava/lang/String;

    return-object v0
.end method
