.class public final enum Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARRAY_CONTENTS:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum CAST:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum EXCEPTION:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum FIELD:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum INSTANCEOF:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum LOCAL_VARIABLE:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum NEW:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum PARAMETER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum RECEIVER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum RETURN_TYPE:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum TYPE_ARGUMENT:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum TYPE_BOUND:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum TYPE_PARAMETER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

.field public static final enum UNKNOWN:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v1, "PARAMETER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->PARAMETER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v2, "RETURN_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->RETURN_TYPE:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v2, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v3, "FIELD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->FIELD:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v3, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v4, "TYPE_PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->TYPE_PARAMETER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v4, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v5, "TYPE_BOUND"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->TYPE_BOUND:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v5, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v6, "TYPE_ARGUMENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->TYPE_ARGUMENT:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v6, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v7, "ARRAY_CONTENTS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->ARRAY_CONTENTS:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v7, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v8, "LOCAL_VARIABLE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->LOCAL_VARIABLE:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v8, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v9, "CAST"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->CAST:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v9, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v10, "INSTANCEOF"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->INSTANCEOF:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v10, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v11, "NEW"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->NEW:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v11, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v12, "RECEIVER"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->RECEIVER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v12, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v13, "EXCEPTION"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->EXCEPTION:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v13, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v14, "OTHER"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->OTHER:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    new-instance v14, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const-string v15, "UNKNOWN"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->UNKNOWN:Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    move-object/from16 v13, v16

    filled-new-array/range {v0 .. v14}, [Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->ENUM$VALUES:[Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;->ENUM$VALUES:[Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
