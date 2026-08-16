.class public abstract enum Lorg/openjdk/tools/sjavac/options/Option;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/sjavac/options/Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum CLASSPATH:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum CLASS_PATH:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum COMPARE_FOUND_SOURCES:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum COPY:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum CP:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum D:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum H:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum I:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum IMPLICIT:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum J:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum LOG:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum MODULE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum P:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum PERMIT_ARTIFACT:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum PERMIT_SOURCES_WITHOUT_PACKAGE:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum PERMIT_UNIDENTIFIED_ARTIFACTS:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum S:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum SERVER:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum SOURCEPATH:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum SOURCE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum SRC:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum STARTSERVER:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum STATE_DIR:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum TR:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum VERBOSE:Lorg/openjdk/tools/sjavac/options/Option;

.field public static final enum X:Lorg/openjdk/tools/sjavac/options/Option;


# instance fields
.field public final arg:Ljava/lang/String;

.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Lorg/openjdk/tools/sjavac/options/Option$1;

    const-string v1, "-src"

    const-string v2, "Location of source files to be compiled"

    const-string v3, "SRC"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjdk/tools/sjavac/options/Option$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/sjavac/options/Option;->SRC:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v1, Lorg/openjdk/tools/sjavac/options/Option$2;

    const-string v2, "--source-path"

    const-string v3, "Specify search path for sources."

    const-string v5, "SOURCE_PATH"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/openjdk/tools/sjavac/options/Option$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/sjavac/options/Option;->SOURCE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v2, Lorg/openjdk/tools/sjavac/options/Option$3;

    const-string v3, "-sourcepath"

    const-string v5, "An alias for -sourcepath"

    const-string v7, "SOURCEPATH"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lorg/openjdk/tools/sjavac/options/Option$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/sjavac/options/Option;->SOURCEPATH:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v3, Lorg/openjdk/tools/sjavac/options/Option$4;

    const-string v5, "--module-path"

    const-string v7, "Specify search path for modules."

    const-string v9, "MODULE_PATH"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lorg/openjdk/tools/sjavac/options/Option$4;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/sjavac/options/Option;->MODULE_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v5, Lorg/openjdk/tools/sjavac/options/Option$5;

    const-string v7, "-p"

    const-string v9, "An alias for --module-path"

    const-string v11, "P"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lorg/openjdk/tools/sjavac/options/Option$5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/openjdk/tools/sjavac/options/Option;->P:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v7, Lorg/openjdk/tools/sjavac/options/Option$6;

    const-string v9, "--class-path"

    const-string v11, "Specify search path for classes."

    const-string v13, "CLASS_PATH"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lorg/openjdk/tools/sjavac/options/Option$6;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/openjdk/tools/sjavac/options/Option;->CLASS_PATH:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v9, Lorg/openjdk/tools/sjavac/options/Option$7;

    const-string v11, "-classpath"

    const-string v13, "An alias for -classpath."

    const-string v15, "CLASSPATH"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lorg/openjdk/tools/sjavac/options/Option$7;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/openjdk/tools/sjavac/options/Option;->CLASSPATH:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v11, Lorg/openjdk/tools/sjavac/options/Option$8;

    const-string v13, "-cp"

    const-string v15, "An alias for -classpath"

    const-string v14, "CP"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lorg/openjdk/tools/sjavac/options/Option$8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lorg/openjdk/tools/sjavac/options/Option;->CP:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v13, Lorg/openjdk/tools/sjavac/options/Option$9;

    const-string v14, "-x"

    const-string v15, "Exclude files matching the given pattern"

    const-string v12, "X"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$9;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lorg/openjdk/tools/sjavac/options/Option;->X:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v12, Lorg/openjdk/tools/sjavac/options/Option$10;

    const-string v14, "-i"

    const-string v15, "Include only files matching the given pattern"

    const-string v10, "I"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$10;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lorg/openjdk/tools/sjavac/options/Option;->I:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v10, Lorg/openjdk/tools/sjavac/options/Option$11;

    const-string v14, "-tr"

    const-string v15, "Translate resources"

    const-string v8, "TR"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$11;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/openjdk/tools/sjavac/options/Option;->TR:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v8, Lorg/openjdk/tools/sjavac/options/Option$12;

    const-string v14, "-copy"

    const-string v15, "Copy resources"

    const-string v6, "COPY"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$12;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/sjavac/options/Option;->COPY:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$13;

    const-string v14, "-j"

    const-string v15, "Number of cores"

    const-string v4, "J"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$13;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->J:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v4, Lorg/openjdk/tools/sjavac/options/Option$14;

    const-string v14, "--server:"

    const-string v15, "Specify server configuration file of running server"

    const-string v8, "SERVER"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$14;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->SERVER:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v8, Lorg/openjdk/tools/sjavac/options/Option$15;

    const-string v14, "--startserver:"

    const-string v15, "Start server and use the given configuration file"

    const-string v6, "STARTSERVER"

    move-object/from16 v18, v4

    const/16 v4, 0xe

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$15;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/sjavac/options/Option;->STARTSERVER:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$16;

    const-string v14, "-implicit:"

    const-string v15, "Specify how to treat implicitly referenced source code"

    const-string v4, "IMPLICIT"

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$16;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->IMPLICIT:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v4, Lorg/openjdk/tools/sjavac/options/Option$17;

    const-string v14, "--log="

    const-string v15, "Specify logging level"

    const-string v8, "LOG"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$17;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->LOG:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v8, Lorg/openjdk/tools/sjavac/options/Option$18;

    const-string v14, "-verbose"

    const-string v15, "Set verbosity level to \"info\""

    const-string v6, "VERBOSE"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$18;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/sjavac/options/Option;->VERBOSE:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$19;

    const-string v14, "--permit-artifact="

    const-string v15, "Allow this artifact in destination directory"

    const-string v4, "PERMIT_ARTIFACT"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$19;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_ARTIFACT:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v4, Lorg/openjdk/tools/sjavac/options/Option$20;

    const-string v14, "--permit-unidentified-artifacts"

    const-string v15, "Allow unidentified artifacts in destination directory"

    const-string v8, "PERMIT_UNIDENTIFIED_ARTIFACTS"

    move-object/from16 v23, v6

    const/16 v6, 0x13

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$20;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_UNIDENTIFIED_ARTIFACTS:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v8, Lorg/openjdk/tools/sjavac/options/Option$21;

    const-string v14, "--permit-sources-without-package"

    const-string v15, "Permit sources in the default package"

    const-string v6, "PERMIT_SOURCES_WITHOUT_PACKAGE"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v8, v6, v4, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$21;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/openjdk/tools/sjavac/options/Option;->PERMIT_SOURCES_WITHOUT_PACKAGE:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$22;

    const-string v14, "--compare-found-sources"

    const-string v15, "Compare found sources with given sources"

    const-string v4, "COMPARE_FOUND_SOURCES"

    move-object/from16 v25, v8

    const/16 v8, 0x15

    invoke-direct {v6, v4, v8, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$22;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->COMPARE_FOUND_SOURCES:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v4, Lorg/openjdk/tools/sjavac/options/Option$23;

    const-string v14, "-d"

    const-string v15, "Output destination directory"

    const-string v8, "D"

    move-object/from16 v26, v6

    const/16 v6, 0x16

    invoke-direct {v4, v8, v6, v14, v15}, Lorg/openjdk/tools/sjavac/options/Option$23;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->D:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$24;

    const-string v8, "-s"

    const-string v14, "Directory for generated sources"

    const-string v15, "S"

    move-object/from16 v27, v4

    const/16 v4, 0x17

    invoke-direct {v6, v15, v4, v8, v14}, Lorg/openjdk/tools/sjavac/options/Option$24;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->S:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v4, Lorg/openjdk/tools/sjavac/options/Option$25;

    const-string v8, "-h"

    const-string v14, "Directory for header files"

    const-string v15, "H"

    move-object/from16 v28, v6

    const/16 v6, 0x18

    invoke-direct {v4, v15, v6, v8, v14}, Lorg/openjdk/tools/sjavac/options/Option$25;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->H:Lorg/openjdk/tools/sjavac/options/Option;

    new-instance v6, Lorg/openjdk/tools/sjavac/options/Option$26;

    const-string v8, "--state-dir="

    const-string v14, "Directory used to store sjavac state and log files."

    const-string v15, "STATE_DIR"

    move-object/from16 v29, v4

    const/16 v4, 0x19

    invoke-direct {v6, v15, v4, v8, v14}, Lorg/openjdk/tools/sjavac/options/Option$26;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/sjavac/options/Option;->STATE_DIR:Lorg/openjdk/tools/sjavac/options/Option;

    const/16 v4, 0x1a

    new-array v4, v4, [Lorg/openjdk/tools/sjavac/options/Option;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v5, v4, v0

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    aput-object v9, v4, v0

    const/4 v0, 0x7

    aput-object v11, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v12, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    const/16 v0, 0x14

    aput-object v25, v4, v0

    const/16 v0, 0x15

    aput-object v26, v4, v0

    const/16 v0, 0x16

    aput-object v27, v4, v0

    const/16 v0, 0x17

    aput-object v28, v4, v0

    const/16 v0, 0x18

    aput-object v29, v4, v0

    const/16 v0, 0x19

    aput-object v6, v4, v0

    sput-object v4, Lorg/openjdk/tools/sjavac/options/Option;->$VALUES:[Lorg/openjdk/tools/sjavac/options/Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lorg/openjdk/tools/sjavac/options/Option;->description:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/openjdk/tools/sjavac/options/Option$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/sjavac/options/Option;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/options/Option;
    .locals 1

    const-class v0, Lorg/openjdk/tools/sjavac/options/Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/sjavac/options/Option;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/sjavac/options/Option;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/options/Option;->$VALUES:[Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {v0}, [Lorg/openjdk/tools/sjavac/options/Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/sjavac/options/Option;

    return-object v0
.end method


# virtual methods
.method public getFileArg(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;ZZ)Ljava/nio/file/Path;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be followed by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "a file or directory."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "a file."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "a directory."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->reportError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File or directory must be acceptable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getFileListArg(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/options/ArgumentIterator;",
            "Lorg/openjdk/tools/sjavac/options/OptionHelper;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be followed by a list of files separated by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->reportError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getFilePatternArg(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be followed by a glob pattern."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/sjavac/options/OptionHelper;->reportError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->next()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasOption()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final processCurrent(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/ArgumentIterator;->current()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/sjavac/options/Option;->hasOption()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/sjavac/options/Option;->processMatching(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract processMatching(Lorg/openjdk/tools/sjavac/options/ArgumentIterator;Lorg/openjdk/tools/sjavac/options/OptionHelper;)V
.end method
