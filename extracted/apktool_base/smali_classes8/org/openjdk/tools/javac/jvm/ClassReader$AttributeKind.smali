.class public final enum Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttributeKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

.field public static final enum MEMBER:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->CLASS:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    const-string v2, "MEMBER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->MEMBER:Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->$VALUES:[Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->$VALUES:[Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/ClassReader$AttributeKind;

    return-object v0
.end method
