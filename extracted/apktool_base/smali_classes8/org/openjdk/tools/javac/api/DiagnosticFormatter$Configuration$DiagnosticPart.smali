.class public final enum Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

.field public static final enum DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

.field public static final enum JLS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

.field public static final enum SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

.field public static final enum SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

.field public static final enum SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const-string v1, "SUMMARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    new-instance v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const-string v2, "DETAILS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    new-instance v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const-string v3, "SOURCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    new-instance v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const-string v4, "SUBDIAGNOSTICS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    new-instance v4, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const-string v5, "JLS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->JLS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->$VALUES:[Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->$VALUES:[Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    return-object v0
.end method
