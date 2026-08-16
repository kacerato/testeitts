.class public final enum Lorg/openjdk/tools/javac/code/Kinds$KindName;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/Formattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Kinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KindName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
        ">;",
        "Lorg/openjdk/tools/javac/api/Formattable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum ANNOTATION:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum BOUND:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum ENUM:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum INSTANCE_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum INTERFACE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum MODULE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum STATIC:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum STATIC_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum TYPEVAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum VAL:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field public static final enum VAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v1, 0x0

    const-string v2, "kindname.annotation"

    const-string v3, "ANNOTATION"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->ANNOTATION:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v2, 0x1

    const-string v3, "kindname.constructor"

    const-string v4, "CONSTRUCTOR"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v3, 0x2

    const-string v4, "kindname.interface"

    const-string v5, "INTERFACE"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INTERFACE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v3, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v4, 0x3

    const-string v5, "kindname.enum"

    const-string v6, "ENUM"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindName;->ENUM:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v4, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v5, 0x4

    const-string v6, "kindname.static"

    const-string v7, "STATIC"

    invoke-direct {v4, v7, v5, v6}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindName;->STATIC:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v5, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v6, 0x5

    const-string v7, "kindname.type.variable"

    const-string v8, "TYPEVAR"

    invoke-direct {v5, v8, v6, v7}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindName;->TYPEVAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v6, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v7, 0x6

    const-string v8, "kindname.type.variable.bound"

    const-string v9, "BOUND"

    invoke-direct {v6, v9, v7, v8}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Kinds$KindName;->BOUND:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v7, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/4 v8, 0x7

    const-string v9, "kindname.variable"

    const-string v10, "VAR"

    invoke-direct {v7, v10, v8, v9}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v8, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v9, 0x8

    const-string v10, "kindname.value"

    const-string v11, "VAL"

    invoke-direct {v8, v11, v9, v10}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v9, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v10, 0x9

    const-string v11, "kindname.method"

    const-string v12, "METHOD"

    invoke-direct {v9, v12, v10, v11}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v10, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v11, 0xa

    const-string v12, "kindname.class"

    const-string v13, "CLASS"

    invoke-direct {v10, v13, v11, v12}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v11, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v12, 0xb

    const-string v13, "kindname.static.init"

    const-string v14, "STATIC_INIT"

    invoke-direct {v11, v14, v12, v13}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/openjdk/tools/javac/code/Kinds$KindName;->STATIC_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v12, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v13, 0xc

    const-string v14, "kindname.instance.init"

    const-string v15, "INSTANCE_INIT"

    invoke-direct {v12, v15, v13, v14}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INSTANCE_INIT:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v13, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v14, 0xd

    const-string v15, "kindname.package"

    move-object/from16 v16, v12

    const-string v12, "PACKAGE"

    invoke-direct {v13, v12, v14, v15}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/openjdk/tools/javac/code/Kinds$KindName;->PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    new-instance v14, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    const/16 v12, 0xe

    const-string v15, "kindname.module"

    move-object/from16 v17, v13

    const-string v13, "MODULE"

    invoke-direct {v14, v13, v12, v15}, Lorg/openjdk/tools/javac/code/Kinds$KindName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/openjdk/tools/javac/code/Kinds$KindName;->MODULE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->$VALUES:[Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->$VALUES:[Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Kinds$KindName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Kinds$KindName;

    return-object v0
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .locals 1

    const-string v0, "Kindname"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$KindName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/util/Locale;Lorg/openjdk/tools/javac/api/Messages;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Kinds$KindName;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compiler.misc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0, v1}, Lorg/openjdk/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
