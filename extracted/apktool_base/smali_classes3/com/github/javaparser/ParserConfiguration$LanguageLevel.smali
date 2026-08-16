.class public final enum Lcom/github/javaparser/ParserConfiguration$LanguageLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ParserConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LanguageLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/ParserConfiguration$LanguageLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static BLEEDING_EDGE:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static CURRENT:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_10:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_10_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_11:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_11_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_12:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_12_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_13:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_13_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_14:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_14_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_15:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_15_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_16:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_16_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_17:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_17_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_18:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_19:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_0:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_1:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_2:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_3:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_1_4:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_20:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_21:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_6:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_8:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static final enum JAVA_9:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static POPULAR:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field public static RAW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field private static final yieldSupport:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;


# instance fields
.field final postProcessor:Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

.field final validator:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v0, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;-><init>()V

    const-string v3, "JAVA_1_0"

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-direct {v1, v3, v4, v2, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_0:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v1, v2

    new-instance v3, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;-><init>()V

    const-string v4, "JAVA_1_1"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_1:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v2, v3

    new-instance v4, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;

    invoke-direct {v4}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;-><init>()V

    const-string v5, "JAVA_1_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v3, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_2:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v4, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v3, v4

    new-instance v5, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_3Validator;

    invoke-direct {v5}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_3Validator;-><init>()V

    const-string v6, "JAVA_1_3"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v4, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_3:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v5, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v4, v5

    new-instance v6, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_4Validator;

    invoke-direct {v6}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_4Validator;-><init>()V

    const-string v7, "JAVA_1_4"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v5, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_1_4:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v6, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v5, v6

    new-instance v7, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;

    invoke-direct {v7}, Lcom/github/javaparser/ast/validator/language_level_validations/Java5Validator;-><init>()V

    const-string v8, "JAVA_5"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v6, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_5:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v7, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v6, v7

    new-instance v8, Lcom/github/javaparser/ast/validator/language_level_validations/Java6Validator;

    invoke-direct {v8}, Lcom/github/javaparser/ast/validator/language_level_validations/Java6Validator;-><init>()V

    const-string v9, "JAVA_6"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v7, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_6:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v8, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v7, v8

    new-instance v9, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;

    invoke-direct {v9}, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;-><init>()V

    const-string v10, "JAVA_7"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v8, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_7:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v9, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v8, v9

    new-instance v10, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;

    invoke-direct {v10}, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;-><init>()V

    const-string v11, "JAVA_8"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v9, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_8:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v10, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v9, v10

    new-instance v11, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;

    invoke-direct {v11}, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;-><init>()V

    const-string v12, "JAVA_9"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v11, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v10, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_9:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v11, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v10, v11

    new-instance v12, Lcom/github/javaparser/ast/validator/language_level_validations/Java10Validator;

    invoke-direct {v12}, Lcom/github/javaparser/ast/validator/language_level_validations/Java10Validator;-><init>()V

    new-instance v13, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;-><init>()V

    const-string v14, "JAVA_10"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v11, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_10:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v12, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v11, v12

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/Java10PreviewValidator;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/Java10PreviewValidator;-><init>()V

    new-instance v14, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;-><init>()V

    const-string v15, "JAVA_10_PREVIEW"

    move-object/from16 v30, v0

    const/16 v0, 0xb

    invoke-direct {v12, v15, v0, v13, v14}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v12, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_10_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v12, v0

    new-instance v13, Lcom/github/javaparser/ast/validator/language_level_validations/Java11Validator;

    invoke-direct {v13}, Lcom/github/javaparser/ast/validator/language_level_validations/Java11Validator;-><init>()V

    new-instance v14, Lcom/github/javaparser/ast/validator/postprocessors/Java11PostProcessor;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/postprocessors/Java11PostProcessor;-><init>()V

    const-string v15, "JAVA_11"

    move-object/from16 v31, v1

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v13, v14}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_11:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v13, v1

    new-instance v14, Lcom/github/javaparser/ast/validator/language_level_validations/Java11PreviewValidator;

    invoke-direct {v14}, Lcom/github/javaparser/ast/validator/language_level_validations/Java11PreviewValidator;-><init>()V

    new-instance v15, Lcom/github/javaparser/ast/validator/postprocessors/Java11PostProcessor;

    invoke-direct {v15}, Lcom/github/javaparser/ast/validator/postprocessors/Java11PostProcessor;-><init>()V

    move-object/from16 v32, v0

    const-string v0, "JAVA_11_PREVIEW"

    move-object/from16 v33, v2

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2, v14, v15}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_11_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object v14, v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/Java12Validator;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java12Validator;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/validator/postprocessors/Java12PostProcessor;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/postprocessors/Java12PostProcessor;-><init>()V

    const-string v15, "JAVA_12"

    move-object/from16 v34, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_12:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    const/16 v35, 0x0

    move-object v15, v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/Java12PreviewValidator;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java12PreviewValidator;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/validator/postprocessors/Java12PostProcessor;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/postprocessors/Java12PostProcessor;-><init>()V

    const-string v3, "JAVA_12_PREVIEW"

    move-object/from16 v36, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_12_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v16, v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/Java13Validator;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java13Validator;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/validator/postprocessors/Java13PostProcessor;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/postprocessors/Java13PostProcessor;-><init>()V

    const-string v3, "JAVA_13"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_13:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v17, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java13PreviewValidator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java13PreviewValidator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java13PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java13PostProcessor;-><init>()V

    const-string v4, "JAVA_13_PREVIEW"

    move-object/from16 v37, v0

    const/16 v0, 0x11

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_13_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v18, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java14Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java14PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java14PostProcessor;-><init>()V

    const-string v4, "JAVA_14"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_14:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v19, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java14PreviewValidator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java14PreviewValidator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java14PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java14PostProcessor;-><init>()V

    const-string v4, "JAVA_14_PREVIEW"

    move-object/from16 v39, v0

    const/16 v0, 0x13

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_14_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v20, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java15Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java15Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java15PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java15PostProcessor;-><init>()V

    const-string v4, "JAVA_15"

    move-object/from16 v40, v1

    const/16 v1, 0x14

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_15:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v21, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java15PreviewValidator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java15PreviewValidator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java15PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java15PostProcessor;-><init>()V

    const-string v4, "JAVA_15_PREVIEW"

    move-object/from16 v41, v0

    const/16 v0, 0x15

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_15_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v22, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java16Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java16Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java16PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java16PostProcessor;-><init>()V

    const-string v4, "JAVA_16"

    move-object/from16 v42, v1

    const/16 v1, 0x16

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_16:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v23, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java16PreviewValidator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java16PreviewValidator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java16PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java16PostProcessor;-><init>()V

    const-string v4, "JAVA_16_PREVIEW"

    move-object/from16 v43, v0

    const/16 v0, 0x17

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_16_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v24, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java17PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java17PostProcessor;-><init>()V

    const-string v4, "JAVA_17"

    move-object/from16 v44, v1

    const/16 v1, 0x18

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_17:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v25, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java17PreviewValidator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17PreviewValidator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java17PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java17PostProcessor;-><init>()V

    const-string v4, "JAVA_17_PREVIEW"

    move-object/from16 v45, v0

    const/16 v0, 0x19

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_17_PREVIEW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v26, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java18Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java18Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java18PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java18PostProcessor;-><init>()V

    const-string v4, "JAVA_18"

    move-object/from16 v46, v1

    const/16 v1, 0x1a

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_18:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v27, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java19Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java19Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java19PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java19PostProcessor;-><init>()V

    const-string v4, "JAVA_19"

    move-object/from16 v47, v0

    const/16 v0, 0x1b

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_19:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v28, v0

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java20Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java20Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java20PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java20PostProcessor;-><init>()V

    const-string v4, "JAVA_20"

    move-object/from16 v48, v1

    const/16 v1, 0x1c

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_20:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    new-instance v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v29, v1

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/Java21Validator;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java21Validator;-><init>()V

    new-instance v3, Lcom/github/javaparser/ast/validator/postprocessors/Java21PostProcessor;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/postprocessors/Java21PostProcessor;-><init>()V

    const-string v4, "JAVA_21"

    move-object/from16 v49, v0

    const/16 v0, 0x1d

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;-><init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V

    sput-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_21:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v0, v30

    move-object/from16 v30, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v36

    move-object/from16 v32, v38

    move-object/from16 v33, v39

    move-object/from16 v34, v40

    move-object/from16 v36, v41

    move-object/from16 v38, v43

    move-object/from16 v39, v44

    move-object/from16 v40, v45

    move-object/from16 v41, v46

    move-object/from16 v43, v48

    move-object/from16 v44, v49

    move-object/from16 v45, v1

    move-object/from16 v1, v31

    move-object/from16 v31, v37

    move-object/from16 v37, v42

    move-object/from16 v42, v47

    filled-new-array/range {v0 .. v29}, [Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->$VALUES:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    sput-object v35, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->RAW:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    sput-object v30, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->POPULAR:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    sput-object v42, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->CURRENT:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    sput-object v45, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->BLEEDING_EDGE:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-object/from16 v16, v31

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    move-object/from16 v19, v34

    move-object/from16 v20, v36

    move-object/from16 v21, v37

    move-object/from16 v22, v38

    move-object/from16 v23, v39

    move-object/from16 v24, v40

    move-object/from16 v25, v41

    move-object/from16 v26, v42

    move-object/from16 v27, v43

    move-object/from16 v28, v44

    move-object/from16 v29, v45

    filled-new-array/range {v16 .. v29}, [Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->yieldSupport:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;)V
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
            "validator",
            "postProcessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/validator/Validator;",
            "Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->validator:Lcom/github/javaparser/ast/validator/Validator;

    iput-object p4, p0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->postProcessor:Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->lambda$isYieldSupported$0(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isYieldSupported$0(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->$VALUES:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-virtual {v0}, [Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-object v0
.end method


# virtual methods
.method public isYieldSupported()Z
    .locals 2

    sget-object v0, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->yieldSupport:[Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/n0;

    invoke-direct {v1, p0}, Lcom/github/javaparser/n0;-><init>(Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
