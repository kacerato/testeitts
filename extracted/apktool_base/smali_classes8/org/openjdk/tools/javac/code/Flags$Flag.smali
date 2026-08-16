.class public final enum Lorg/openjdk/tools/javac/code/Flags$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Flags$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ABSTRACT:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ACYCLIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ACYCLIC_ANN:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ANNOTATION:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ANONCONSTR:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum AUTOMATIC_MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum AUXILIARY:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum BAD_OVERRIDE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum BLOCK:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum BRIDGE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum CLASH:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum CLASS_SEEN:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum COMPOUND:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum DEFAULT:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum DEPRECATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum DEPRECATED_ANNOTATION:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum DEPRECATED_REMOVAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum EFFECTIVELY_FINAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum ENUM:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum EXISTS:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum FINAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum GENERATEDCONSTR:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum HASINIT:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum HAS_RESOURCE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum HYPOTHETICAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum INTERFACE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum LAMBDA_METHOD:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum LOCKED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum MANDATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum NATIVE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum NOOUTERTHIS:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum NOT_IN_PROFILE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum PARAMETER:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum PRIVATE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum PROPRIETARY:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum PROTECTED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum PUBLIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum SIGNATURE_POLYMORPHIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum SOURCE_SEEN:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum STATIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum STRICTFP:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum SYNCHRONIZED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum SYNTHETIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum SYSTEM_MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum THROWS:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum TRANSIENT:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum TYPE_TRANSLATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum UNATTRIBUTED:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum UNION:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum VARARGS:Lorg/openjdk/tools/javac/code/Flags$Flag;

.field public static final enum VOLATILE:Lorg/openjdk/tools/javac/code/Flags$Flag;


# instance fields
.field final lowercaseName:Ljava/lang/String;

