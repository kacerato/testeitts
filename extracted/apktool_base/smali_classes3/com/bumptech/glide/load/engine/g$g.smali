.class public final enum Lcom/bumptech/glide/load/engine/g$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/g$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/g$g;

.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/engine/g$g;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/engine/g$g;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/g$g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bumptech/glide/load/engine/g$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/g$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/g$g;

    new-instance v1, Lcom/bumptech/glide/load/engine/g$g;

    const-string v2, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bumptech/glide/load/engine/g$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/g$g;

    new-instance v2, Lcom/bumptech/glide/load/engine/g$g;

    const-string v3, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/g$g;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/bumptech/glide/load/engine/g$g;->DECODE_DATA:Lcom/bumptech/glide/load/engine/g$g;

    filled-new-array {v0, v1, v2}, [Lcom/bumptech/glide/load/engine/g$g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/g$g;->$VALUES:[Lcom/bumptech/glide/load/engine/g$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/g$g;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/g$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/g$g;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/g$g;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/g$g;->$VALUES:[Lcom/bumptech/glide/load/engine/g$g;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/g$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/g$g;

    return-object v0
.end method
