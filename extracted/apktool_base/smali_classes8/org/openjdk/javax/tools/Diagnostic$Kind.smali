.class public final enum Lorg/openjdk/javax/tools/Diagnostic$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/tools/Diagnostic$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/tools/Diagnostic$Kind;

.field public static final enum ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

.field public static final enum MANDATORY_WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

.field public static final enum NOTE:Lorg/openjdk/javax/tools/Diagnostic$Kind;

.field public static final enum OTHER:Lorg/openjdk/javax/tools/Diagnostic$Kind;

.field public static final enum WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v2, "WARNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v2, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v3, "MANDATORY_WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v3, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v4, "NOTE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/tools/Diagnostic$Kind;->NOTE:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    new-instance v4, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/tools/Diagnostic$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/tools/Diagnostic$Kind;->OTHER:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->$VALUES:[Lorg/openjdk/javax/tools/Diagnostic$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/tools/Diagnostic$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/tools/Diagnostic$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->$VALUES:[Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/tools/Diagnostic$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0
.end method
