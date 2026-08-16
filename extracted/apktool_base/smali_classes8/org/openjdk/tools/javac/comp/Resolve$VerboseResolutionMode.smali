.class final enum Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerboseResolutionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum APPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum DEFERRED_INST:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum FAILURE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum INAPPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum INTERNAL:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum OBJECT_INIT:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum PREDEF:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

.field public static final enum SUCCESS:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;


# instance fields
.field final opt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v1, 0x0

    const-string v2, "success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->SUCCESS:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v2, 0x1

    const-string v3, "failure"

    const-string v4, "FAILURE"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->FAILURE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v3, 0x2

    const-string v4, "applicable"

    const-string v5, "APPLICABLE"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->APPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v4, 0x3

    const-string v5, "inapplicable"

    const-string v6, "INAPPLICABLE"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->INAPPLICABLE:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v4, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v5, 0x4

    const-string v6, "deferred-inference"

    const-string v7, "DEFERRED_INST"

    invoke-direct {v4, v7, v5, v6}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->DEFERRED_INST:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v6, 0x5

    const-string v7, "predef"

    const-string v8, "PREDEF"

    invoke-direct {v5, v8, v6, v7}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->PREDEF:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v6, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v7, 0x6

    const-string v8, "object-init"

    const-string v9, "OBJECT_INIT"

    invoke-direct {v6, v9, v7, v8}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->OBJECT_INIT:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    new-instance v7, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    const/4 v8, 0x7

    const-string v9, "internal"

    const-string v10, "INTERNAL"

    invoke-direct {v7, v10, v8, v9}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->INTERNAL:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    filled-new-array/range {v0 .. v7}, [Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->opt:Ljava/lang/String;

    return-void
.end method

.method public static getVerboseResolutionMode(Lorg/openjdk/tools/javac/util/Options;)Ljava/util/EnumSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Options;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;",
            ">;"
        }
    .end annotation

    const-string v0, "debug.verboseResolution"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "all"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->values()[Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->opt:Ljava/lang/String;

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->opt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    return-object v0
.end method
