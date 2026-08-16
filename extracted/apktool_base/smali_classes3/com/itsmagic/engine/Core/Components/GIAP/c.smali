.class public abstract Lcom/itsmagic/engine/Core/Components/GIAP/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "itsmagic.subscription.vip"

.field public static b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Core/Components/GIAP/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v1, "VIP-LIFETIME"

    const/4 v2, -0x1

    const-string v3, "itsmagic.product.lifetime_vip"

    const v4, 0x7f0701d1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v1, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v2, "itsmagic.product.2rs_to_coins"

    const v3, 0x7f07019e

    const-string v4, "COINS"

    const/16 v5, 0x64

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v2, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v6, "itsmagic.product.5rs_to_coins"

    const/16 v7, 0x226

    invoke-direct {v2, v6, v3, v4, v7}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v6, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v7, "itsmagic.product.10rs_to_coins"

    const/16 v8, 0x4b0

    invoke-direct {v6, v7, v3, v4, v8}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v7, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v8, "itsmagic.product.15rs_to_coins"

    const/16 v9, 0x6a4

    invoke-direct {v7, v8, v3, v4, v9}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v8, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v9, "itsmagic.product.30rs_to_coins"

    const/16 v10, 0xdac

    invoke-direct {v8, v9, v3, v4, v10}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v9, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v10, "itsmagic.product.50rs_to_coins"

    const/16 v11, 0x1b58

    invoke-direct {v9, v10, v3, v4, v11}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v10, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v3, "itsmagic.product.1ds_to_funds"

    const v4, 0x7f07019d

    const-string v11, "FUNDS"

    invoke-direct {v10, v3, v4, v11, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v12, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v3, "itsmagic.product.5ds_to_funds"

    const/16 v5, 0x1f4

    invoke-direct {v12, v3, v4, v11, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v13, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v3, "itsmagic.product.15ds_to_funds"

    const/16 v5, 0x5dc

    invoke-direct {v13, v3, v4, v11, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v14, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const-string v3, "itsmagic.product.30ds_to_funds"

    const/16 v5, 0xbb8

    invoke-direct {v14, v3, v4, v11, v5}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance v11, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-string v16, "itsmagic.subscription.vip"

    const v17, 0x7f0701d1

    const-string v18, "VIP-SUB"

    move-object v15, v11

    invoke-direct/range {v15 .. v20}, Lcom/itsmagic/engine/Core/Components/GIAP/d;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    filled-new-array/range {v0 .. v11}, [Lcom/itsmagic/engine/Core/Components/GIAP/d;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/c;->c:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/c;->b:[Lcom/itsmagic/engine/Core/Components/GIAP/d;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    sget-object v2, Lcom/itsmagic/engine/Core/Components/GIAP/c;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/GIAP/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/GIAP/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Core/Components/GIAP/d;

    return-object p0
.end method
