.class public final enum Lorg/openjdk/javax/lang/model/element/ElementKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/element/ElementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum INSTANCE_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum OTHER:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum STATIC_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

.field public static final enum TYPE_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v0, v1

    const-string v2, "PACKAGE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v2, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v1, v2

    const-string v3, "ENUM"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v3, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v2, v3

    const-string v4, "CLASS"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v4, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v3, v4

    const-string v5, "ANNOTATION_TYPE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v5, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v4, v5

    const-string v6, "INTERFACE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v6, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v5, v6

    const-string v7, "ENUM_CONSTANT"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v7, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v6, v7

    const-string v8, "FIELD"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v8, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v7, v8

    const-string v9, "PARAMETER"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v9, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v8, v9

    const-string v10, "LOCAL_VARIABLE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/openjdk/javax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v10, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v9, v10

    const-string v11, "EXCEPTION_PARAMETER"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/openjdk/javax/lang/model/element/ElementKind;->EXCEPTION_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v11, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v10, v11

    const-string v12, "METHOD"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v12, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v11, v12

    const-string v13, "CONSTRUCTOR"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v13, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v12, v13

    const-string v14, "STATIC_INIT"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/openjdk/javax/lang/model/element/ElementKind;->STATIC_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v14, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v13, v14

    const-string v15, "INSTANCE_INIT"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/openjdk/javax/lang/model/element/ElementKind;->INSTANCE_INIT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v14, v0

    const-string v15, "TYPE_PARAMETER"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->TYPE_PARAMETER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object v15, v0

    const-string v1, "OTHER"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->OTHER:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object/from16 v16, v0

    const-string v1, "RESOURCE_VARIABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->RESOURCE_VARIABLE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    new-instance v0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object/from16 v17, v0

    const-string v1, "MODULE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/element/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->MODULE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    filled-new-array/range {v0 .. v17}, [Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/element/ElementKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/element/ElementKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/element/ElementKind;

    return-object v0
.end method


# virtual methods
.method public isClass()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isField()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM_CONSTANT:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInterface()Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ElementKind;->ANNOTATION_TYPE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
