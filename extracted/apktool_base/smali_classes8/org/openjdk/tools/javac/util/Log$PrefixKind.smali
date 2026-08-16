.class public final enum Lorg/openjdk/tools/javac/util/Log$PrefixKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrefixKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Log$PrefixKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Log$PrefixKind;

.field public static final enum COMPILER_MISC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

.field public static final enum JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v1, 0x0

    const-string v2, "javac."

    const-string v3, "JAVAC"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/Log$PrefixKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    new-instance v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    const/4 v2, 0x1

    const-string v3, "compiler.misc."

    const-string v4, "COMPILER_MISC"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/Log$PrefixKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->COMPILER_MISC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->$VALUES:[Lorg/openjdk/tools/javac/util/Log$PrefixKind;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Log$PrefixKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Log$PrefixKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->$VALUES:[Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Log$PrefixKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    return-object v0
.end method


# virtual methods
.method public key(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
