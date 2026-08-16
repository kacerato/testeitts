.class public final enum Lorg/openjdk/tools/javac/code/Lint$LintCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Lint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LintCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum AUXILIARYCLASS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum CAST:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum CLASSFILE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum DEP_ANN:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum DIVZERO:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum EMPTY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum FALLTHROUGH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum FINALLY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum OPENS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum OVERLOADS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum OVERRIDES:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum PROCESSING:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum RAW:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum REQUIRES_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum REQUIRES_TRANSITIVE_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum STATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field public static final enum VARARGS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;


# instance fields
.field public final hidden:Z

.field public final option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "auxiliaryclass"

    const-string v4, "AUXILIARYCLASS"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->AUXILIARYCLASS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "cast"

    const-string v5, "CAST"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->CAST:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "classfile"

    const-string v6, "CLASSFILE"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "deprecation"

    const-string v7, "DEPRECATION"

    invoke-direct {v4, v7, v5, v6}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "dep-ann"

    const-string v8, "DEP_ANN"

    invoke-direct {v5, v8, v6, v7}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "divzero"

    const-string v9, "DIVZERO"

    invoke-direct {v6, v9, v7, v8}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DIVZERO:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "empty"

    const-string v10, "EMPTY"

    invoke-direct {v7, v10, v8, v9}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EMPTY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v8, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "exports"

    const-string v11, "EXPORTS"

    invoke-direct {v8, v11, v9, v10}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v9, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "fallthrough"

    const-string v12, "FALLTHROUGH"

    invoke-direct {v9, v12, v10, v11}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v10, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "finally"

    const-string v13, "FINALLY"

    invoke-direct {v10, v13, v11, v12}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->FINALLY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v11, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "module"

    const-string v14, "MODULE"

    invoke-direct {v11, v14, v12, v13}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v12, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "opens"

    const-string v15, "OPENS"

    invoke-direct {v12, v15, v13, v14}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPENS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v13, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "options"

    move-object/from16 v26, v0

    const-string v0, "OPTIONS"

    invoke-direct {v13, v0, v14, v15}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "overloads"

    move-object/from16 v27, v1

    const-string v1, "OVERLOADS"

    invoke-direct {v0, v1, v14, v15}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERLOADS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "overrides"

    move-object/from16 v28, v2

    const-string v2, "OVERRIDES"

    invoke-direct {v0, v2, v1, v15}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OVERRIDES:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "path"

    move-object/from16 v29, v3

    const-string v3, "PATH"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PATH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "processing"

    const-string v3, "PROCESSING"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PROCESSING:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "rawtypes"

    const-string v3, "RAW"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->RAW:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "removal"

    const-string v3, "REMOVAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "requires-automatic"

    const-string v3, "REQUIRES_AUTOMATIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REQUIRES_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "requires-transitive-automatic"

    const-string v3, "REQUIRES_TRANSITIVE_AUTOMATIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REQUIRES_TRANSITIVE_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "serial"

    const-string v3, "SERIAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->SERIAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "static"

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->STATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "try"

    const-string v3, "TRY"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->TRY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "unchecked"

    const-string v3, "UNCHECKED"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "varargs"

    const-string v3, "VARARGS"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->VARARGS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    filled-new-array/range {v0 .. v25}, [Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->$VALUES:[Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->hidden:Z

    .line 5
    invoke-static {}, Lorg/openjdk/tools/javac/code/Lint;->access$000()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Lint$LintCategory;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/code/Lint;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Lint$LintCategory;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Lint$LintCategory;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->$VALUES:[Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Lint$LintCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method
