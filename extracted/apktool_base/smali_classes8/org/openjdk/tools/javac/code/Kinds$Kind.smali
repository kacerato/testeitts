.class public final enum Lorg/openjdk/tools/javac/code/Kinds$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Kinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Kinds$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum ABSENT_VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum MISSING_ENCL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum NIL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum POLY:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum STATICERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

.field public static final enum WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;


# instance fields
.field private final absentKind:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field private final category:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

.field private final kindName:Lorg/openjdk/tools/javac/code/Kinds$KindName;

.field private final selector:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v0, v1

    sget-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->BASIC:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->NIL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v3, "NIL"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v11, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->NIL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v1, v8

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$KindName;->PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v3, "PCK"

    const/4 v4, 0x1

    move-object v2, v8

    move-object v5, v11

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v2, v9

    sget-object v15, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v4, "TYP"

    const/4 v5, 0x2

    move-object v3, v9

    move-object v6, v11

    move-object v7, v15

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v3, v10

    sget-object v13, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v5, "VAR"

    const/4 v6, 0x3

    move-object v4, v10

    move-object v7, v11

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v12, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v4, v12

    sget-object v14, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v6, "MTH"

    const/4 v7, 0x4

    move-object v5, v12

    move-object v8, v11

    move-object v9, v14

    invoke-direct/range {v5 .. v10}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v12, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v9, "POLY"

    invoke-direct {v6, v9, v7, v11, v8}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->POLY:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MDL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v10, "MDL"

    invoke-direct {v7, v10, v8, v11, v9}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v7, v8

    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->ERROR:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    sget-object v10, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ERR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const-string v11, "ERR"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12, v9, v10}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    sput-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v8, v9

    sget-object v12, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->RESOLUTION_TARGET:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    const-string v10, "AMBIGUOUS"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v12}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;)V

    sput-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v9, v10

    const-string v11, "HIDDEN"

    move-object/from16 v16, v15

    const/16 v15, 0x9

    invoke-direct {v10, v11, v15, v12}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;)V

    sput-object v10, Lorg/openjdk/tools/javac/code/Kinds$Kind;->HIDDEN:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v10, v11

    const-string v15, "STATICERR"

    move-object/from16 v17, v0

    const/16 v0, 0xa

    invoke-direct {v11, v15, v0, v12}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;)V

    sput-object v11, Lorg/openjdk/tools/javac/code/Kinds$Kind;->STATICERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v11, v0

    const/16 v15, 0xb

    move-object/from16 v18, v12

    sget-object v12, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->RESOLUTION:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    move-object/from16 v19, v1

    const-string v1, "MISSING_ENCL"

    invoke-direct {v0, v1, v15, v12}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MISSING_ENCL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object/from16 v1, v18

    move-object v12, v0

    const-string v15, "ABSENT_VAR"

    move-object/from16 v18, v2

    const/16 v2, 0xc

    invoke-direct {v0, v15, v2, v1, v13}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v13, v0

    const-string v2, "WRONG_MTHS"

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15, v1, v14}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v2, v14

    move-object v14, v0

    const-string v15, "WRONG_MTH"

    move-object/from16 v20, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object/from16 v3, v16

    move-object v15, v0

    move-object/from16 v21, v4

    const-string v4, "ABSENT_MTH"

    move-object/from16 v22, v5

    const/16 v5, 0xf

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object/from16 v16, v0

    const-string v2, "ABSENT_TYP"

    const/16 v4, 0x10

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    filled-new-array/range {v0 .. v16}, [Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->category:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    .line 7
    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->kindName:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    .line 8
    iput-object p5, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->absentKind:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    .line 9
    iput-object p6, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->selector:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;",
            "Lorg/openjdk/tools/javac/code/Kinds$KindSelector;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Kinds$Kind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Kinds$Kind$Category;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Kinds$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Kinds$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Kinds$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Kinds$Kind;

    return-object v0
.end method


# virtual methods
.method public absentKind()Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->absentKind:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public betterThan(Lorg/openjdk/tools/javac/code/Kinds$Kind;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isResolutionError()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->category:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->RESOLUTION:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->RESOLUTION_TARGET:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    if-ne v0, v1, :cond_0

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

.method public isResolutionTargetError()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->category:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->RESOLUTION_TARGET:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->category:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;->BASIC:Lorg/openjdk/tools/javac/code/Kinds$Kind$Category;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kindName()Lorg/openjdk/tools/javac/code/Kinds$KindName;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->kindName:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->selector:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result p1

    return p1
.end method

.method public toSelector()Lorg/openjdk/tools/javac/code/Kinds$KindSelector;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->selector:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-object v0
.end method
