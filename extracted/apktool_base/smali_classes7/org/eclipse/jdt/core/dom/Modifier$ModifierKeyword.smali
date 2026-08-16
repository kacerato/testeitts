.class public Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifierKeyword"
.end annotation


# static fields
.field public static final ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final DEFAULT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field private static final KEYWORDS:Ljava/util/Map;

.field public static final NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

.field public static final VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;


# instance fields
.field private flagValue:I

.field private keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v4, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v0, "abstract"

    const/16 v1, 0x400

    invoke-direct {v4, v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v5, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v0, "final"

    const/16 v1, 0x10

    invoke-direct {v5, v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v6, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v0, "native"

    const/16 v1, 0x100

    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v2, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v0, "private"

    const/4 v1, 0x2

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v0, "protected"

    const/4 v3, 0x4

    invoke-direct {v1, v0, v3}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v3, "public"

    const/4 v7, 0x1

    invoke-direct {v0, v3, v7}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v3, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v7, "static"

    const/16 v8, 0x8

    invoke-direct {v3, v7, v8}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v10, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v7, "strictfp"

    const/16 v8, 0x800

    invoke-direct {v10, v7, v8}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v7, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v8, "synchronized"

    const/16 v9, 0x20

    invoke-direct {v7, v8, v9}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v8, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v9, "transient"

    const/16 v11, 0x80

    invoke-direct {v8, v9, v11}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v9, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v11, "volatile"

    const/16 v12, 0x40

    invoke-direct {v9, v11, v12}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v11, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    const-string v12, "default"

    const/high16 v13, 0x10000

    invoke-direct {v11, v12, v13}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->DEFAULT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    new-instance v12, Ljava/util/HashMap;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    sput-object v12, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->KEYWORDS:Ljava/util/Map;

    filled-new-array/range {v0 .. v11}, [Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->KEYWORDS:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->keyword:Ljava/lang/String;

    iput p2, p0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->flagValue:I

    return-void
.end method

.method public static fromFlagValue(I)Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->KEYWORDS:Ljava/util/Map;

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

    check-cast v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->toFlagValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1
.end method

.method public static toKeyword(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->KEYWORDS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    return-object p0
.end method


# virtual methods
.method public toFlagValue()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->flagValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
