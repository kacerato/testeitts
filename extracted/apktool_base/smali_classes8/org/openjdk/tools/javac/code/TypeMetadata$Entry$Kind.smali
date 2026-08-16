.class public final enum Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

.field public static final enum ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    const-string v1, "ANNOTATIONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    return-object v0
.end method
