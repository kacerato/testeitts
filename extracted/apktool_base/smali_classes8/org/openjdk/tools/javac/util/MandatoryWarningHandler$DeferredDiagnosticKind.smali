.class final enum Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/MandatoryWarningHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeferredDiagnosticKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum ADDITIONAL_IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum ADDITIONAL_IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

.field public static final enum IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const/4 v1, 0x0

    const-string v2, ".filename"

    const-string v3, "IN_FILE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    new-instance v1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const/4 v2, 0x1

    const-string v3, ".filename.additional"

    const-string v4, "ADDITIONAL_IN_FILE"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILE:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    new-instance v2, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const/4 v3, 0x2

    const-string v4, ".plural"

    const-string v5, "IN_FILES"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    new-instance v3, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    const/4 v4, 0x3

    const-string v5, ".plural.additional"

    const-string v6, "ADDITIONAL_IN_FILES"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->ADDITIONAL_IN_FILES:Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->$VALUES:[Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->$VALUES:[Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;

    return-object v0
.end method


# virtual methods
.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/MandatoryWarningHandler$DeferredDiagnosticKind;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
