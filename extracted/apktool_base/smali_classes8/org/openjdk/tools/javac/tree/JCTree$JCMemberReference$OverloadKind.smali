.class public final enum Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverloadKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

.field public static final enum OVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

.field public static final enum UNOVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    const-string v1, "OVERLOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->OVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    new-instance v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    const-string v2, "UNOVERLOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->UNOVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    return-object v0
.end method
