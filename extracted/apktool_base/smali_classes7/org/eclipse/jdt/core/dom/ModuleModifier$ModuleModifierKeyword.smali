.class public Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/ModuleModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleModifierKeyword"
.end annotation


# static fields
.field private static final KEYWORDS:Ljava/util/Map;

.field public static final STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

.field public static final TRANSITIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;


# instance fields
.field private flagValue:I

.field private keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    const-string v1, "static"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    new-instance v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    const-string v2, "transitive"

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->TRANSITIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->KEYWORDS:Ljava/util/Map;

    filled-new-array {v0, v1}, [Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->KEYWORDS:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->keyword:Ljava/lang/String;

    iput p2, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->flagValue:I

    return-void
.end method

.method public static fromFlagValue(I)Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->toFlagValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1
.end method

.method public static toKeyword(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;

    return-object p0
.end method


# virtual methods
.method public toFlagValue()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->flagValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