.field final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 57

    new-instance v1, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v0, v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    const-string v5, "PUBLIC"

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Flags$Flag;->PUBLIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v2, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v1, v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x2

    const-string v6, "PRIVATE"

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Flags$Flag;->PRIVATE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v3, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v2, v3

    const/4 v4, 0x2

    const-wide/16 v5, 0x4

    const-string v7, "PROTECTED"

    invoke-direct {v3, v7, v4, v5, v6}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Flags$Flag;->PROTECTED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v4, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v3, v4

    const/4 v5, 0x3

    const-wide/16 v6, 0x8

    const-string v8, "STATIC"

    invoke-direct {v4, v8, v5, v6, v7}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Flags$Flag;->STATIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v5, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v4, v5

    const/4 v6, 0x4

    const-wide/16 v7, 0x10

    const-string v9, "FINAL"

    invoke-direct {v5, v9, v6, v7, v8}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Flags$Flag;->FINAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v6, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v5, v6

    const/4 v7, 0x5

    const-wide/16 v8, 0x20

    const-string v10, "SYNCHRONIZED"

    invoke-direct {v6, v10, v7, v8, v9}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Flags$Flag;->SYNCHRONIZED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v7, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v6, v7

    const/4 v8, 0x6

    const-wide/16 v9, 0x40

    const-string v11, "VOLATILE"

    invoke-direct {v7, v11, v8, v9, v10}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Flags$Flag;->VOLATILE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v8, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v7, v8

    const/4 v9, 0x7

    const-wide/16 v10, 0x80

    const-string v12, "TRANSIENT"

    invoke-direct {v8, v12, v9, v10, v11}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Flags$Flag;->TRANSIENT:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v9, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v8, v9

    const/16 v10, 0x8

    const-wide/16 v11, 0x100

    const-string v13, "NATIVE"

    invoke-direct {v9, v13, v10, v11, v12}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lorg/openjdk/tools/javac/code/Flags$Flag;->NATIVE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v10, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v9, v10

    const/16 v11, 0x9

    const-wide/16 v12, 0x200

    const-string v14, "INTERFACE"

    invoke-direct {v10, v14, v11, v12, v13}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lorg/openjdk/tools/javac/code/Flags$Flag;->INTERFACE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v11, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v10, v11

    const/16 v12, 0xa

    const-wide/16 v13, 0x400

    const-string v15, "ABSTRACT"

    invoke-direct {v11, v15, v12, v13, v14}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lorg/openjdk/tools/javac/code/Flags$Flag;->ABSTRACT:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v12, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v11, v12

    const/16 v13, 0xb

    const-wide v14, 0x80000000000L

    move-object/from16 v52, v0

    const-string v0, "DEFAULT"

    invoke-direct {v12, v0, v13, v14, v15}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lorg/openjdk/tools/javac/code/Flags$Flag;->DEFAULT:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v12, v0

    const/16 v13, 0xc

    const-wide/16 v14, 0x800

    move-object/from16 v53, v1

    const-string v1, "STRICTFP"

    invoke-direct {v0, v1, v13, v14, v15}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->STRICTFP:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v13, v0

    const/16 v1, 0xd

    const-wide v14, 0x80000000L

    move-object/from16 v54, v2

    const-string v2, "BRIDGE"

    invoke-direct {v0, v2, v1, v14, v15}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->BRIDGE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v14, v0

    const/16 v1, 0xe

    move-object/from16 v55, v3

    const-wide/16 v2, 0x1000

    const-string v15, "SYNTHETIC"

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object v15, v0

    const/16 v1, 0xf

    const-wide/16 v2, 0x2000

    move-object/from16 v56, v4

    const-string v4, "ANNOTATION"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->ANNOTATION:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-wide/32 v2, 0x20000

    const-string v4, "DEPRECATED"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->DEPRECATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-wide/32 v2, 0x40000

    const-string v4, "HASINIT"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->HASINIT:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-wide/32 v2, 0x100000

    const-string v4, "BLOCK"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->BLOCK:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-wide/16 v2, 0x4000

    const-string v4, "ENUM"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->ENUM:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-wide/32 v2, 0x8000

    const-string v4, "MANDATED"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->MANDATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-wide/32 v2, 0x400000

    const-string v4, "NOOUTERTHIS"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->NOOUTERTHIS:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-wide/32 v2, 0x800000

    const-string v4, "EXISTS"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->EXISTS:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-wide/32 v2, 0x1000000

    const-string v4, "COMPOUND"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->COMPOUND:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-wide/32 v2, 0x2000000

    const-string v4, "CLASS_SEEN"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->CLASS_SEEN:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-wide/32 v2, 0x4000000

    const-string v4, "SOURCE_SEEN"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->SOURCE_SEEN:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-wide/32 v2, 0x8000000

    const-string v4, "LOCKED"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->LOCKED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-wide/32 v2, 0x10000000

    const-string v4, "UNATTRIBUTED"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->UNATTRIBUTED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-wide/32 v2, 0x20000000

    const-string v4, "ANONCONSTR"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->ANONCONSTR:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-wide/32 v2, 0x40000000

    const-string v4, "ACYCLIC"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->ACYCLIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-wide v2, 0x200000000L

    const-string v4, "PARAMETER"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->PARAMETER:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-wide v2, 0x400000000L

    const-string v4, "VARARGS"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->VARARGS:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-wide v2, 0x800000000L

    const-string v4, "ACYCLIC_ANN"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->ACYCLIC_ANN:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-wide v2, 0x1000000000L

    const-string v4, "GENERATEDCONSTR"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->GENERATEDCONSTR:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const-wide v2, 0x2000000000L

    const-string v4, "HYPOTHETICAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->HYPOTHETICAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const-wide v2, 0x4000000000L

    const-string v4, "PROPRIETARY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->PROPRIETARY:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const-wide v2, 0x8000000000L

    const-string v4, "UNION"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->UNION:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const-wide v2, 0x20000000000L

    const-string v4, "EFFECTIVELY_FINAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->EFFECTIVELY_FINAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v38, v0

    const/16 v1, 0x26

    const-wide v2, 0x40000000000L

    const-string v4, "CLASH"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->CLASH:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const-wide v2, 0x100000000000L

    const-string v4, "AUXILIARY"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->AUXILIARY:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v40, v0

    const-string v1, "NOT_IN_PROFILE"

    const/16 v2, 0x28

    const-wide v3, 0x200000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->NOT_IN_PROFILE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v41, v0

    const-string v1, "BAD_OVERRIDE"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->BAD_OVERRIDE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v42, v0

    const/16 v1, 0x2a

    const-wide v2, 0x400000000000L

    const-string v4, "SIGNATURE_POLYMORPHIC"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->SIGNATURE_POLYMORPHIC:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v43, v0

    const/16 v1, 0x2b

    const-wide v2, 0x800000000000L

    const-string v4, "THROWS"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->THROWS:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v44, v0

    const/16 v1, 0x2c

    const-wide/high16 v2, 0x2000000000000L

    const-string v4, "LAMBDA_METHOD"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->LAMBDA_METHOD:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v45, v0

    const/16 v1, 0x2d

    const-wide/high16 v2, 0x4000000000000L

    const-string v4, "TYPE_TRANSLATED"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->TYPE_TRANSLATED:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v46, v0

    const/16 v1, 0x2e

    const-wide/high16 v2, 0x8000000000000L

    const-string v4, "MODULE"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v47, v0

    const/16 v1, 0x2f

    const-wide/high16 v2, 0x10000000000000L

    const-string v4, "AUTOMATIC_MODULE"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->AUTOMATIC_MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v48, v0

    const/16 v1, 0x30

    const-wide/high16 v2, 0x20000000000000L

    const-string v4, "SYSTEM_MODULE"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->SYSTEM_MODULE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v49, v0

    const/16 v1, 0x31

    const-wide/high16 v2, 0x40000000000000L

    const-string v4, "DEPRECATED_ANNOTATION"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->DEPRECATED_ANNOTATION:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v50, v0

    const/16 v1, 0x32

    const-wide/high16 v2, 0x80000000000000L

    const-string v4, "DEPRECATED_REMOVAL"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->DEPRECATED_REMOVAL:Lorg/openjdk/tools/javac/code/Flags$Flag;

    new-instance v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v51, v0

    const/16 v1, 0x33

    const-wide/high16 v2, 0x100000000000000L

    const-string v4, "HAS_RESOURCE"

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Flags$Flag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->HAS_RESOURCE:Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    move-object/from16 v4, v56

    filled-new-array/range {v0 .. v51}, [Lorg/openjdk/tools/javac/code/Flags$Flag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->$VALUES:[Lorg/openjdk/tools/javac/code/Flags$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lorg/openjdk/tools/javac/code/Flags$Flag;->value:J

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Flags$Flag;->lowercaseName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Flags$Flag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Flags$Flag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Flags$Flag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Flags$Flag;->$VALUES:[Lorg/openjdk/tools/javac/code/Flags$Flag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Flags$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Flags$Flag;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Flags$Flag;->lowercaseName:Ljava/lang/String;

    return-object v0
.end method
