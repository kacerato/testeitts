.class public Lcom/github/javaparser/GeneratedJavaParserTokenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/GeneratedJavaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec1:[J

.field static final jjbitVec10:[J

.field static final jjbitVec11:[J

.field static final jjbitVec12:[J

.field static final jjbitVec13:[J

.field static final jjbitVec14:[J

.field static final jjbitVec15:[J

.field static final jjbitVec16:[J

.field static final jjbitVec17:[J

.field static final jjbitVec18:[J

.field static final jjbitVec19:[J

.field static final jjbitVec2:[J

.field static final jjbitVec20:[J

.field static final jjbitVec21:[J

.field static final jjbitVec22:[J

.field static final jjbitVec23:[J

.field static final jjbitVec24:[J

.field static final jjbitVec25:[J

.field static final jjbitVec26:[J

.field static final jjbitVec27:[J

.field static final jjbitVec28:[J

.field static final jjbitVec29:[J

.field static final jjbitVec3:[J

.field static final jjbitVec30:[J

.field static final jjbitVec31:[J

.field static final jjbitVec32:[J

.field static final jjbitVec33:[J

.field static final jjbitVec34:[J

.field static final jjbitVec35:[J

.field static final jjbitVec36:[J

.field static final jjbitVec37:[J

.field static final jjbitVec38:[J

.field static final jjbitVec39:[J

.field static final jjbitVec4:[J

.field static final jjbitVec40:[J

.field static final jjbitVec41:[J

.field static final jjbitVec42:[J

.field static final jjbitVec43:[J

.field static final jjbitVec44:[J

.field static final jjbitVec45:[J

.field static final jjbitVec46:[J

.field static final jjbitVec47:[J

.field static final jjbitVec48:[J

.field static final jjbitVec49:[J

.field static final jjbitVec5:[J

.field static final jjbitVec50:[J

.field static final jjbitVec51:[J

.field static final jjbitVec52:[J

.field static final jjbitVec53:[J

.field static final jjbitVec54:[J

.field static final jjbitVec55:[J

.field static final jjbitVec56:[J

.field static final jjbitVec57:[J

.field static final jjbitVec58:[J

.field static final jjbitVec59:[J

.field static final jjbitVec6:[J

.field static final jjbitVec60:[J

.field static final jjbitVec61:[J

.field static final jjbitVec62:[J

.field static final jjbitVec63:[J

.field static final jjbitVec64:[J

.field static final jjbitVec65:[J

.field static final jjbitVec66:[J

.field static final jjbitVec67:[J

.field static final jjbitVec68:[J

.field static final jjbitVec69:[J

.field static final jjbitVec70:[J

.field static final jjbitVec71:[J

.field static final jjbitVec72:[J

.field static final jjbitVec73:[J

.field static final jjbitVec74:[J

.field static final jjbitVec75:[J

.field static final jjbitVec76:[J

.field static final jjbitVec77:[J

.field static final jjbitVec78:[J

.field static final jjbitVec79:[J

.field static final jjbitVec8:[J

.field static final jjbitVec80:[J

.field static final jjbitVec81:[J

.field static final jjbitVec82:[J

.field static final jjbitVec83:[J

.field static final jjbitVec84:[J

.field static final jjbitVec85:[J

.field static final jjbitVec86:[J

.field static final jjbitVec87:[J

.field static final jjbitVec88:[J

.field static final jjbitVec89:[J

.field static final jjbitVec9:[J

.field static final jjbitVec90:[J

.field static final jjbitVec91:[J

.field static final jjbitVec92:[J

.field static final jjbitVec93:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field private commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

.field protected curChar:I

.field curLexState:I

.field defaultLexState:I

.field private homeToken:Lcom/github/javaparser/JavaToken;

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lcom/github/javaparser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I

.field private storeTokens:Z

.field private tokenWorkStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/github/javaparser/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation
.end field

.field private yieldSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 153

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec0:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec1:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec2:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec3:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec4:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec5:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_6

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_7

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec8:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_8

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_9

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec10:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec12:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_c

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec13:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec14:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec15:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec16:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_10

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec17:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_11

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec18:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_12

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec19:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_13

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec20:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_14

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec21:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_15

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec22:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_16

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec23:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_17

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec24:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_18

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec25:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_19

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec27:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec29:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec30:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec31:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec32:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_20

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec33:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_21

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec34:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_22

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec35:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_23

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_24

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec37:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_25

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_26

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec39:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_27

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec40:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_28

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_29

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec42:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec47:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_30

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec49:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_31

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec50:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_32

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec51:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_33

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec52:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_34

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_35

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_36

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec55:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_37

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_38

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec57:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_39

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec58:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec59:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec60:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3c

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec61:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec62:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec63:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec64:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_40

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec65:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_41

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec66:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_42

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec67:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_43

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec68:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_44

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec69:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_45

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec70:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_46

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec71:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_47

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec72:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_48

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec73:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_49

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec74:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec75:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec76:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec77:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec78:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec79:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec80:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_50

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec81:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_51

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec82:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_52

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec83:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_53

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec84:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_54

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec85:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_55

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec86:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_56

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec87:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_57

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec88:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_58

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec89:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_59

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec90:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5a

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec91:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5b

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec92:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec93:[J

    const-string v151, ">"

    const-string v152, "\u001a"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "abstract"

    const-string v13, "assert"

    const-string v14, "boolean"

    const-string v15, "break"

    const-string v16, "byte"

    const-string v17, "case"

    const-string v18, "catch"

    const-string v19, "char"

    const-string v20, "class"

    const-string v21, "const"

    const-string v22, "continue"

    const-string v23, "default"

    const-string v24, "do"

    const-string v25, "double"

    const-string v26, "else"

    const-string v27, "enum"

    const-string v28, "extends"

    const-string v29, "false"

    const-string v30, "final"

    const-string v31, "finally"

    const-string v32, "float"

    const-string v33, "for"

    const-string v34, "goto"

    const-string v35, "if"

    const-string v36, "implements"

    const-string v37, "import"

    const-string v38, "instanceof"

    const-string v39, "int"

    const-string v40, "interface"

    const-string v41, "long"

    const-string v42, "native"

    const-string v43, "new"

    const-string v44, "non-sealed"

    const-string v45, "null"

    const-string v46, "package"

    const-string v47, "permits"

    const-string v48, "private"

    const-string v49, "protected"

    const-string v50, "public"

    const-string v51, "record"

    const-string v52, "return"

    const-string v53, "sealed"

    const-string v54, "short"

    const-string v55, "static"

    const-string v56, "strictfp"

    const-string v57, "super"

    const-string v58, "switch"

    const-string v59, "synchronized"

    const-string v60, "this"

    const-string v61, "throw"

    const-string v62, "throws"

    const-string v63, "transient"

    const-string v64, "true"

    const-string v65, "try"

    const-string v66, "void"

    const-string v67, "volatile"

    const-string v68, "while"

    const-string v69, "yield"

    const-string v70, "requires"

    const-string v71, "to"

    const-string v72, "with"

    const-string v73, "open"

    const-string v74, "opens"

    const-string v75, "uses"

    const-string v76, "module"

    const-string v77, "exports"

    const-string v78, "provides"

    const-string v79, "transitive"

    const-string v80, "when"

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const-string v102, "("

    const-string v103, ")"

    const-string v104, "{"

    const-string v105, "}"

    const-string v106, "["

    const-string v107, "]"

    const-string v108, ";"

    const-string v109, ","

    const-string v110, "."

    const-string v111, "..."

    const-string v112, "@"

    const-string v113, "::"

    const-string v114, "="

    const-string v115, "<"

    const-string v116, "!"

    const-string v117, "~"

    const-string v118, "?"

    const-string v119, ":"

    const-string v120, "->"

    const-string v121, "=="

    const-string v122, ">="

    const-string v123, "<="

    const-string v124, "!="

    const-string v125, "&&"

    const-string v126, "||"

    const-string v127, "++"

    const-string v128, "--"

    const-string v129, "+"

    const-string v130, "-"

    const-string v131, "*"

    const-string v132, "/"

    const-string v133, "&"

    const-string v134, "|"

    const-string v135, "^"

    const-string v136, "%"

    const-string v137, "<<"

    const-string v138, "+="

    const-string v139, "-="

    const-string v140, "*="

    const-string v141, "/="

    const-string v142, "&="

    const-string v143, "|="

    const-string v144, "^="

    const-string v145, "%="

    const-string v146, "<<="

    const-string v147, ">>="

    const-string v148, ">>>="

    const-string v149, ">>>"

    const-string v150, ">>"

    filled-new-array/range {v1 .. v152}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/4 v0, 0x3

    const/16 v1, 0x9b

    new-array v1, v1, [I

    fill-array-data v1, :array_5d

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    const-string v1, "IN_MULTI_LINE_COMMENT"

    const-string v2, "IN_TEXT_BLOCK"

    const-string v3, "DEFAULT"

    const-string v4, "IN_JAVADOC_COMMENT"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v1, 0x98

    new-array v1, v1, [I

    fill-array-data v1, :array_5e

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    new-array v1, v0, [J

    fill-array-data v1, :array_5f

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoToken:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_60

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSkip:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_61

    sput-object v1, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSpecial:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_62

    sput-object v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x100000020L
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x4000
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x830000003fffL
        0x180000000L
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        -0x8000000000000000L
    .end array-data

    :array_6
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 8
        -0xfffffbfddfffeL
        -0x2001
        -0xfd080000001L
        0x12000000ff7fffffL    # 5.532909929101298E-222
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x420043c00000000L    # 8.217560002996165E-289
        -0x80000000800001L
    .end array-data

    :array_a
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x501f0003ffc3L
    .end array-data

    :array_b
    .array-data 8
        0x0
        -0x4321000000000000L
        -0x4000028c0L
        -0x40000000000001L
    .end array-data

    :array_c
    .array-data 8
        -0x1
        -0x1
        -0x3fd
        -0x1
    .end array-data

    :array_d
    .array-data 8
        -0x1000000000001L
        -0x1fd800001L
        0x80ff
        0x707ffffff0000L
    .end array-data

    :array_e
    .array-data 8
        -0xfffff800L
        -0x13ffffffff801L
        -0x1
        -0x63ff3f9fffd00001L    # -8.466137176805716E-174
    .end array-data

    :array_f
    .array-data 8
        0xfffffffd0000L
        -0x2000
        0x2003fffffffffL
        0x43007fffffffc00L
    .end array-data

    :array_10
    .array-data 8
        0x110043fffffL
        0x7ff01ffffffL
        0x3fdfffff00000000L    # 0.4999997615814209
        0x0
    .end array-data

    :array_11
    .array-data 8
        0x23fffffffffffff0L
        -0x1fffc00ff0000L
        0x23c5fdfffff99fe1L
        0x180f0003b0004000L    # 8.493276643181594E-193
    .end array-data

    :array_12
    .array-data 8
        0x36dfdfffff987e0L
        0x1c00005e000000L
        0x23edfdfffffbbfe0L
        0x202000300010000L
    .end array-data

    :array_13
    .array-data 8
        0x23edfdfffff99fe0L
        0x20003b0000000L
        0x3ffc718d63dc7e8L
        0x200000000010000L
    .end array-data

    :array_14
    .array-data 8
        0x23fffdfffffddfe0L
        0x307000000L
        0x23effdfffffddfe1L
        0x6000340000000L
    .end array-data

    :array_15
    .array-data 8
        0x27fffffffffddfe0L    # 5.0758836745528E-116
        -0x3fffffc7f8fc000L    # -1.949069311162676E289
        0x2ffbfffffc7fffe0L    # 1.5113294858812394E-77
        0x7f
    .end array-data

    :array_16
    .array-data 8
        -0x7ff2000000000002L    # -1.9469396261938E-308
        0x7f
        0x200decaefef02596L
        0xf000005fL
    .end array-data

    :array_17
    .array-data 8
        0x1
        0x1ffffffffeffL
        0x1f00
        0x0
    .end array-data

    :array_18
    .array-data 8
        -0x7ffff80000000001L    # -4.3458473798964E-311
        -0x1e3f9dc3c10000L
        -0xffffbffdL
        -0x80000000000df41L
    .end array-data

    :array_19
    .array-data 8
        -0x1
        -0xc280c201L
        0x7f3dffffffff3dffL    # 8.229186103142133E304
        -0x8000c3
    .end array-data

    :array_1a
    .array-data 8
        -0xc20001
        0x7ffffff
        -0xffff0001L
        0x3f3fffffffffffffL    # 4.8828124999999995E-4
    .end array-data

    :array_1b
    .array-data 8
        -0x1
        -0x600000000001L
        -0xf8000002L
        0x1ffc7ffffffffffL    # 4.7456455000888675E-299
    .end array-data

    :array_1c
    .array-data 8
        0x3ffff0003dfffL
        0x1dfff0003ffffL
        0xfffffffffffffL
        0x18800000
    .end array-data

    :array_1d
    .array-data 8
        -0x100000000L
        0xffffffffffffffL
        -0xfa0000000061L
        0x3fffffffffffffL
    .end array-data

    :array_1e
    .array-data 8
        0x7fffffff
        0x1f3fffffff0000L
        -0xf00000000001L
        0x3ff
    .end array-data

    :array_1f
    .array-data 8
        -0xff800001L
        0x1fffff
        0x8000000000L
        0x0
    .end array-data

    :array_20
    .array-data 8
        0xfffffffffffe0L
        0xfe0
        -0x3ff3ffe00000008L
        0x3fffffffffL
    .end array-data

    :array_21
    .array-data 8
        0xfffffffffL
        0x3ffffffffc00e000L    # 1.9999999851115717
        0x1ff
        0x63de0000000000L
    .end array-data

    :array_22
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0xc0c00001L
        0x3fffffffaaff3f3fL    # 1.9999996833393678
        0x5fdfffffffffffffL    # 6.703903964971298E153
        0x1fdc1fff0fcf1fdcL
    .end array-data

    :array_24
    .array-data 8
        -0x8000000000000000L
        -0x7ffdffffffefffffL    # -2.78134232831466E-309
        -0xe0010000L
        0x0
    .end array-data

    :array_25
    .array-data 8
        -0xc0042afc1d0037cL    # -5.681154081315589E250
        -0xffffbc20L
        0x1ff
        0x0
    .end array-data

    :array_26
    .array-data 8
        -0x800000000001L
        -0x80000001L
        -0x1
        0xc781fffffffffL
    .end array-data

    :array_27
    .array-data 8
        -0xdf4000000001L
        0x80ffffffffffL    # 7.00767890008367E-310
        0x7f7f7f7f007fffffL    # 1.3824168762625489E306
        0x7f7f7f7f
    .end array-data

    :array_28
    .array-data 8
        0x800000000000L
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 8
        0x1f3e03fe000000e0L
        -0x2
        -0x11f800001L
        -0x800000000000001L
    .end array-data

    :array_2a
    .array-data 8
        -0x1800000000020L
        -0x1
        0x7ffffff00007fffL
        -0x1000000000000L
    .end array-data

    :array_2b
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffffffL
        0x0
    .end array-data

    :array_2c
    .array-data 8
        -0x1
        -0x1
        -0x1
        0x7ffffffffffL
    .end array-data

    :array_2d
    .array-data 8
        -0x1
        -0x1
        0x1fff
        0x3fffffffffff0000L    # 1.999999999985448
    .end array-data

    :array_2e
    .array-data 8
        0xc00ffff1fffL
        -0x7fff800000000001L    # -6.95335580783495E-310
        -0xc0000001L
        0xffffffffffffL
    .end array-data

    :array_2f
    .array-data 8
        -0x300800000L
        -0x1
        0xff7ffffffff9ffL    # 7.177198237999585E-304
        -0x80000000000000L
    .end array-data

    :array_30
    .array-data 8
        0x1000007fffff7bbL
        0xfffffffffffffL
        0xffffffffffffcL
        0x28fc000000000000L
    .end array-data

    :array_31
    .array-data 8
        -0xffc000000400L
        0x1fffffff0000007fL
        0x7fffffffffff0L
        0x7c00ffdf00008000L
    .end array-data

    :array_32
    .array-data 8
        0x1ffffffffffL
        -0x3b800000fffff009L    # -9.444728462143949E21
        0x3e62ffffffffffffL    # 3.539025783538818E-8
        0x1c07ff38000005L
    .end array-data

    :array_33
    .array-data 8
        -0x8080ff818182L
        -0xffc008000001L
        -0x1
        0x7ffffffffL
    .end array-data

    :array_34
    .array-data 8
        -0x1
        -0x1
        -0xfff000000001L
        0xffffffffffff87fL
    .end array-data

    :array_35
    .array-data 8
        -0x1
        -0xc00000000001L
        -0x1
        0x3ffffff
    .end array-data

    :array_36
    .array-data 8
        0x5f7ffdffa0f8007fL    # 1.0472290754707465E152
        -0x25
        0x3ffffffffffffL    # 5.562684646268E-309
        -0x80000
    .end array-data

    :array_37
    .array-data 8
        0x3fffffffffffffffL    # 1.9999999999999998
        -0x10000
        -0x30001
        0x1fff0000000000ffL
    .end array-data

    :array_38
    .array-data 8
        0x18000000000000L
        -0x20fdffffff2000L
        -0x1
        0x1fffffffffffffffL
    .end array-data

    :array_39
    .array-data 8
        -0x78000001fffffff0L    # -3.785763385344934E-270
        -0x3ff8000002L
        0x7fffffffffffffffL
        0x631cfcfcfcL
    .end array-data

    :array_3a
    .array-data 8
        0x0
        0x0
        0x420243cffffffffL
        -0x80000000800001L
    .end array-data

    :array_3b
    .array-data 8
        -0x1
        -0x4320000000000001L    # -1.7763568394002503E-15
        -0x4000028c0L
        -0x40000000000001L
    .end array-data

    :array_3c
    .array-data 8
        -0x1
        -0x1
        -0x305
        -0x1
    .end array-data

    :array_3d
    .array-data 8
        -0x1000000000001L
        -0x1fd800001L
        -0x4000000000017f01L    # -1.9999999999782287
        0x707ffffff00b6L
    .end array-data

    :array_3e
    .array-data 8
        -0xe800f7c1L
        -0x3c0000000001L
        -0x1
        -0x6000020040100001L
    .end array-data

    :array_3f
    .array-data 8
        -0x8000
        -0x1801
        0x3ffffffffffffL    # 5.562684646268E-309
        0x43fffffffffffffL
    .end array-data

    :array_40
    .array-data 8
        0x3fffffffffffL
        0x7ff0fffffffL
        0x3fdfffff00000000L    # 0.4999997615814209
        -0x100000
    .end array-data

    :array_41
    .array-data 8
        -0x1
        -0x1003000000001L
        -0xc3a020000066011L    # -4.920563630680279E249
        0x180fffcfb080799fL    # 8.767035431669737E-193
    .end array-data

    :array_42
    .array-data 8
        -0x2c92020000067812L    # -7.820181112755368E93
        0x3fffc05e023987L    # 1.780005075410458E-307
        -0xc12020000044012L
        -0x1fd0030fffec441L    # -9.9403624954003E298
    .end array-data

    :array_43
    .array-data 8
        -0xc12020000066012L
        0x2ffcfb0c0399fL
        -0x3c0038e729c23814L    # -3.663721990367627E19
        0x200ffc000813dc7L
    .end array-data

    :array_44
    .array-data 8
        -0x1c00020000022011L    # -4.945400361409657E173
        0xffcf07603ddfL
        -0xc10020000022011L
        0x6ffcf40603ddfL
    .end array-data

    :array_45
    .array-data 8
        -0x22011
        -0x3ff00307f0f8221L    # -2.070789083843392E289
        0x2ffbfffffc7fffecL    # 1.5113294858812417E-77
        0xcffc0ff5f847fL
    .end array-data

    :array_46
    .array-data 8
        -0x7800000000000002L
        0x3ff7fff    # 3.3139994E-316
        0x3bffecaefef02596L
        0xf3ff3f5fL
    .end array-data

    :array_47
    .array-data 8
        -0x3d5ffc00fcffffffL    # -8.804674666496002E12
        -0x1e00000000101L
        0x1ffffffffeffffdfL
        0x40
    .end array-data

    :array_48
    .array-data 8
        -0x1
        -0xfc01
        -0xc0000001L
        -0x80000000000df41L
    .end array-data

    :array_49
    .array-data 8
        -0xc20001
        0xe7ffffffL
        -0xffff0001L
        0x3f3fffffffffffffL    # 4.8828124999999995E-4
    .end array-data

    :array_4a
    .array-data 8
        0x1fffff001fdfffL
        0xddfff000fffffL
        -0x1
        0x3ff388fffffL
    .end array-data

    :array_4b
    .array-data 8
        -0xfc008800L
        0xffffffffffffffL
        -0xf80000000001L
        0x3fffffffffffffL
    .end array-data

    :array_4c
    .array-data 8
        0xfff0fff7fffffffL
        0x1f3fffffffffc0L
        -0xf00000000001L
        0x3ff03ff
    .end array-data

    :array_4d
    .array-data 8
        -0xf0000001L
        -0x6000000080000001L
        0x3fff008003ff03ffL    # 1.9376220851993364
        0x0
    .end array-data

    :array_4e
    .array-data 8
        -0x1
        0xff80003ff0fffL
        -0x1
        0xfffffffffffffL
    .end array-data

    :array_4f
    .array-data 8
        0xffffffffffffffL
        0x3fffffffffffe3ffL    # 1.9999999999984082
        0x1ff
        0x3fffffffff70000L
    .end array-data

    :array_50
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x400000000000001L    # -1.9490628022799996E289
    .end array-data

    :array_51
    .array-data 8
        -0x7fff83ffffff0800L    # -6.7360634419769E-310
        -0x7ffd0020ffefffffL    # -4.171313231270643E-309
        -0xe0010000L
        0x1ffe21fff0000L
    .end array-data

    :array_52
    .array-data 8
        -0x800000000001L
        -0x80000001L
        -0x1
        0xff81fffffffffL
    .end array-data

    :array_53
    .array-data 8
        -0xdf4000000001L
        -0x7fff7f0000000001L    # -7.00767890008367E-310
        0x7f7f7f7f007fffffL    # 1.3824168762625489E306
        -0x80808081L
    .end array-data

    :array_54
    .array-data 8
        0x1f3efffe000000e0L
        -0x2
        -0x119800001L
        -0x800000000000001L
    .end array-data

    :array_55
    .array-data 8
        0xfffffff1fffL
        -0x400f000000000001L    # -1.0624999999999998
        -0x1
        0x3ffffffffffffL    # 5.562684646268E-309
    .end array-data

    :array_56
    .array-data 8
        0x10000ffffffffffL
        0xfffffffffffffL
        -0x1
        0x28ffffff03ff003fL
    .end array-data

    :array_57
    .array-data 8
        -0xc00000000001L
        0x1fffffff000fffffL
        -0x1
        0x7fffffff03ff8001L
    .end array-data

    :array_58
    .array-data 8
        0x7fffffffffffffL
        -0x3800000fc00c001L    # -4.98959843175794E291
        -0x1
        0x7cffff38000007L
    .end array-data

    :array_59
    .array-data 8
        -0x8080ff818182L
        -0xffc008000001L
        -0x1
        0x3ff37ffffffffffL
    .end array-data

    :array_5a
    .array-data 8
        0x5f7ffdffe0f8007fL    # 1.0472292003406885E152
        -0x25
        0x3ffffffffffffL    # 5.562684646268E-309
        -0x80000
    .end array-data

    :array_5b
    .array-data 8
        0x18ffff0000ffffL
        -0x20fdffffff2000L
        -0x1
        -0x6000000000000001L
    .end array-data

    :array_5c
    .array-data 8
        -0x78000001fc00fff0L    # -3.785763413523551E-270
        -0x3ff8000002L
        0x7fffffffffffffffL
        0xe0000631cfcfcfcL    # 2.9996771357166486E-241
    .end array-data

    :array_5d
    .array-data 4
        0x27
        0x28
        0x2f
        0x30
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0xa
        0x56
        0x57
        0x58
        0x5e
        0x5f
        0x60
        0x43
        0x47
        0xd
        0xf
        0x15
        0x6b
        0x6f
        0x72
        0x76
        0x7a
        0x7d
        0x81
        0x8e
        0x3
        0x4
        0x5
        0xa
        0x8
        0xa
        0xb
        0x7
        0x8
        0xa
        0xb
        0x27
        0x28
        0x32
        0x2f
        0x30
        0x53
        0xa
        0x55
        0x52
        0x53
        0xa
        0x55
        0x5b
        0xa
        0x5d
        0x5a
        0x5b
        0xa
        0x5d
        0x61
        0x64
        0xa
        0x62
        0x63
        0x64
        0xa
        0x67
        0xa
        0x69
        0x66
        0x67
        0xa
        0x69
        0x6d
        0x6e
        0x4b
        0x70
        0x71
        0x4b
        0x74
        0x75
        0x4b
        0x83
        0x84
        0x85
        0x87
        0x88
        0x89
        0x8c
        0x8d
        0xa
        0x90
        0x91
        0x92
        0x93
        0x96
        0x97
        0xa
        0x29
        0x31
        0x33
        0x3
        0x4
        0x6
        0x7
        0x8
        0x9
        0x10
        0x11
        0x13
        0x20
        0x21
        0x49
        0x4a
        0x4c
        0x4d
        0x4e
        0x4f
        0x51
        0x52
        0x53
        0x54
        0x56
        0x57
        0x59
        0x5a
        0x5b
        0x5c
        0x5e
        0x5f
        0x62
        0x63
        0x65
        0x66
        0x67
        0x68
        0x70
        0x71
        0x74
        0x75
        0x7b
        0x7c
        0x7f
        0x80
        0x8a
        0x8b
        0x8c
        0x8d
        0x94
        0x95
        0x96
        0x97
    .end array-data

    :array_5e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x2
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5f
    .array-data 8
        -0x7ff
        -0x1a9fbc0001L
        0xffffff
    .end array-data

    :array_60
    .array-data 8
        0x33e
        0x0
        0x0
    .end array-data

    :array_61
    .array-data 8
        0x33e
        0x0
        0x0
    .end array-data

    :array_62
    .array-data 8
        0x4c0
        0x280000000L
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/github/javaparser/SimpleCharStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lcom/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    .line 6
    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 7
    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    const/16 v0, 0x98

    .line 8
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    const/16 v0, 0x130

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 11
    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 12
    iput-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/SimpleCharStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "lexState"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lcom/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    .line 18
    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 19
    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    const/16 v0, 0x98

    .line 20
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    const/16 v0, 0x130

    .line 21
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 23
    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->ReInit(Lcom/github/javaparser/SimpleCharStream;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private CommonTokenAction(Lcom/github/javaparser/Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/github/javaparser/Token;->specialToken:Lcom/github/javaparser/Token;

    if-nez p1, :cond_0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokenWorkStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Token;

    new-instance v0, Lcom/github/javaparser/JavaToken;

    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/JavaToken;-><init>(Lcom/github/javaparser/Token;Ljava/util/List;)V

    iput-object v0, p1, Lcom/github/javaparser/TokenBase;->javaToken:Lcom/github/javaparser/JavaToken;

    iget-boolean v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lcom/github/javaparser/JavaToken;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/github/javaparser/TokenBase;->javaToken:Lcom/github/javaparser/JavaToken;

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lcom/github/javaparser/JavaToken;

    :cond_3
    iget v0, p1, Lcom/github/javaparser/Token;->kind:I

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->isComment(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManagerBase;->createCommentFromToken(Lcom/github/javaparser/Token;)Lcom/github/javaparser/ast/comments/Comment;

    move-result-object p1

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/comments/CommentsCollection;->addComment(Lcom/github/javaparser/ast/comments/Comment;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const/16 v0, 0x98

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    const/4 p1, 0x1

    const-wide/16 p3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    const/16 v1, 0x16

    if-eq p0, v1, :cond_8

    const/16 v1, 0x18

    if-eq p0, v1, :cond_6

    const/16 v1, 0x20

    if-eq p0, v1, :cond_4

    const/16 v1, 0x30

    if-eq p0, v1, :cond_2

    const/16 v1, 0xfe

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec5:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1

    :cond_2
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec4:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    return p1

    :cond_4
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec3:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    return p1

    :cond_6
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec2:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    move p1, v0

    :goto_3
    return p1

    :cond_8
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec1:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_9

    goto :goto_4

    :cond_9
    move p1, v0

    :goto_4
    return p1

    :cond_a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec0:[J

    aget-wide v1, p0, p2

    and-long/2addr p5, v1

    cmp-long p0, p5, p3

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    move p1, v0

    :goto_5
    return p1
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide p1, p0, p1

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec8:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_3a

    const/16 v4, 0x4d

    if-eq p0, v4, :cond_38

    const/16 v4, 0x9f

    if-eq p0, v4, :cond_36

    const/16 v4, 0xa4

    if-eq p0, v4, :cond_34

    const/16 v4, 0xd7

    if-eq p0, v4, :cond_32

    const/16 v4, 0x30

    if-eq p0, v4, :cond_30

    const/16 v4, 0x31

    if-eq p0, v4, :cond_2e

    const/16 v4, 0xfa

    if-eq p0, v4, :cond_2c

    const/16 v4, 0xfb

    if-eq p0, v4, :cond_2a

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    aget-wide p1, p0, p1

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_0
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec58:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec57:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_2
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_3
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec52:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :pswitch_4
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec51:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :pswitch_5
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec50:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :pswitch_6
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec49:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    :pswitch_7
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :pswitch_8
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec47:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :pswitch_9
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec40:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v0, v1

    :cond_b
    return v0

    :pswitch_b
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec39:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :pswitch_c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v0, v1

    :cond_d
    return v0

    :pswitch_d
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec37:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v0, v1

    :cond_e
    return v0

    :pswitch_e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_f

    move v0, v1

    :cond_f
    return v0

    :pswitch_f
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec35:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v0, v1

    :cond_10
    return v0

    :pswitch_10
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec34:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    move v0, v1

    :cond_11
    return v0

    :pswitch_11
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec33:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_12

    move v0, v1

    :cond_12
    return v0

    :pswitch_12
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec32:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    move v0, v1

    :cond_13
    return v0

    :pswitch_13
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec31:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_14

    move v0, v1

    :cond_14
    return v0

    :pswitch_14
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec30:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_15

    move v0, v1

    :cond_15
    return v0

    :pswitch_15
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec29:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_16

    move v0, v1

    :cond_16
    return v0

    :pswitch_16
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_17

    move v0, v1

    :cond_17
    return v0

    :pswitch_17
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_18

    move v0, v1

    :cond_18
    return v0

    :pswitch_18
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec27:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_19

    move v0, v1

    :cond_19
    return v0

    :pswitch_19
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1a

    move v0, v1

    :cond_1a
    return v0

    :pswitch_1a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec25:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1b

    move v0, v1

    :cond_1b
    return v0

    :pswitch_1b
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec24:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1c

    move v0, v1

    :cond_1c
    return v0

    :pswitch_1c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec23:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    :pswitch_1d
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec22:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1e

    move v0, v1

    :cond_1e
    return v0

    :pswitch_1e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec21:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    :pswitch_1f
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec20:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_20

    move v0, v1

    :cond_20
    return v0

    :pswitch_20
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec19:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_21

    move v0, v1

    :cond_21
    return v0

    :pswitch_21
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec18:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_22

    move v0, v1

    :cond_22
    return v0

    :pswitch_22
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec17:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_23

    move v0, v1

    :cond_23
    return v0

    :pswitch_23
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec16:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_24

    move v0, v1

    :cond_24
    return v0

    :pswitch_24
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec15:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_25

    move v0, v1

    :cond_25
    return v0

    :pswitch_25
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec14:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_26

    move v0, v1

    :cond_26
    return v0

    :pswitch_26
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec13:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_27

    move v0, v1

    :cond_27
    return v0

    :pswitch_27
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec12:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_28

    move v0, v1

    :cond_28
    return v0

    :pswitch_28
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_29

    move v0, v1

    :cond_29
    return v0

    :cond_2a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec55:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2b

    move v0, v1

    :cond_2b
    return v0

    :cond_2c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2d

    move v0, v1

    :cond_2d
    return v0

    :cond_2e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2f

    move v0, v1

    :cond_2f
    return v0

    :cond_30
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec42:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_31

    move v0, v1

    :cond_31
    return v0

    :cond_32
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_33

    move v0, v1

    :cond_33
    return v0

    :cond_34
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_35

    move v0, v1

    :cond_35
    return v0

    :cond_36
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_37

    move v0, v1

    :cond_37
    return v0

    :cond_38
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_39

    move v0, v1

    :cond_39
    return v0

    :cond_3a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec10:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3b

    move v0, v1

    :cond_3b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_3(IIIJJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hiByte",
            "i1",
            "i2",
            "l1",
            "l2"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_3a

    const/16 v4, 0x4d

    if-eq p0, v4, :cond_38

    const/16 v4, 0x9f

    if-eq p0, v4, :cond_36

    const/16 v4, 0xa4

    if-eq p0, v4, :cond_34

    const/16 v4, 0xd7

    if-eq p0, v4, :cond_32

    const/16 v4, 0x30

    if-eq p0, v4, :cond_30

    const/16 v4, 0x31

    if-eq p0, v4, :cond_2e

    const/16 v4, 0xfa

    if-eq p0, v4, :cond_2c

    const/16 v4, 0xfb

    if-eq p0, v4, :cond_2a

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec9:[J

    aget-wide p1, p0, p1

    and-long p0, p1, p3

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :pswitch_0
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec93:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_1
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec92:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_2
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec56:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_3
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec90:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0

    :pswitch_4
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec89:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :pswitch_5
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec88:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0

    :pswitch_6
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec87:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_7

    move v0, v1

    :cond_7
    return v0

    :pswitch_7
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec48:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :pswitch_8
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec86:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_9

    move v0, v1

    :cond_9
    return v0

    :pswitch_9
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec41:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    :pswitch_a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec84:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v0, v1

    :cond_b
    return v0

    :pswitch_b
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec83:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_c

    move v0, v1

    :cond_c
    return v0

    :pswitch_c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec38:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v0, v1

    :cond_d
    return v0

    :pswitch_d
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec82:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v0, v1

    :cond_e
    return v0

    :pswitch_e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec36:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_f

    move v0, v1

    :cond_f
    return v0

    :pswitch_f
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec81:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v0, v1

    :cond_10
    return v0

    :pswitch_10
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec80:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    move v0, v1

    :cond_11
    return v0

    :pswitch_11
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec79:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_12

    move v0, v1

    :cond_12
    return v0

    :pswitch_12
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec78:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    move v0, v1

    :cond_13
    return v0

    :pswitch_13
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec77:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_14

    move v0, v1

    :cond_14
    return v0

    :pswitch_14
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec76:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_15

    move v0, v1

    :cond_15
    return v0

    :pswitch_15
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec75:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_16

    move v0, v1

    :cond_16
    return v0

    :pswitch_16
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec28:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_17

    move v0, v1

    :cond_17
    return v0

    :pswitch_17
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec6:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_18

    move v0, v1

    :cond_18
    return v0

    :pswitch_18
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec74:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_19

    move v0, v1

    :cond_19
    return v0

    :pswitch_19
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec26:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1a

    move v0, v1

    :cond_1a
    return v0

    :pswitch_1a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec73:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1b

    move v0, v1

    :cond_1b
    return v0

    :pswitch_1b
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec72:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1c

    move v0, v1

    :cond_1c
    return v0

    :pswitch_1c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec71:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    :pswitch_1d
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec70:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1e

    move v0, v1

    :cond_1e
    return v0

    :pswitch_1e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec69:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1f

    move v0, v1

    :cond_1f
    return v0

    :pswitch_1f
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec68:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_20

    move v0, v1

    :cond_20
    return v0

    :pswitch_20
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec67:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_21

    move v0, v1

    :cond_21
    return v0

    :pswitch_21
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec66:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_22

    move v0, v1

    :cond_22
    return v0

    :pswitch_22
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec65:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_23

    move v0, v1

    :cond_23
    return v0

    :pswitch_23
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec64:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_24

    move v0, v1

    :cond_24
    return v0

    :pswitch_24
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec63:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_25

    move v0, v1

    :cond_25
    return v0

    :pswitch_25
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec62:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_26

    move v0, v1

    :cond_26
    return v0

    :pswitch_26
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec61:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_27

    move v0, v1

    :cond_27
    return v0

    :pswitch_27
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec60:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_28

    move v0, v1

    :cond_28
    return v0

    :pswitch_28
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec11:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_29

    move v0, v1

    :cond_29
    return v0

    :cond_2a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec91:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2b

    move v0, v1

    :cond_2b
    return v0

    :cond_2c
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec54:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2d

    move v0, v1

    :cond_2d
    return v0

    :cond_2e
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec43:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2f

    move v0, v1

    :cond_2f
    return v0

    :cond_30
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec85:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_31

    move v0, v1

    :cond_31
    return v0

    :cond_32
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec53:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_33

    move v0, v1

    :cond_33
    return v0

    :cond_34
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec46:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_35

    move v0, v1

    :cond_35
    return v0

    :cond_36
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec45:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_37

    move v0, v1

    :cond_37
    return v0

    :cond_38
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec44:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_39

    move v0, v1

    :cond_39
    return v0

    :cond_3a
    sget-object p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjbitVec59:[J

    aget-wide p1, p0, p2

    and-long p0, p1, p5

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3b

    move v0, v1

    :cond_3b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xa6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    :goto_0
    sget-object v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state1",
            "state2"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startState",
            "curPos"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x98

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v6, v2

    move v4, v3

    move/from16 v3, p2

    :goto_0
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    :cond_0
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x40

    const/16 v10, 0x2e

    const/16 v11, 0x5e

    const/16 v12, 0x75

    const/4 v14, 0x3

    const/16 v9, 0x51

    const/16 v15, 0x62

    const/16 v1, 0x56

    const-wide/16 v16, 0x0

    if-ge v7, v8, :cond_41

    const-wide/16 v18, 0x1

    shl-long v18, v18, v7

    :goto_1
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const/16 v13, 0xa

    const-wide/high16 v21, 0xff000000000000L

    const-wide/high16 v23, 0x3ff000000000000L

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    const-wide v7, -0x400002401L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_1

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :cond_1
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3f

    if-le v4, v11, :cond_3f

    :goto_2
    move v4, v11

    goto/16 :goto_5

    :pswitch_2
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x96

    const/16 v8, 0x97

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_3
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_2

    goto/16 :goto_5

    :cond_2
    if-le v4, v1, :cond_3

    move v4, v1

    :cond_3
    const/16 v7, 0x64

    invoke-direct {v0, v15, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_4
    const-wide v20, 0x280000000000L

    and-long v20, v18, v20

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x95

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_5
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v7, v10, :cond_3f

    const/16 v7, 0x93

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_6
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x92

    const/16 v8, 0x93

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_7
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x90

    const/16 v8, 0x91

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_8
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x61

    invoke-direct {v0, v11, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_9
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_4

    goto/16 :goto_5

    :cond_4
    if-le v4, v1, :cond_5

    move v4, v1

    :cond_5
    invoke-direct {v0, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_a
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x8c

    const/16 v8, 0x8d

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_b
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-le v4, v1, :cond_7

    move v4, v1

    :cond_7
    const/16 v7, 0x5b

    const/16 v8, 0x5d

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_c
    const-wide v20, 0x280000000000L

    and-long v20, v18, v20

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x8b

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_d
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x89

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_e
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x87

    const/16 v8, 0x88

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_f
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x58

    const/16 v8, 0x5a

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_10
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x86

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_11
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x85

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_12
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x83

    const/16 v8, 0x84

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_13
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x55

    const/16 v8, 0x57

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_14
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    if-le v4, v9, :cond_3f

    :goto_3
    move v4, v9

    goto/16 :goto_5

    :pswitch_15
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x7f

    const/16 v8, 0x80

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_16
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-nez v7, :cond_8

    goto/16 :goto_5

    :cond_8
    if-le v4, v9, :cond_9

    move v4, v9

    :cond_9
    const/16 v7, 0x7f

    const/16 v8, 0x80

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_17
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    if-le v4, v9, :cond_3f

    goto :goto_3

    :pswitch_18
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x7b

    const/16 v8, 0x7c

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_19
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-nez v7, :cond_a

    goto/16 :goto_5

    :cond_a
    if-le v4, v9, :cond_b

    move v4, v9

    :cond_b
    const/16 v7, 0x7b

    const/16 v8, 0x7c

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1a
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x78

    const/16 v8, 0x79

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1b
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_c

    goto/16 :goto_5

    :cond_c
    if-le v4, v9, :cond_d

    move v4, v9

    :cond_d
    const/16 v7, 0x78

    const/16 v8, 0x79

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1c
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4b

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_1d
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x74

    invoke-direct {v0, v7, v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_1e
    const-wide/high16 v7, 0x3000000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x52

    const/16 v8, 0x54

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_1f
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4b

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_20
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x70

    const/16 v8, 0x71

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_21
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4f

    invoke-direct {v0, v7, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_22
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x6d

    const/16 v8, 0x6e

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_23
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4c

    const/16 v8, 0x4e

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_24
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x30

    if-ne v7, v8, :cond_3f

    const/16 v7, 0x18

    const/16 v8, 0x1f

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_25
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_e

    goto/16 :goto_5

    :cond_e
    if-le v4, v1, :cond_f

    move v4, v1

    :cond_f
    const/16 v7, 0x48

    const/16 v8, 0x4b

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_26
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_10

    goto/16 :goto_5

    :cond_10
    if-le v4, v1, :cond_11

    move v4, v1

    :cond_11
    const/16 v7, 0x66

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_27
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x67

    const/16 v8, 0x68

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_28
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_12

    goto/16 :goto_5

    :cond_12
    if-le v4, v1, :cond_13

    move v4, v1

    :cond_13
    const/16 v7, 0x45

    const/16 v8, 0x47

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_29
    const-wide v7, 0x280000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x66

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_2a
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_14

    goto/16 :goto_5

    :cond_14
    if-le v4, v1, :cond_15

    move v4, v1

    :cond_15
    const/16 v7, 0x64

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_2b
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x63

    invoke-direct {v0, v15, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_2c
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_16

    goto/16 :goto_5

    :cond_16
    if-le v4, v1, :cond_17

    move v4, v1

    :cond_17
    const/16 v7, 0x41

    const/16 v8, 0x44

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_2d
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-eq v7, v10, :cond_18

    goto/16 :goto_5

    :cond_18
    if-le v4, v1, :cond_19

    move v4, v1

    :cond_19
    const/16 v7, 0x3e

    const/16 v8, 0x40

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_2e
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x60

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_2f
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x5f

    invoke-direct {v0, v11, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_30
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_1a

    goto/16 :goto_5

    :cond_1a
    if-le v4, v1, :cond_1b

    move v4, v1

    :cond_1b
    const/16 v7, 0x3a

    const/16 v8, 0x3d

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_31
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_1c

    goto/16 :goto_5

    :cond_1c
    if-le v4, v1, :cond_1d

    move v4, v1

    :cond_1d
    const/16 v7, 0x5a

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_32
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x5b

    const/16 v8, 0x5c

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_33
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_1e

    goto/16 :goto_5

    :cond_1e
    if-le v4, v1, :cond_1f

    move v4, v1

    :cond_1f
    const/16 v7, 0x37

    const/16 v8, 0x39

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_34
    const-wide v7, 0x280000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x5a

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_35
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x58

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_36
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x57

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_37
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x33

    const/16 v8, 0x36

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_38
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x52

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_39
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x53

    const/16 v8, 0x54

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_3a
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x32

    const/16 v8, 0x30

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_3b
    const-wide v7, 0x280000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x52

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_3c
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x50

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_3d
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4e

    const/16 v8, 0x4f

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_3e
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    if-le v4, v9, :cond_3f

    goto/16 :goto_3

    :pswitch_3f
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4c

    const/16 v8, 0x4d

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_40
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x4b

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_41
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x49

    const/16 v8, 0x4a

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_42
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_20

    goto/16 :goto_5

    :cond_20
    if-le v4, v9, :cond_21

    move v4, v9

    :cond_21
    const/4 v7, 0x4

    const/16 v8, 0x12

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_43
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x45

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_44
    const-wide v7, -0x800000000001L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/4 v7, 0x6

    if-le v4, v7, :cond_3f

    const/4 v4, 0x6

    goto/16 :goto_5

    :pswitch_45
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x46

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_46
    const-wide/16 v7, -0x2401

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-nez v7, :cond_22

    goto/16 :goto_5

    :cond_22
    const/4 v7, 0x5

    if-le v4, v7, :cond_23

    const/4 v4, 0x5

    :cond_23
    const/16 v7, 0x44

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_47
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v13, 0x2a

    if-ne v8, v13, :cond_24

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x45

    aput v13, v7, v8

    goto/16 :goto_5

    :cond_24
    const/16 v7, 0x2f

    if-ne v8, v7, :cond_3f

    const/4 v7, 0x5

    if-le v4, v7, :cond_25

    const/4 v4, 0x5

    :cond_25
    const/16 v7, 0x44

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_48
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_3f

    const/16 v7, 0x13

    const/16 v8, 0x14

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_49
    and-long v20, v18, v23

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x40

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_4a
    and-long v20, v18, v23

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x3f

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_4b
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_26

    goto/16 :goto_5

    :cond_26
    if-le v4, v15, :cond_27

    move v4, v15

    :cond_27
    const/16 v7, 0x3c

    const/16 v8, 0x36

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_4c
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x3b

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_4d
    and-long v20, v18, v23

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x3a

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_4e
    and-long v20, v18, v23

    cmp-long v8, v20, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v8, 0x1

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v13, 0x39

    aput v13, v7, v8

    goto/16 :goto_5

    :pswitch_4f
    const-wide v7, 0x3ff00100fffc1ffL

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-nez v7, :cond_28

    goto/16 :goto_5

    :cond_28
    if-le v4, v15, :cond_29

    move v4, v15

    :cond_29
    const/16 v7, 0x3c

    const/16 v8, 0x36

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_50
    const/16 v7, 0x3c

    const/16 v8, 0x36

    iget v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v12, 0x24

    if-eq v13, v12, :cond_2a

    goto/16 :goto_5

    :cond_2a
    if-le v4, v15, :cond_2b

    move v4, v15

    :cond_2b
    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_51
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x32

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_52
    const-wide/high16 v12, 0xf000000000000L

    and-long v12, v18, v12

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x34

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_53
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_54
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x2b

    const/16 v8, 0x2f

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_55
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3f

    if-le v4, v11, :cond_3f

    goto/16 :goto_2

    :pswitch_56
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_57
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v10, v7, v8

    goto/16 :goto_5

    :pswitch_58
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x2d

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_59
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x2c

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_5a
    const-wide v7, 0x8400000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_5b
    const-wide v7, -0x400002401L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_5c
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3f

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_5d
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_5e
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x25

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_5f
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x24

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_60
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x23

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_61
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v12, 0x30

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x1e

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_62
    const/16 v12, 0x30

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x16

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_63
    const/16 v12, 0x30

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x1a

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_64
    const/16 v12, 0x30

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x18

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_65
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v12, 0x35

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x19

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_66
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v12, 0x35

    if-ne v8, v12, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x17

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_67
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x12

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_68
    const-wide/high16 v12, 0xf000000000000L

    and-long v12, v18, v12

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0x14

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_69
    and-long v7, v18, v21

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_6a
    const/16 v7, 0xe

    and-long v12, v18, v21

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    const/16 v8, 0x12

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_6b
    const/16 v7, 0xe

    const-wide v12, 0x8400000000L

    and-long v12, v18, v12

    cmp-long v8, v12, v16

    if-eqz v8, :cond_3f

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_6c
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x27

    if-ne v7, v8, :cond_3f

    const/16 v7, 0x5d

    if-le v4, v7, :cond_3f

    const/16 v4, 0x5d

    goto/16 :goto_5

    :pswitch_6d
    const-wide v7, -0x8000002401L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0xe

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_6e
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x27

    if-ne v7, v8, :cond_3f

    const/16 v7, 0x15

    const/16 v8, 0x17

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_5

    :pswitch_6f
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_2c

    goto/16 :goto_5

    :cond_2c
    if-le v4, v1, :cond_2d

    move v4, v1

    :cond_2d
    const/16 v7, 0x27

    const/16 v8, 0x2a

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_70
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_2e

    goto/16 :goto_5

    :cond_2e
    if-le v4, v1, :cond_2f

    move v4, v1

    :cond_2f
    const/4 v7, 0x7

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_71
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/16 v7, 0x8

    const/16 v8, 0x9

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_72
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_30

    goto/16 :goto_5

    :cond_30
    if-le v4, v1, :cond_31

    move v4, v1

    :cond_31
    const/16 v7, 0x24

    const/16 v8, 0x26

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_73
    const-wide v7, 0x280000000000L

    and-long v7, v18, v7

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/4 v7, 0x7

    invoke-direct {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_5

    :pswitch_74
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_32

    goto/16 :goto_5

    :cond_32
    if-le v4, v1, :cond_33

    move v4, v1

    :cond_33
    const/4 v7, 0x5

    invoke-direct {v0, v7, v13}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_75
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-eqz v7, :cond_3f

    const/4 v7, 0x4

    invoke-direct {v0, v14, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_5

    :pswitch_76
    and-long v7, v18, v23

    cmp-long v7, v7, v16

    if-nez v7, :cond_34

    goto/16 :goto_5

    :cond_34
    if-le v4, v1, :cond_35

    move v4, v1

    :cond_35
    const/16 v7, 0x20

    const/16 v8, 0x23

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_5

    :pswitch_77
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v8, v10, :cond_3f

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/4 v12, 0x2

    aput v12, v7, v8

    goto/16 :goto_5

    :pswitch_78
    and-long v12, v18, v23

    cmp-long v8, v12, v16

    if-eqz v8, :cond_37

    if-le v4, v9, :cond_36

    move v4, v9

    :cond_36
    const/4 v7, 0x4

    const/16 v8, 0x12

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    :cond_37
    const-wide v12, 0x100001200L

    and-long v12, v18, v12

    cmp-long v8, v12, v16

    if-eqz v8, :cond_38

    const/4 v8, 0x1

    if-le v4, v8, :cond_3e

    const/4 v4, 0x1

    goto :goto_4

    :cond_38
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v12, 0x2f

    if-ne v8, v12, :cond_39

    const/16 v7, 0x13

    const/16 v8, 0x14

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_4

    :cond_39
    const/16 v12, 0x24

    if-ne v8, v12, :cond_3b

    if-le v4, v15, :cond_3a

    move v4, v15

    :cond_3a
    const/16 v7, 0x3c

    const/16 v8, 0x36

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_4

    :cond_3b
    const/16 v12, 0x22

    if-ne v8, v12, :cond_3c

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    :cond_3c
    const/16 v12, 0x27

    if-ne v8, v12, :cond_3d

    const/16 v7, 0x15

    const/16 v8, 0x17

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_4

    :cond_3d
    if-ne v8, v10, :cond_3e

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/4 v12, 0x2

    aput v12, v7, v8

    :cond_3e
    :goto_4
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x30

    if-ne v7, v8, :cond_3f

    const/16 v7, 0x18

    const/16 v8, 0x1f

    invoke-direct {v0, v7, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    :cond_3f
    :goto_5
    if-ne v5, v6, :cond_40

    goto/16 :goto_12

    :cond_40
    const/16 v12, 0x75

    goto/16 :goto_1

    :cond_41
    const/16 v8, 0x80

    if-ge v7, v8, :cond_55

    and-int/lit8 v7, v7, 0x3f

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v7

    :goto_6
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const-wide v18, 0x7e0000007eL

    packed-switch v8, :pswitch_data_1

    :goto_7
    :pswitch_79
    goto :goto_8

    :pswitch_7a
    const-wide v18, -0x7800000178000002L

    and-long v18, v12, v18

    cmp-long v8, v18, v16

    if-eqz v8, :cond_44

    if-le v4, v15, :cond_42

    move v4, v15

    :cond_42
    const/16 v7, 0x3c

    const/16 v8, 0x36

    invoke-direct {v0, v8, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :cond_43
    :goto_8
    const/16 v10, 0x5f

    goto/16 :goto_c

    :cond_44
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v1, 0x5c

    if-ne v8, v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x37

    aput v8, v7, v1

    goto :goto_8

    :pswitch_7b
    const-wide/32 v18, -0x10000001

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_45

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v8, 0x5c

    goto :goto_9

    :cond_45
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_46

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x2a

    aput v10, v7, v1

    :cond_46
    :goto_9
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v8, :cond_43

    const/16 v1, 0x65

    const/16 v7, 0x67

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_8

    :pswitch_7c
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x99

    const/16 v7, 0x9a

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_8

    :cond_47
    :goto_a
    move v10, v7

    goto/16 :goto_c

    :pswitch_7d
    const-wide v7, 0x1000000010000L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x97

    const/16 v7, 0x98

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_8

    :pswitch_7e
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x92

    const/16 v7, 0x93

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_8

    :pswitch_7f
    const-wide v7, 0x7e8000007eL

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x90

    const/16 v7, 0x91

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_80
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x61

    invoke-direct {v0, v11, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_81
    const-wide v18, 0x100000001000000L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x8f

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_82
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x95

    const/16 v7, 0x96

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_83
    const-wide v7, 0x1000000010000L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x93

    const/16 v7, 0x94

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_84
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x89

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_85
    const-wide v7, 0x7e8000007eL

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x87

    const/16 v7, 0x88

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_86
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x58

    const/16 v7, 0x5a

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_87
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x85

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_88
    const-wide v7, 0x7e8000007eL

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x83

    const/16 v7, 0x84

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_89
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x55

    const/16 v7, 0x57

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_8a
    const-wide v7, 0x100000001000000L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x82

    const/16 v7, 0x85

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_8b
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x91

    const/16 v7, 0x92

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_8c
    const-wide v18, 0x400000004L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x7e

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_8d
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x8f

    const/16 v7, 0x90

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_8e
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    if-le v4, v9, :cond_43

    move v4, v9

    goto/16 :goto_8

    :pswitch_8f
    const-wide v7, 0x7e8000007eL

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x78

    const/16 v7, 0x79

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_90
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-nez v1, :cond_48

    goto/16 :goto_7

    :cond_48
    if-le v4, v9, :cond_49

    move v4, v9

    :cond_49
    const/16 v1, 0x78

    const/16 v7, 0x79

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_91
    const-wide v18, 0x100000001000000L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x77

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_92
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x8d

    const/16 v7, 0x8e

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_93
    const-wide v18, 0x400000004L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x73

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_94
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x8b

    const/16 v7, 0x8c

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_95
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x4b

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_96
    const-wide v7, 0x7e8000007eL

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x6d

    const/16 v7, 0x6e

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_97
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x4c

    const/16 v7, 0x4e

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_98
    const-wide v18, 0x100000001000000L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x6c

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_99
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x89

    const/16 v7, 0x8a

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_9a
    const-wide v7, 0x2000000020L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x87

    const/16 v7, 0x88

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_9b
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x85

    const/16 v8, 0x86

    invoke-direct {v0, v1, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_a

    :pswitch_9c
    const/16 v7, 0x5f

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v7, :cond_47

    const/16 v1, 0x83

    const/16 v8, 0x84

    invoke-direct {v0, v1, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_a

    :pswitch_9d
    const/16 v7, 0x5f

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v7, :cond_47

    const/16 v1, 0x81

    const/16 v7, 0x82

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_9e
    const-wide v7, 0x2000000020L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x7f

    const/16 v7, 0x80

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_9f
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x7d

    const/16 v8, 0x7e

    invoke-direct {v0, v1, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_a

    :pswitch_a0
    const/16 v7, 0x5f

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v7, :cond_47

    const/16 v1, 0x7b

    const/16 v7, 0x7c

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_a1
    const-wide v7, 0x2000000020L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x79

    const/16 v7, 0x7a

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_a2
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x77

    const/16 v8, 0x78

    invoke-direct {v0, v1, v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_a

    :pswitch_a3
    const/16 v7, 0x5f

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v7, :cond_47

    const/16 v1, 0x76

    const/16 v7, 0x75

    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_a4
    const-wide v7, 0x100000001000L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x50

    if-le v4, v1, :cond_43

    const/16 v1, 0x50

    :goto_b
    move v4, v1

    goto/16 :goto_8

    :pswitch_a5
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5f

    if-ne v1, v7, :cond_47

    const/16 v1, 0x73

    const/16 v7, 0x74

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_a6
    const/4 v1, 0x6

    if-le v4, v1, :cond_43

    const/4 v4, 0x6

    goto/16 :goto_8

    :pswitch_a7
    const/4 v1, 0x5

    if-le v4, v1, :cond_4a

    const/4 v4, 0x5

    :cond_4a
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x44

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_a8
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x3d

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_a9
    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x40

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_aa
    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x3f

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_ab
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x75

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x3e

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_ac
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x37

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_ad
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-nez v1, :cond_4b

    goto/16 :goto_7

    :cond_4b
    if-le v4, v15, :cond_4c

    move v4, v15

    :cond_4c
    const/16 v1, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_ae
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_af
    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x3a

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_b0
    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x39

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_b1
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x75

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x38

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_b2
    const-wide v7, -0x7800000178000002L

    and-long/2addr v7, v12

    cmp-long v1, v7, v16

    if-nez v1, :cond_4d

    goto/16 :goto_7

    :cond_4d
    if-le v4, v15, :cond_4e

    move v4, v15

    :cond_4e
    const/16 v1, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_b3
    const/16 v1, 0x3c

    const/16 v7, 0x36

    const-wide v18, 0x7fffffe87fffffeL

    and-long v18, v12, v18

    cmp-long v8, v18, v16

    if-nez v8, :cond_4f

    goto/16 :goto_7

    :cond_4f
    if-le v4, v15, :cond_50

    move v4, v15

    :cond_50
    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_b4
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x2a

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_b5
    and-long v7, v12, v18

    cmp-long v1, v7, v16

    if-eqz v1, :cond_43

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_b6
    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x2e

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_b7
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x2d

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_b8
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x2c

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_b9
    move v8, v10

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v10, 0x75

    if-ne v1, v10, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x2b

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_ba
    move v8, v10

    const-wide v18, 0x1c404410000000L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_bb
    move v8, v10

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_43

    const/16 v1, 0x65

    const/16 v7, 0x67

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_bc
    move v8, v10

    const-wide/32 v18, -0x10000001

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_bd
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_be
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x25

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_bf
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x24

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_c0
    move v8, v10

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x23

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_c1
    move v8, v10

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v10, 0x75

    if-ne v1, v10, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x22

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_c2
    const/16 v10, 0x75

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-ne v1, v10, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1f

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_c3
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x1c

    aput v8, v7, v1

    goto/16 :goto_8

    :pswitch_c4
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x75

    if-ne v1, v8, :cond_43

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v1, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x1b

    aput v10, v7, v1

    goto/16 :goto_8

    :pswitch_c5
    const/16 v8, 0x75

    const-wide v18, 0x800000008L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_c6
    const/16 v8, 0x75

    const-wide v18, 0x800000008L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x10

    const/16 v7, 0x1d

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_8

    :pswitch_c7
    const/16 v8, 0x75

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_43

    const/16 v1, 0x71

    const/16 v7, 0x72

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_c8
    const/16 v8, 0x75

    const-wide v18, 0x1c404410000000L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_c9
    const/16 v8, 0x75

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v7, 0x5c

    if-ne v1, v7, :cond_43

    const/16 v1, 0x6e

    const/16 v7, 0x70

    invoke-direct {v0, v1, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_8

    :pswitch_ca
    const/16 v8, 0x75

    const-wide/32 v18, -0x10000001

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_8

    :pswitch_cb
    const/16 v8, 0x75

    const-wide v18, 0x5000000050L

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_43

    const/16 v1, 0x56

    if-le v4, v1, :cond_43

    goto/16 :goto_b

    :pswitch_cc
    const/16 v8, 0x75

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v10, 0x5f

    if-ne v7, v10, :cond_53

    const/16 v7, 0x6c

    const/16 v10, 0x6d

    invoke-direct {v0, v7, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_cd
    const/16 v8, 0x75

    const-wide v18, 0x2000000020L

    and-long v18, v12, v18

    cmp-long v7, v18, v16

    if-eqz v7, :cond_43

    const/16 v7, 0x6a

    const/16 v10, 0x6b

    invoke-direct {v0, v7, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_8

    :pswitch_ce
    const/16 v8, 0x75

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v10, 0x5f

    if-ne v7, v10, :cond_53

    const/16 v7, 0x68

    const/16 v1, 0x69

    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjAddStates(II)V

    goto :goto_c

    :pswitch_cf
    const/16 v8, 0x75

    const/16 v10, 0x5f

    const-wide v18, 0x7fffffe87fffffeL

    and-long v18, v12, v18

    cmp-long v1, v18, v16

    if-eqz v1, :cond_52

    if-le v4, v15, :cond_51

    move v4, v15

    :cond_51
    const/16 v1, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_c

    :cond_52
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_53

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v8, 0x3d

    aput v8, v7, v1

    :cond_53
    :goto_c
    if-ne v5, v6, :cond_54

    goto/16 :goto_12

    :cond_54
    const/16 v1, 0x56

    const/16 v10, 0x2e

    goto/16 :goto_6

    :cond_55
    shr-int/lit8 v1, v7, 0x8

    shr-int/lit8 v8, v7, 0xe

    and-int/lit8 v9, v1, 0x3f

    const-wide/16 v10, 0x1

    shl-long v9, v10, v9

    and-int/lit16 v11, v7, 0xff

    const/4 v12, 0x6

    shr-int/2addr v11, v12

    and-int/lit8 v7, v7, 0x3f

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v7

    :goto_d
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_64

    const/16 v2, 0xd

    if-eq v7, v2, :cond_63

    const/16 v2, 0x27

    if-eq v7, v2, :cond_62

    const/16 v2, 0x44

    if-eq v7, v2, :cond_5e

    const/16 v2, 0x46

    if-eq v7, v2, :cond_5d

    const/16 v2, 0x35

    if-eq v7, v2, :cond_5a

    const/16 v2, 0x36

    if-eq v7, v2, :cond_57

    const/16 v2, 0x98

    if-eq v7, v2, :cond_62

    const/16 v2, 0x99

    if-eq v7, v2, :cond_57

    :cond_56
    :goto_e
    const/16 v2, 0xe

    goto/16 :goto_f

    :cond_57
    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_3(IIIJJ)Z

    move-result v2

    if-nez v2, :cond_58

    goto :goto_e

    :cond_58
    if-le v4, v15, :cond_59

    move v4, v15

    :cond_59
    const/16 v2, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_11

    :cond_5a
    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_e

    :cond_5b
    if-le v4, v15, :cond_5c

    move v4, v15

    :cond_5c
    const/16 v2, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_11

    :cond_5d
    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x6

    if-le v4, v2, :cond_56

    move v4, v2

    const/16 v2, 0x3c

    const/16 v7, 0x36

    goto/16 :goto_11

    :cond_5e
    const/4 v2, 0x6

    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v7

    if-nez v7, :cond_5f

    goto :goto_e

    :cond_5f
    const/4 v7, 0x5

    if-le v4, v7, :cond_60

    move v4, v7

    :cond_60
    iget-object v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v15, v7, 0x1

    iput v15, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v15, 0x44

    aput v15, v2, v7

    :cond_61
    :goto_f
    const/16 v2, 0x3c

    const/16 v7, 0x36

    const/16 v15, 0x62

    goto/16 :goto_11

    :cond_62
    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x0

    invoke-direct {v0, v2, v14}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_e

    :cond_63
    const/4 v2, 0x0

    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_56

    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    iget v15, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v15, 0x1

    iput v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    const/16 v2, 0xe

    aput v2, v7, v15

    goto :goto_f

    :cond_64
    const/16 v2, 0xe

    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_65

    const/4 v7, 0x1

    if-le v4, v7, :cond_66

    move v4, v7

    goto :goto_10

    :cond_65
    const/4 v7, 0x1

    :cond_66
    :goto_10
    move/from16 v25, v1

    move/from16 v26, v8

    move/from16 v27, v11

    move-wide/from16 v28, v9

    move-wide/from16 v30, v12

    invoke-static/range {v25 .. v31}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_61

    const/16 v15, 0x62

    if-le v4, v15, :cond_67

    move v4, v15

    :cond_67
    const/16 v2, 0x3c

    const/16 v7, 0x36

    invoke-direct {v0, v7, v2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    :goto_11
    if-ne v5, v6, :cond_6a

    :goto_12
    const v1, 0x7fffffff

    if-eq v4, v1, :cond_68

    iput v4, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const v1, 0x7fffffff

    move v4, v1

    :cond_68
    add-int/lit8 v3, v3, 0x1

    iget v5, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iput v6, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    rsub-int v6, v6, 0x98

    if-ne v5, v6, :cond_69

    return v3

    :cond_69
    :try_start_0
    iget-object v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v1

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    return v3

    :cond_6a
    const/4 v2, 0x0

    goto/16 :goto_d

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_0
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_0
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_0
        :pswitch_66
        :pswitch_0
        :pswitch_65
        :pswitch_0
        :pswitch_64
        :pswitch_63
        :pswitch_0
        :pswitch_0
        :pswitch_62
        :pswitch_61
        :pswitch_0
        :pswitch_0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_0
        :pswitch_5a
        :pswitch_0
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_0
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_0
        :pswitch_0
        :pswitch_4a
        :pswitch_49
        :pswitch_4c
        :pswitch_0
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_40
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_3e
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_4f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_79
        :pswitch_79
        :pswitch_ce
        :pswitch_79
        :pswitch_cd
        :pswitch_79
        :pswitch_79
        :pswitch_cc
        :pswitch_79
        :pswitch_cb
        :pswitch_79
        :pswitch_79
        :pswitch_ca
        :pswitch_79
        :pswitch_c9
        :pswitch_c8
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_c7
        :pswitch_79
        :pswitch_c6
        :pswitch_79
        :pswitch_c5
        :pswitch_79
        :pswitch_79
        :pswitch_c4
        :pswitch_c3
        :pswitch_79
        :pswitch_79
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_79
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_ae
        :pswitch_a8
        :pswitch_79
        :pswitch_79
        :pswitch_a7
        :pswitch_79
        :pswitch_a6
        :pswitch_79
        :pswitch_79
        :pswitch_a5
        :pswitch_79
        :pswitch_a4
        :pswitch_a3
        :pswitch_79
        :pswitch_a2
        :pswitch_79
        :pswitch_a1
        :pswitch_79
        :pswitch_79
        :pswitch_a0
        :pswitch_79
        :pswitch_79
        :pswitch_9f
        :pswitch_79
        :pswitch_9e
        :pswitch_79
        :pswitch_79
        :pswitch_9d
        :pswitch_79
        :pswitch_79
        :pswitch_9c
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_9b
        :pswitch_79
        :pswitch_9a
        :pswitch_79
        :pswitch_79
        :pswitch_99
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_79
        :pswitch_94
        :pswitch_79
        :pswitch_93
        :pswitch_79
        :pswitch_92
        :pswitch_79
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_79
        :pswitch_8d
        :pswitch_79
        :pswitch_8c
        :pswitch_79
        :pswitch_8b
        :pswitch_79
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_79
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_79
        :pswitch_79
        :pswitch_82
        :pswitch_79
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_79
        :pswitch_7d
        :pswitch_79
        :pswitch_79
        :pswitch_7c
        :pswitch_79
        :pswitch_7b
        :pswitch_7a
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startState",
            "curPos"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iget-object v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    :goto_0
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    :cond_0
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x40

    const/16 v9, 0x61

    if-ge v7, v8, :cond_5

    :cond_1
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v1, :cond_2

    goto :goto_2

    :cond_2
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v8, 0x22

    if-ne v7, v8, :cond_4

    if-le v6, v9, :cond_4

    :goto_1
    move v6, v9

    goto :goto_2

    :cond_3
    if-le v6, v9, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v5, v4, :cond_1

    goto :goto_5

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_b

    :cond_6
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_3

    :cond_7
    if-le v6, v9, :cond_a

    move v6, v9

    goto :goto_3

    :cond_8
    if-le v6, v9, :cond_9

    move v6, v9

    :cond_9
    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v10, 0x5c

    if-ne v8, v10, :cond_a

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    :cond_a
    :goto_3
    if-ne v5, v4, :cond_6

    goto :goto_5

    :cond_b
    shr-int/lit8 v8, v7, 0x8

    shr-int/lit8 v17, v7, 0xe

    and-int/lit8 v10, v8, 0x3f

    const-wide/16 v11, 0x1

    shl-long v18, v11, v10

    and-int/lit16 v10, v7, 0xff

    shr-int/lit8 v20, v10, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long v21, v11, v7

    :cond_c
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    move v10, v8

    move/from16 v11, v17

    move/from16 v12, v20

    move-wide/from16 v13, v18

    move-wide/from16 v15, v21

    invoke-static/range {v10 .. v16}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_e

    if-le v6, v9, :cond_e

    move v6, v9

    :cond_e
    :goto_4
    if-ne v5, v4, :cond_c

    :goto_5
    if-eq v6, v3, :cond_f

    iput v6, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    iget v5, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_10

    return v2

    :cond_10
    :try_start_0
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v7}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v7

    iput v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 8

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x5b

    const/16 v3, 0x69

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    const/16 v1, 0x79

    if-eq v0, v1, :cond_6

    const/16 v1, 0x21

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x25

    if-eq v0, v1, :cond_3

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    invoke-direct {p0, v2, v2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x74

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x68

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const/16 v0, 0x85

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x2000000000000000L

    const-wide/16 v6, 0x4000

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_3
    const/16 v0, 0x67

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v4, 0x8088

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v4, 0x6

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v4, 0x400

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/16 v4, 0x4041

    const-wide/16 v6, 0x0

    const-wide/high16 v2, -0x800000000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v2, 0x7f0000000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v4, 0x20

    const-wide/16 v6, 0x0

    const-wide/high16 v2, 0xc000000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v4, 0x2000

    const-wide/16 v6, 0x0

    const-wide v2, 0x3e00000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v4, 0x300

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x1e0000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/16 v4, 0x800

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x10000000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x200000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_10
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0x1f0000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_11
    const-wide/16 v4, 0x1000

    const-wide/16 v6, 0x0

    const-wide/32 v2, 0xe000000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_12
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/32 v2, 0x1c00000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_13
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/32 v2, 0x3f0000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_14
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/32 v2, 0xe000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_15
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x1800

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_16
    const/16 v0, 0x6f

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_17
    const/16 v0, 0x75

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_18
    const/16 v0, 0x96

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x200000000000000L

    const-wide/32 v6, 0x3c0000

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_19
    const/16 v0, 0x71

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x100000000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_1a
    const/16 v0, 0x72

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x400000000000000L

    const-wide/32 v6, 0x20100

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_1b
    const/16 v0, 0x6b

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1c
    const/16 v0, 0x76

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x1000000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_1d
    const/16 v0, 0x83

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1000

    const-wide/16 v2, 0x80

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_1e
    const/16 v0, 0x6d

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide v4, 0x400000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_1f
    const/16 v0, 0x81

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, -0x7f80000000000000L

    const-wide/16 v6, 0x400

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_20
    const/16 v0, 0x6c

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_21
    const/16 v0, 0x80

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x200

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_22
    const/16 v0, 0x82

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x800

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :pswitch_23
    const/16 v0, 0x66

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_24
    const/16 v0, 0x65

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x86

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x8000

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x6a

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x84

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x1000000000000000L

    const-wide/16 v6, 0x2000

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x87

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x10000

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide v4, 0x80000000L

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x73

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v4, 0x800000000000000L

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide/16 v4, 0x10

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, 0xfc00000000L

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_8
    invoke-direct {p0, v2, v3}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x97

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x4

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6c
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 2

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa10_0(JJJJ)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v8, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/16 v1, 0x8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v2, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v2

    iput v2, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x9

    move-object p1, p0

    move p2, v6

    move-wide p3, v0

    move-wide p5, v2

    move-wide/from16 p7, v4

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v2, 0x400000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa11_0(JJ)I

    move-result v0

    return v0

    :catch_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x9

    move-object p1, p0

    move p2, v6

    move-wide p3, v0

    move-wide p5, v2

    move-wide/from16 p7, v4

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0xa

    return v0
.end method

.method private jjMoveStringLiteralDfa11_0(JJ)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0"
        }
    .end annotation

    and-long v2, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v1, 0x9

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v8, 0xb

    :try_start_0
    iget-object v4, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v4}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v4

    iput v4, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x64

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x400000000000000L

    and-long/2addr v4, v2

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    const/16 v1, 0x99

    invoke-direct {p0, v8, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v1, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v1, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8
.end method

.method private jjMoveStringLiteralDfa1_0(JJJ)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    move-object v13, p0

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v0

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1d

    const/16 v4, 0x26

    const/16 v5, 0x7c

    if-eq v0, v4, :cond_1c

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_1b

    if-eq v0, v5, :cond_1a

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_19

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_18

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_17

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_16

    const/16 v4, 0x61

    if-eq v0, v4, :cond_15

    const/16 v4, 0x62

    if-eq v0, v4, :cond_14

    const/16 v4, 0x65

    if-eq v0, v4, :cond_13

    const/16 v4, 0x66

    const/16 v5, 0x99

    if-eq v0, v4, :cond_12

    const/16 v1, 0x68

    if-eq v0, v1, :cond_11

    const/16 v1, 0x69

    if-eq v0, v1, :cond_10

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x400000000008000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v7, 0x1000

    const-wide/16 v11, 0x0

    const-wide/32 v3, 0x8000000

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0x200000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x102100000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0xc0000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v7, 0x400

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x1000

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v7, 0x6001

    const-wide/16 v11, 0x0

    const-wide v3, -0x3ffe7fffffffc000L    # -2.187500000007276

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/16 v7, 0x300

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v0, 0x800000

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v8, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x40

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    invoke-direct {p0, v8, v0, v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-wide/16 v7, 0x806

    const-wide/16 v11, 0x0

    const-wide v3, 0x90301302000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0xe004000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x1800000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x82080000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x77

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v0, 0x200000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x95

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v8, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v7, 0x0

    const-wide/32 v11, 0x1c0000

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/16 v0, 0x78

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_4
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/16 v0, 0x79

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/16 v0, 0x7a

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v0, 0x800000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x7b

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v0, 0x200

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/16 v0, 0x89

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v0, 0x400

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/16 v0, 0x8a

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_9
    const-wide/16 v0, 0x800

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/16 v0, 0x8b

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v0, 0x1000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/16 v0, 0x8c

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_b
    const-wide/16 v0, 0x2000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/16 v0, 0x8d

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_c
    const-wide/16 v0, 0x4000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0x8e

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_d
    const-wide/32 v0, 0x8000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x8f

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_e
    const-wide/32 v0, 0x10000

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x90

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v0, 0x100

    and-long v0, p5, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/16 v0, 0x88

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v8, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_f
    const-wide/16 v7, 0x0

    const-wide/32 v11, 0x20000

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_10
    const-wide/16 v7, 0x90

    const-wide/16 v11, 0x0

    const-wide/32 v3, 0x60000000

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_11
    const-wide/32 v7, 0x8008

    const-wide/16 v11, 0x0

    const-wide v3, 0x3820000000040000L    # 2.3509887017814206E-38

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_12
    const-wide v6, 0x400000000L

    and-long/2addr v6, p1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1f

    invoke-direct {p0, v8, v1, v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_13
    const-wide/16 v7, 0x20

    const-wide/16 v11, 0x0

    const-wide v3, 0x1c440000400000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_14
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x800

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_15
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x220010030000L

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_16
    const-wide v7, 0x400000000000L

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_17
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x7f

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_18
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x7e

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_19
    const-wide/16 v0, 0x80

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/4 v0, 0x7

    const/16 v1, 0x45

    invoke-direct {p0, v8, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_1a
    const-wide/high16 v0, 0x2000000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x7d

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1b
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/16 v0, 0x70

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1c
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    invoke-direct {p0, v8, v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1d
    const-wide v7, 0x80000000L

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_1e
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    invoke-direct {p0, v8, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1f
    :goto_1
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active0"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v1

    iput v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2f

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v1, 0x100

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_1
    return v3

    :catch_0
    return v0
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active0"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v1

    iput v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2f

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v1, 0x200

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result p1

    return p1

    :cond_1
    return v3

    :catch_0
    return v0
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active1"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v0

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result p1

    return p1

    :cond_0
    const-wide v0, 0x100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa2_3(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    const/4 p1, 0x1

    return p1
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJJJ)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_c

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_b

    const/16 v4, 0x69

    if-eq v3, v4, :cond_a

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_9

    const/16 v4, 0x77

    const/16 v11, 0x99

    if-eq v3, v4, :cond_8

    const/16 v4, 0x79

    if-eq v3, v4, :cond_7

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, -0x7ffffffffb000000L    # -4.14452303E-316

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v3, 0x4000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    const/16 v3, 0x26

    iput v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v7, 0x80

    const-wide/16 v11, 0x0

    const-wide v3, 0x8028208028000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x2002011800L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v3, 0x100000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, v11}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x3080400000000000L    # 4.490807648649111E-75

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/16 v7, 0x20

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v7, 0x1000

    const-wide/16 v11, 0x0

    const-wide v3, 0x100001800000000L    # 7.291288900095786E-304

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v7, 0x2000

    const-wide/16 v11, 0x0

    const-wide v3, 0x21000080002000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x400090060300000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/32 v3, 0x400000

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/32 v7, 0x8710

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v7, 0x800

    const-wide/16 v11, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x4200000000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0x2000000000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/16 v7, 0x4000

    const-wide/16 v11, 0x0

    const-wide v3, 0x40500000000c0000L    # 64.00000001117587

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v9

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    const/16 v3, 0x94

    iput v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_4
    const-wide/16 v7, 0x0

    const-wide/32 v11, 0x80000

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide/32 v3, 0x20000

    and-long/2addr v3, v9

    cmp-long v3, v3, v7

    if-eqz v3, :cond_6

    const/16 v1, 0x91

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const-wide/32 v3, 0x40000

    and-long/2addr v3, v9

    cmp-long v3, v3, v7

    if-eqz v3, :cond_d

    const/16 v1, 0x92

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v3, 0x1

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_d

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1, v11}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x40000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_d

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1, v11}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/16 v7, 0x4

    const-wide/16 v11, 0x0

    const-wide v3, 0x100010000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v7, 0xa

    const-wide/16 v11, 0x0

    const-wide v3, 0xa00800000000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide v3, 0x400000000000L

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_d

    const/16 v1, 0x6e

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_c
    const-wide v3, 0x80000000L

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_d

    const/16 v1, 0x5f

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_d
    :goto_0
    const/4 v0, 0x1

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x1

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_3(JJ)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "old1",
            "active1"
        }
    .end annotation

    and-long v4, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v6, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v2

    iput v2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x100000000L

    and-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    const/16 v0, 0x60

    invoke-direct {p0, v6, v0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_3(IJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    return v6
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJJJ)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    move-object/from16 v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    iget-object v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_f

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_d

    const-wide/32 v11, 0x8000

    const/16 v4, 0x99

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    const-wide/16 v7, 0x2000

    const-wide/16 v11, 0x0

    const-wide v3, 0x800000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v7, 0x820

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0x8000000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x241002000200800L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/high16 v11, 0x800000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_1

    const/16 v1, 0x3b

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v11, 0x400

    and-long/2addr v11, v5

    cmp-long v3, v11, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x4a

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/32 v3, 0x10180000

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v11, 0x40000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x12

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0x20000000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v11, 0x200000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x21

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v7, 0x1000

    const-wide/16 v11, 0x0

    const-wide v3, 0x3004001000000000L    # 2.1590684942684692E-77

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/16 v14, 0x100

    and-long/2addr v14, v5

    cmp-long v3, v14, v7

    if-eqz v3, :cond_5

    const/16 v3, 0x48

    iput v3, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v0, v13, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    and-long/2addr v11, v5

    cmp-long v3, v11, v7

    if-eqz v3, :cond_6

    const/16 v1, 0x4f

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    :goto_0
    const-wide/16 v7, 0x4200

    const-wide/16 v11, 0x0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v11, 0x4000000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x1a

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x400000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v11, 0x100000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_8

    const/16 v1, 0x2c

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v7, 0x18

    const-wide/16 v11, 0x0

    const-wide v3, 0x12000800002000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x200000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x80020000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v11, 0x80

    and-long/2addr v11, v5

    cmp-long v3, v11, v7

    if-eqz v3, :cond_e

    const/16 v1, 0x47

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_c
    const-wide v11, 0x10000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_e

    const/16 v1, 0x28

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_d
    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_9

    const/16 v1, 0xf

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/32 v11, 0x10000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_a

    const/16 v1, 0x10

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_a
    const-wide/32 v11, 0x2000000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_b

    const/16 v1, 0x19

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v11, -0x8000000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_c

    const/16 v1, 0x3f

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_c
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x100008008001000L    # 7.2920122663988E-304

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v11, 0x2

    and-long/2addr v11, v5

    cmp-long v3, v11, v7

    if-eqz v3, :cond_e

    const/16 v1, 0x41

    invoke-direct {v13, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x400000000020000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_10
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/32 v3, 0x1000000

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_11
    const-wide/16 v7, 0x4

    const-wide/16 v11, 0x0

    const-wide v3, 0xe0404000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :cond_d
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v9

    cmp-long v3, v3, v7

    if-eqz v3, :cond_e

    const/16 v1, 0x93

    invoke-direct {v13, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_e
    :goto_1
    const/4 v0, 0x2

    move-object/from16 p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_f
    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide v3, 0x80000000000L

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x2

    move-object/from16 p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJJJJJ)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1",
            "old2",
            "active2"
        }
    .end annotation

    move-object v8, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long v4, v0, v2

    and-long v6, p11, p9

    or-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v4, 0x4

    :try_start_0
    iget-object v5, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v5}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v5

    iput v5, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x99

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-wide/high16 v9, 0x1000000000000000L

    and-long/2addr v9, v0

    cmp-long v5, v9, v6

    if-eqz v5, :cond_1

    const/16 v5, 0x3c

    iput v5, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v4, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/high16 v4, 0x2000000000000000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v4, 0x20000000000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v4, 0x400000

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v10, 0x100000

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_2

    const/16 v0, 0x14

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v10, 0x80000000L

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_3

    const/16 v0, 0x1f

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v10, 0x20000000000000L

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_4

    const/16 v0, 0x35

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x4

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/32 v10, 0x80000

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_5

    const/16 v0, 0x13

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/16 v10, 0x200

    and-long/2addr v10, v2

    cmp-long v5, v10, v6

    if-eqz v5, :cond_6

    const/16 v0, 0x49

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    const-wide v4, 0x4000080000000000L    # 2.00390625

    const-wide/16 v6, 0x4000

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/high16 v10, 0x100000000000000L

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_7

    const/16 v0, 0x38

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v4, 0xc009000001800L

    const-wide/16 v6, 0x1000

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v4, 0x8000000

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v9, 0x20000000

    and-long/2addr v9, v0

    cmp-long v5, v9, v6

    if-eqz v5, :cond_8

    const/16 v5, 0x1d

    iput v5, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v4, v8, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_8
    const-wide/32 v4, 0x41000000

    const-wide/16 v6, 0x800

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v10, 0x4000

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_c

    const/16 v0, 0xe

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v4, 0x42400000200000L

    const-wide/16 v6, 0x2020

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v10, 0x20000

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_9

    const/16 v0, 0x11

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/high16 v4, 0x400000000000000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v10, 0x10000000

    and-long/2addr v10, v0

    cmp-long v5, v10, v6

    if-eqz v5, :cond_a

    const/16 v0, 0x1c

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v10, 0x8

    and-long/2addr v10, v2

    cmp-long v5, v10, v6

    if-eqz v5, :cond_b

    const/16 v0, 0x43

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b
    const-wide v4, 0x11000800002000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/16 v10, 0x10

    and-long/2addr v10, v2

    cmp-long v5, v10, v6

    if-eqz v5, :cond_c

    const/16 v0, 0x44

    invoke-direct {p0, v4, v0, v9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_c
    :goto_0
    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    move-object p1, p0

    move p2, v4

    move-wide p3, v0

    move-wide/from16 p5, v2

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/high16 v4, 0x280000000000000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide v4, 0xa02000000000L

    const-wide/16 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v2

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    move-object p1, p0

    move p2, v5

    move-wide p3, v0

    move-wide/from16 p5, v2

    move-wide/from16 p7, v6

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJJJ)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x3

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    :try_start_0
    iget-object v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x99

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-wide/16 v10, 0x1000

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_1
    const-wide v10, 0x1000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v3, 0x80c00000000000L

    const-wide/16 v7, 0x1000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/high16 v10, 0x2000000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x3d

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/high16 v3, 0x400000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/high16 v10, 0x8000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x33

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x2000200000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v3, 0x40400000

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const-wide/16 v7, 0x4004

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/high16 v10, 0x200000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x4

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v3

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v3, 0x200000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v3, 0x8000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v10, 0x1000000

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_5

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_5
    const-wide v10, 0x20000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_6

    const/16 v1, 0x29

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    const-wide/16 v10, 0x800

    and-long/2addr v10, v5

    cmp-long v3, v10, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x80000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/high16 v10, 0x4000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_8

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_8
    const-wide/high16 v10, 0x10000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_9

    const/16 v1, 0x34

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/32 v3, 0x8000000

    const-wide/16 v7, 0x2000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/high16 v10, 0x2000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_a

    const/16 v1, 0x31

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_a
    const-wide/high16 v10, 0x40000000000000L

    and-long/2addr v10, v1

    cmp-long v3, v10, v7

    if-eqz v3, :cond_b

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, v4}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v3, 0x1000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v3, 0x2800

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x4

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJJJ)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x4

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x6

    :try_start_0
    iget-object v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x61

    if-eq v3, v4, :cond_e

    const/16 v4, 0x63

    if-eq v3, v4, :cond_d

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_c

    const/16 v4, 0x79

    const/16 v10, 0x99

    if-eq v3, v4, :cond_a

    const/16 v4, 0x65

    if-eq v3, v4, :cond_7

    const/16 v4, 0x66

    if-eq v3, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-wide/32 v3, 0x200000

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/32 v3, 0x400000

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v3, 0x1000000000000L

    const-wide/16 v7, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v3, 0x400000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x2e

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_b

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/high16 v3, 0x400000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_b

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v3, 0x80000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x200000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_8

    const/16 v1, 0x2d

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x800000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_9

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    const-wide v3, 0x4000000800000000L    # 2.0000152587890625

    const-wide/16 v7, 0x2020

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :cond_a
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_b

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b
    :goto_0
    const/4 v0, 0x5

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v3

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_c
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :cond_d
    const-wide v3, 0x2000000800L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :cond_e
    const-wide v3, 0x88000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x5

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJJJ)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x5

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x7

    :try_start_0
    iget-object v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x63

    if-eq v3, v4, :cond_c

    const/16 v4, 0x65

    const/16 v10, 0x99

    if-eq v3, v4, :cond_9

    const/16 v4, 0x69

    if-eq v3, v4, :cond_8

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_6

    const/16 v4, 0x70

    if-eq v3, v4, :cond_4

    const/16 v4, 0x73

    if-eq v3, v4, :cond_2

    const/16 v4, 0x74

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x800

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_5

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x20

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x45

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_5

    const/16 v1, 0x4d

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/high16 v3, 0x80000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_5

    const/16 v1, 0x37

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x6

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v3

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide v3, 0x4400000800000000L    # 3.689376962239581E19

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x80000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    :cond_9
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_a

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v3, 0x4

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_b

    const/16 v1, 0x42

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_b
    const-wide v3, 0x1002000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    :cond_c
    const-wide v3, 0x8000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x6

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa8_0(JJJJ)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x6

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    :try_start_0
    iget-object v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x64

    const/16 v10, 0x99

    if-eq v3, v4, :cond_8

    const/16 v4, 0x65

    if-eq v3, v4, :cond_6

    const/16 v4, 0x69

    if-eq v3, v4, :cond_5

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x74

    if-eq v3, v4, :cond_2

    const/16 v0, 0x76

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x3e

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v3, 0x400000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide v3, 0x8000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x80000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide/high16 v3, 0x1000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_9

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_9
    :goto_0
    const/4 v0, 0x7

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v3

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x7

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0
.end method

.method private jjMoveStringLiteralDfa9_0(JJJJ)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "old0",
            "active0",
            "old1",
            "active1"
        }
    .end annotation

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x7

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    :try_start_0
    iget-object v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v3

    iput v3, v9, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x73

    const/16 v10, 0x99

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7a

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v3, 0x2000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x4e

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v3, 0x80000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x2b

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v3, 0x400000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide v3, 0x800000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1, v10}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    const/16 v0, 0x8

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v3

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x8

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    invoke-direct/range {p1 .. p8}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "kind",
            "state"
        }
    .end annotation

    iput p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result p2

    iput p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJJ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjStopStringLiteralDfa_3(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "kind"
        }
    .end annotation

    iput p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1",
            "active2"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x80

    const/16 v3, 0x5e

    const-wide/high16 v4, 0x400000000000000L

    const-wide v6, 0x80000000L

    const-wide/16 v8, 0x4000

    const/4 v10, 0x1

    const-wide v11, 0x80000000000L

    const/4 v13, 0x2

    const/16 v14, 0x62

    const/16 v15, 0x99

    const/16 v16, -0x1

    const-wide/16 v17, 0x0

    packed-switch p1, :pswitch_data_0

    return v16

    :pswitch_0
    and-long v1, p2, v4

    cmp-long v1, v1, v17

    if-eqz v1, :cond_0

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    return v15

    :cond_0
    return v16

    :pswitch_1
    const-wide v1, 0x2800000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_4

    and-long v1, p4, v8

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    and-long v1, p2, v4

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x9

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    return v15

    :cond_2
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_3

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    return v16

    :cond_4
    :goto_0
    return v15

    :pswitch_2
    const-wide v1, 0x4001008000000000L    # 2.125244140625

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_5

    return v15

    :cond_5
    const-wide v1, 0x400002800000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    and-long v1, p4, v8

    cmp-long v1, v1, v17

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_7

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_7
    return v16

    :cond_8
    :goto_1
    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x8

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    return v15

    :pswitch_3
    const-wide v1, 0x440100a800000000L    # 3.920524213114372E19

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_d

    and-long v1, p4, v8

    cmp-long v1, v1, v17

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const-wide v1, 0x80000000200800L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_c

    const-wide/16 v1, 0x2024

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_b

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_b
    return v16

    :cond_c
    :goto_2
    return v15

    :cond_d
    :goto_3
    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    return v15

    :pswitch_4
    const-wide v1, 0xe00048402000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_13

    const-wide/16 v1, 0x1000

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_f

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_f
    return v16

    :cond_10
    const-wide v1, 0x448100a800200800L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_12

    const-wide/16 v1, 0x6024

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    return v16

    :cond_12
    :goto_4
    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_13
    :goto_5
    return v15

    :pswitch_5
    const-wide v1, 0x4481e0a848602800L    # 1.0553053366127065E22

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_18

    const-wide/16 v1, 0x7024

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_14

    goto :goto_7

    :cond_14
    const-wide v1, 0x225e021001001000L    # 3.845031874486713E-143

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_17

    const-wide/16 v1, 0x800

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_16

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_16
    return v16

    :cond_17
    :goto_6
    return v15

    :cond_18
    :goto_7
    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    return v15

    :pswitch_6
    const-wide v1, 0x46dfe2b809603800L    # 2.586868876071781E33

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_1d

    const-wide/16 v1, 0x7824

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_19

    goto :goto_9

    :cond_19
    const-wide v1, 0x31200000f01a4000L    # 4.527843589346946E-72

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_1c

    const-wide/16 v1, 0x218

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1a

    goto :goto_8

    :cond_1a
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1b

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_1b

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_1b
    return v16

    :cond_1c
    :goto_8
    return v15

    :cond_1d
    :goto_9
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1e

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_1e
    return v15

    :pswitch_7
    const-wide v1, -0x77ffeefdf9fa8000L    # -3.801486713280192E-270

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_23

    const-wide/32 v1, 0x8782

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_1f

    goto :goto_b

    :cond_1f
    const-wide v1, 0x77ffe2b8f97a7800L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_22

    const-wide/16 v1, 0x783c

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_20

    goto :goto_a

    :cond_20
    and-long v1, p2, v11

    cmp-long v1, v1, v17

    if-eqz v1, :cond_21

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v13, :cond_21

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_21
    return v16

    :cond_22
    :goto_a
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_23
    :goto_b
    return v15

    :pswitch_8
    const-wide v1, -0x4c500800800L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_29

    const-wide/32 v1, 0xffbe

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_24

    goto :goto_d

    :cond_24
    and-long v1, p4, v6

    cmp-long v1, v1, v17

    if-eqz v1, :cond_26

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-ge v1, v10, :cond_25

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_25
    return v16

    :cond_26
    const-wide v1, 0x4c100000000L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_28

    const-wide/16 v1, 0x1

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_27

    goto :goto_c

    :cond_27
    return v16

    :cond_28
    :goto_c
    return v15

    :cond_29
    :goto_d
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v13, :cond_2a

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_2a
    return v15

    :pswitch_9
    and-long v4, p4, v6

    cmp-long v4, v4, v17

    if-eqz v4, :cond_2c

    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v10, :cond_2b

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_2b
    return v16

    :cond_2c
    const-wide v3, 0x401800000L

    and-long v3, p2, v3

    cmp-long v3, v3, v17

    if-nez v3, :cond_31

    const-wide/16 v3, 0x40

    and-long v3, p4, v3

    cmp-long v3, v3, v17

    if-eqz v3, :cond_2d

    goto :goto_f

    :cond_2d
    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2e

    const/16 v1, 0x45

    return v1

    :cond_2e
    const-wide v1, -0x401800800L

    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_30

    const-wide/32 v1, 0xffbf

    and-long v1, p4, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_2f

    goto :goto_e

    :cond_2f
    return v16

    :cond_30
    :goto_e
    iget v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v10, :cond_31

    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v10, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_31
    :goto_f
    return v15

    :pswitch_a
    and-long v3, p4, v6

    cmp-long v3, v3, v17

    if-eqz v3, :cond_32

    const/16 v1, 0x98

    return v1

    :cond_32
    const-wide/16 v3, -0x800

    and-long v3, p2, v3

    cmp-long v3, v3, v17

    if-nez v3, :cond_37

    const-wide/32 v3, 0xffff

    and-long v3, p4, v3

    cmp-long v3, v3, v17

    if-eqz v3, :cond_33

    goto :goto_11

    :cond_33
    const-wide v3, 0x600000000000L

    and-long v3, p4, v3

    cmp-long v3, v3, v17

    if-eqz v3, :cond_34

    return v13

    :cond_34
    and-long v1, p2, v1

    cmp-long v1, v1, v17

    if-nez v1, :cond_36

    const-wide/16 v1, 0x1008

    and-long v1, p6, v1

    cmp-long v1, v1, v17

    if-eqz v1, :cond_35

    goto :goto_10

    :cond_35
    return v16

    :cond_36
    :goto_10
    const/16 v1, 0x43

    return v1

    :cond_37
    :goto_11
    iput v14, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    return v15

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_3(IJJ)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "active0",
            "active1"
        }
    .end annotation

    const/16 p2, 0x61

    const-wide/16 v0, 0x0

    const-wide v2, 0x100000000L

    const/4 p3, -0x1

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    return p3

    :cond_0
    and-long/2addr p4, v2

    cmp-long p1, p4, v0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez p1, :cond_1

    iput p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    :cond_1
    return p3

    :cond_2
    and-long/2addr p4, v2

    cmp-long p1, p4, v0

    if-eqz p1, :cond_3

    iput p2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    :cond_3
    return p3
.end method


# virtual methods
.method public MoreLexicalActions()V
    .locals 4

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3, v0}, Lcom/github/javaparser/AbstractCharStream;->getSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v0, v2}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    :goto_0
    return-void
.end method

.method public ReInit(Lcom/github/javaparser/SimpleCharStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    .line 2
    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    .line 4
    invoke-direct {p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/github/javaparser/SimpleCharStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "lexState"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->ReInit(Lcom/github/javaparser/SimpleCharStream;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SkipLexicalActions(Lcom/github/javaparser/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchedToken"
        }
    .end annotation

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lexState"
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    return-void

    :cond_0
    new-instance v0, Lcom/github/javaparser/TokenMgrException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/TokenMgrException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public TokenLexicalActions(Lcom/github/javaparser/Token;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchedToken"
        }
    .end annotation

    iget v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    const/16 v1, 0x96

    const/16 v2, 0x94

    if-eq v0, v2, :cond_1

    const/16 v2, 0x95

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    iput v1, p1, Lcom/github/javaparser/Token;->kind:I

    iput v2, p1, Lcom/github/javaparser/TokenBase;->realKind:I

    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    iput v1, p1, Lcom/github/javaparser/Token;->kind:I

    iput v2, p1, Lcom/github/javaparser/TokenBase;->realKind:I

    iget-object p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->lengthOfMatch:I

    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    if-nez v0, :cond_3

    const/16 v0, 0x62

    iput v0, p1, Lcom/github/javaparser/Token;->kind:I

    :cond_3
    :goto_0
    return-void
.end method

.method public getCommentsCollection()Lcom/github/javaparser/ast/comments/CommentsCollection;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

    return-object v0
.end method

.method public getHomeToken()Lcom/github/javaparser/JavaToken;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lcom/github/javaparser/JavaToken;

    return-object v0
.end method

.method public getNextToken()Lcom/github/javaparser/Token;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :try_start_0
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v7}, Lcom/github/javaparser/AbstractCharStream;->beginToken()C

    move-result v7

    iput v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjimageLen:I

    :goto_1
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    const/16 v8, 0xa

    const v9, 0x7fffffff

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_2

    const/4 v11, 0x3

    if-eq v7, v11, :cond_1

    goto :goto_2

    :cond_1
    iput v9, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    :cond_2
    iput v9, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez v7, :cond_5

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    if-le v7, v8, :cond_5

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    :cond_3
    iput v9, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    if-nez v7, :cond_5

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    if-le v7, v8, :cond_5

    iput v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    goto :goto_2

    :cond_4
    iput v9, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    :cond_5
    :goto_2
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    if-eq v7, v9, :cond_d

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v11, v7, 0x1

    if-ge v11, v5, :cond_6

    iget-object v11, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    sub-int v7, v5, v7

    sub-int/2addr v7, v10

    invoke-virtual {v11, v7}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    :cond_6
    sget-object v7, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoToken:[J

    iget v11, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v12, v11, 0x6

    aget-wide v12, v7, v12

    and-int/lit8 v7, v11, 0x3f

    const-wide/16 v14, 0x1

    shl-long v16, v14, v7

    and-long v12, v12, v16

    const-wide/16 v16, 0x0

    cmp-long v7, v12, v16

    if-eqz v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lcom/github/javaparser/Token;

    move-result-object v1

    iput-object v4, v1, Lcom/github/javaparser/Token;->specialToken:Lcom/github/javaparser/Token;

    invoke-virtual {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->TokenLexicalActions(Lcom/github/javaparser/Token;)V

    sget-object v2, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v6, :cond_7

    iput v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    :cond_7
    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->CommonTokenAction(Lcom/github/javaparser/Token;)V

    return-object v1

    :cond_8
    sget-object v7, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v12, v11, 0x6

    aget-wide v12, v7, v12

    and-int/lit8 v7, v11, 0x3f

    shl-long v18, v14, v7

    and-long v12, v12, v18

    cmp-long v7, v12, v16

    if-eqz v7, :cond_b

    sget-object v7, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v8, v11, 0x6

    aget-wide v8, v7, v8

    and-int/lit8 v7, v11, 0x3f

    shl-long v10, v14, v7

    and-long v7, v8, v10

    cmp-long v7, v7, v16

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lcom/github/javaparser/Token;

    move-result-object v7

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    iput-object v4, v7, Lcom/github/javaparser/Token;->specialToken:Lcom/github/javaparser/Token;

    iput-object v7, v4, Lcom/github/javaparser/Token;->next:Lcom/github/javaparser/Token;

    :goto_3
    invoke-virtual {v0, v7}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->SkipLexicalActions(Lcom/github/javaparser/Token;)V

    move-object v4, v7

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v2}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->SkipLexicalActions(Lcom/github/javaparser/Token;)V

    :goto_4
    sget-object v7, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v8, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v7, v7, v8

    if-eq v7, v6, :cond_0

    iput v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->MoreLexicalActions()V

    sget-object v5, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v7

    if-eq v5, v6, :cond_c

    iput v5, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    :cond_c
    iput v9, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    :try_start_1
    iget-object v5, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v5}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    move-result v5

    iput v5, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    :cond_d
    iget-object v4, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v4}, Lcom/github/javaparser/AbstractCharStream;->getEndLine()I

    move-result v4

    iget-object v6, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v6}, Lcom/github/javaparser/AbstractCharStream;->getEndColumn()I

    move-result v6

    :try_start_2
    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v7}, Lcom/github/javaparser/AbstractCharStream;->readChar()C

    iget-object v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v7, v10}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v12, v3

    move v14, v4

    move v15, v6

    goto :goto_8

    :catch_1
    if-gt v5, v10, :cond_e

    move-object v2, v1

    goto :goto_5

    :cond_e
    iget-object v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/github/javaparser/AbstractCharStream;->getImage()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget v7, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    if-eq v7, v8, :cond_10

    const/16 v8, 0xd

    if-ne v7, v8, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v3, v6, 0x1

    :goto_6
    move v15, v3

    move v14, v4

    move v12, v10

    goto :goto_8

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :goto_8
    if-nez v12, :cond_12

    iget-object v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v2, v10}, Lcom/github/javaparser/AbstractCharStream;->backup(I)V

    if-gt v5, v10, :cond_11

    goto :goto_9

    :cond_11
    iget-object v1, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/github/javaparser/AbstractCharStream;->getImage()Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object/from16 v16, v1

    goto :goto_a

    :cond_12
    move-object/from16 v16, v2

    :goto_a
    new-instance v1, Lcom/github/javaparser/TokenMgrException;

    iget v13, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curLexState:I

    iget v2, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->curChar:I

    const/16 v18, 0x0

    move-object v11, v1

    move/from16 v17, v2

    invoke-direct/range {v11 .. v18}, Lcom/github/javaparser/TokenMgrException;-><init>(ZIIILjava/lang/String;II)V

    throw v1

    :catch_2
    iput v3, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v6, v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjFillToken()Lcom/github/javaparser/Token;

    move-result-object v1

    iput-object v4, v1, Lcom/github/javaparser/Token;->specialToken:Lcom/github/javaparser/Token;

    invoke-direct {v0, v1}, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->CommonTokenAction(Lcom/github/javaparser/Token;)V

    return-object v1
.end method

.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jjFillToken()Lcom/github/javaparser/Token;
    .locals 7

    sget-object v0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/github/javaparser/AbstractCharStream;->getImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/github/javaparser/AbstractCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/github/javaparser/AbstractCharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/github/javaparser/AbstractCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->input_stream:Lcom/github/javaparser/SimpleCharStream;

    invoke-virtual {v4}, Lcom/github/javaparser/AbstractCharStream;->getEndColumn()I

    move-result v4

    iget v5, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5}, Lcom/github/javaparser/Token;->newToken(I)Lcom/github/javaparser/Token;

    move-result-object v5

    iget v6, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->jjmatchedKind:I

    iput v6, v5, Lcom/github/javaparser/Token;->kind:I

    iput-object v0, v5, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    iput v1, v5, Lcom/github/javaparser/Token;->beginLine:I

    iput v3, v5, Lcom/github/javaparser/Token;->endLine:I

    iput v2, v5, Lcom/github/javaparser/Token;->beginColumn:I

    iput v4, v5, Lcom/github/javaparser/Token;->endColumn:I

    return-object v5
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->tokens:Ljava/util/List;

    new-instance v0, Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-direct {v0}, Lcom/github/javaparser/ast/comments/CommentsCollection;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->commentsCollection:Lcom/github/javaparser/ast/comments/CommentsCollection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->homeToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method public setStoreTokens(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeTokens"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->storeTokens:Z

    return-void
.end method

.method public setYieldSupported()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/GeneratedJavaParserTokenManager;->yieldSupported:Z

    return-void
.end method
