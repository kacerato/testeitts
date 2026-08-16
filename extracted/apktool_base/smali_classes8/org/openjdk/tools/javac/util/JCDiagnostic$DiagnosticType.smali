.class public final enum Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum NOTE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

.field public static final enum WARNING:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v1, 0x0

    const-string v2, "misc"

    const-string v3, "FRAGMENT"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    new-instance v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v2, 0x1

    const-string v3, "note"

    const-string v4, "NOTE"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->NOTE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    new-instance v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v3, 0x2

    const-string v4, "warn"

    const-string v5, "WARNING"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->WARNING:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    new-instance v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v4, 0x3

    const-string v5, "err"

    const-string v6, "ERROR"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->$VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->$VALUES:[Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object v0
.end method
