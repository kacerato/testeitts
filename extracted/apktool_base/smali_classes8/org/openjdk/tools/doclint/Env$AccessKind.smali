.class public final enum Lorg/openjdk/tools/doclint/Env$AccessKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Env;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/Env$AccessKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/Env$AccessKind;

.field public static final enum PACKAGE:Lorg/openjdk/tools/doclint/Env$AccessKind;

.field public static final enum PRIVATE:Lorg/openjdk/tools/doclint/Env$AccessKind;

.field public static final enum PROTECTED:Lorg/openjdk/tools/doclint/Env$AccessKind;

.field public static final enum PUBLIC:Lorg/openjdk/tools/doclint/Env$AccessKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/doclint/Env$AccessKind;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/Env$AccessKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PRIVATE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    new-instance v1, Lorg/openjdk/tools/doclint/Env$AccessKind;

    const-string v2, "PACKAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/Env$AccessKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/Env$AccessKind;->PACKAGE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    new-instance v2, Lorg/openjdk/tools/doclint/Env$AccessKind;

    const-string v3, "PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/Env$AccessKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/Env$AccessKind;->PROTECTED:Lorg/openjdk/tools/doclint/Env$AccessKind;

    new-instance v3, Lorg/openjdk/tools/doclint/Env$AccessKind;

    const-string v4, "PUBLIC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/Env$AccessKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/Env$AccessKind;->PUBLIC:Lorg/openjdk/tools/doclint/Env$AccessKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/doclint/Env$AccessKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Env$AccessKind;->$VALUES:[Lorg/openjdk/tools/doclint/Env$AccessKind;

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

.method public static accepts(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lorg/openjdk/tools/doclint/Env$AccessKind;->values()[Lorg/openjdk/tools/doclint/Env$AccessKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static of(Ljava/util/Set;)Lorg/openjdk/tools/doclint/Env$AccessKind;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;)",
            "Lorg/openjdk/tools/doclint/Env$AccessKind;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/lang/model/element/Modifier;->PUBLIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PUBLIC:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object p0

    :cond_0
    sget-object v0, Lorg/openjdk/javax/lang/model/element/Modifier;->PROTECTED:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PROTECTED:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object p0

    :cond_1
    sget-object v0, Lorg/openjdk/javax/lang/model/element/Modifier;->PRIVATE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PRIVATE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object p0

    :cond_2
    sget-object p0, Lorg/openjdk/tools/doclint/Env$AccessKind;->PACKAGE:Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/Env$AccessKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/Env$AccessKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/Env$AccessKind;->$VALUES:[Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/Env$AccessKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/Env$AccessKind;

    return-object v0
.end method
