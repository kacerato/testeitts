.class final enum Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WhereClauseKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum CAPTURED:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum INTERSECTION:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

.field public static final enum TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const/4 v1, 0x0

    const-string v2, "where.description.typevar"

    const-string v3, "TYPEVAR"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    new-instance v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const/4 v2, 0x1

    const-string v3, "where.description.captured"

    const-string v4, "CAPTURED"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    new-instance v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    const/4 v3, 0x2

    const-string v4, "where.description.intersection"

    const-string v5, "INTERSECTION"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->$VALUES:[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->$VALUES:[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key:Ljava/lang/String;

    return-object v0
.end method
