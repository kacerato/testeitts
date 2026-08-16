.class public final enum Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/lang/model/element/ModuleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectiveKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

.field public static final enum EXPORTS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

.field public static final enum OPENS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

.field public static final enum PROVIDES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

.field public static final enum REQUIRES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

.field public static final enum USES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-string v1, "REQUIRES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->REQUIRES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    new-instance v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-string v2, "EXPORTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->EXPORTS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    new-instance v2, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-string v3, "OPENS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->OPENS:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    new-instance v3, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-string v4, "USES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->USES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    new-instance v4, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    const-string v5, "PROVIDES"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->PROVIDES:Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    .locals 1

    const-class v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->$VALUES:[Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    invoke-virtual {v0}, [Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/lang/model/element/ModuleElement$DirectiveKind;

    return-object v0
.end method
