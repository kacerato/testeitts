.class public final enum Lorg/openjdk/tools/javac/code/Source;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Source;

.field public static final DEFAULT:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_2:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_3:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_4:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_5:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_6:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_7:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_8:Lorg/openjdk/tools/javac/code/Source;

.field public static final enum JDK1_9:Lorg/openjdk/tools/javac/code/Source;

.field private static final MAX:Lorg/openjdk/tools/javac/code/Source;

.field public static final MIN:Lorg/openjdk/tools/javac/code/Source;

.field private static final sourceKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/Source;",
            ">;"
        }
    .end annotation
.end field

.field private static final tab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/code/Source;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/openjdk/tools/javac/code/Source;

    const-string v1, "1.2"

    const-string v2, "JDK1_2"

    const/4 v8, 0x0

    invoke-direct {v0, v2, v8, v1}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_2:Lorg/openjdk/tools/javac/code/Source;

    new-instance v1, Lorg/openjdk/tools/javac/code/Source;

    const-string v2, "1.3"

    const-string v3, "JDK1_3"

    const/4 v9, 0x1

    invoke-direct {v1, v3, v9, v2}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Source;->JDK1_3:Lorg/openjdk/tools/javac/code/Source;

    new-instance v2, Lorg/openjdk/tools/javac/code/Source;

    const/4 v3, 0x2

    const-string v4, "1.4"

    const-string v5, "JDK1_4"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Source;->JDK1_4:Lorg/openjdk/tools/javac/code/Source;

    new-instance v3, Lorg/openjdk/tools/javac/code/Source;

    const/4 v4, 0x3

    const-string v5, "1.5"

    const-string v6, "JDK1_5"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Source;->JDK1_5:Lorg/openjdk/tools/javac/code/Source;

    new-instance v4, Lorg/openjdk/tools/javac/code/Source;

    const/4 v5, 0x4

    const-string v6, "1.6"

    const-string v7, "JDK1_6"

    invoke-direct {v4, v7, v5, v6}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Source;->JDK1_6:Lorg/openjdk/tools/javac/code/Source;

    new-instance v5, Lorg/openjdk/tools/javac/code/Source;

    const/4 v6, 0x5

    const-string v7, "1.7"

    const-string v10, "JDK1_7"

    invoke-direct {v5, v10, v6, v7}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    new-instance v6, Lorg/openjdk/tools/javac/code/Source;

    const/4 v7, 0x6

    const-string v10, "1.8"

    const-string v11, "JDK1_8"

    invoke-direct {v6, v11, v7, v10}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    new-instance v7, Lorg/openjdk/tools/javac/code/Source;

    const/4 v10, 0x7

    const-string v11, "1.9"

    const-string v12, "JDK1_9"

    invoke-direct {v7, v12, v10, v11}, Lorg/openjdk/tools/javac/code/Source;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    filled-new-array/range {v0 .. v7}, [Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Source;->$VALUES:[Lorg/openjdk/tools/javac/code/Source;

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Source;->sourceKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Source;->tab:Ljava/util/Map;

    invoke-static {}, Lorg/openjdk/tools/javac/code/Source;->values()[Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v8, v1, :cond_0

    aget-object v2, v0, v8

    sget-object v3, Lorg/openjdk/tools/javac/code/Source;->tab:Ljava/util/Map;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->tab:Ljava/util/Map;

    const-string v1, "5"

    sget-object v2, Lorg/openjdk/tools/javac/code/Source;->JDK1_5:Lorg/openjdk/tools/javac/code/Source;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/openjdk/tools/javac/code/Source;->JDK1_6:Lorg/openjdk/tools/javac/code/Source;

    const-string v2, "6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "7"

    sget-object v3, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    const-string v3, "8"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "9"

    sget-object v4, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lorg/openjdk/tools/javac/code/Source;->MIN:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {}, Lorg/openjdk/tools/javac/code/Source;->values()[Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/code/Source;->values()[Lorg/openjdk/tools/javac/code/Source;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v9

    aget-object v0, v0, v1

    sput-object v0, Lorg/openjdk/tools/javac/code/Source;->MAX:Lorg/openjdk/tools/javac/code/Source;

    sput-object v2, Lorg/openjdk/tools/javac/code/Source;->DEFAULT:Lorg/openjdk/tools/javac/code/Source;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->sourceKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Source;

    if-nez v1, :cond_2

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->SOURCE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/Source;->DEFAULT:Lorg/openjdk/tools/javac/code/Source;

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Source;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->tab:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Source;

    return-object p0
.end method

.method public static toSourceVersion(Lorg/openjdk/tools/javac/code/Source;)Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source$1;->$SwitchMap$com$sun$tools$javac$code$Source:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_9:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_7:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_6:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_5:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_4:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_3:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_2:Lorg/openjdk/javax/lang/model/SourceVersion;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Source;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Source;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Source;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->$VALUES:[Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Source;

    return-object v0
.end method


# virtual methods
.method public allowAnnotationsAfterTypeParams()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowBinaryLiterals()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowDefaultMethods()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowDeprecationOnImport()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowDiamond()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowDiamondWithAnonymousClassCreation()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowEffectivelyFinalInInnerClasses()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowEffectivelyFinalVariablesInTryWithResources()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowFunctionalInterfaceMostSpecific()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowGraphInference()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowImprovedCatchAnalysis()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowImprovedRethrowAnalysis()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowIntersectionTypesInCast()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowLambda()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowMethodReferences()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowModules()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowMulticatch()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowObjectToPrimitiveCast()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPoly()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPostApplicabilityVarargsAccessCheck()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPrivateInterfaceMethods()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowPrivateSafeVarargs()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowRepeatedAnnotations()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowSimplifiedVarargs()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowStaticInterfaceMethods()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowStrictMethodClashCheck()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowStringsInSwitch()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowTryWithResources()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowTypeAnnotations()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowUnderscoreIdentifier()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowUnderscoresInLiterals()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enforceThisDotInit()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mapCapturesToBounds()Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiredTarget()Lorg/openjdk/tools/javac/jvm/Target;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_9:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_8:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_8:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_7:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_7:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_6:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_6:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_3
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_5:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_5:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_4
    sget-object v0, Lorg/openjdk/tools/javac/code/Source;->JDK1_4:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_5

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_4:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0

    :cond_5
    sget-object v0, Lorg/openjdk/tools/javac/jvm/Target;->JDK1_1:Lorg/openjdk/tools/javac/jvm/Target;

    return-object v0
.end method
