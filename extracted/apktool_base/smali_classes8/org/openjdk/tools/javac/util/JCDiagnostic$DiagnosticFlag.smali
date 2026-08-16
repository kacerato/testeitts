.class public final enum Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum MULTIPLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum NON_DEFERRABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum RESOLVE_ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

.field public static final enum SYNTAX:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v1, "MANDATORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v2, "RESOLVE_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RESOLVE_ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v3, "SYNTAX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v4, "RECOVERABLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v4, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v5, "NON_DEFERRABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->NON_DEFERRABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v5, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v6, "COMPRESSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v6, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v7, "MULTIPLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MULTIPLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    new-instance v7, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v8, "SOURCE_LEVEL"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    filled-new-array/range {v0 .. v7}, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->$VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->$VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    return-object v0
.end method
