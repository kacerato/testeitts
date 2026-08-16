.class public final enum Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/source/tree/MemberReferenceTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

.field public static final enum INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

.field public static final enum NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    const-string v1, "INVOKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    new-instance v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    const-string v2, "NEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    filled-new-array {v0, v1}, [Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->$VALUES:[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
    .locals 1

    const-class v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;
    .locals 1

    sget-object v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->$VALUES:[Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    invoke-virtual {v0}, [Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    return-object v0
.end method
