.class public final enum LDj/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDj/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDj/n$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDj/n$a;

.field public static final enum aes128Ccm:LDj/n$a;


# instance fields
.field private final tagValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LDj/n$a;

    sget-object v1, LFk/m0;->f:LFk/m0;

    invoke-virtual {v1}, Loh/j;->L()I

    move-result v1

    const-string v2, "aes128Ccm"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LDj/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDj/n$a;->aes128Ccm:LDj/n$a;

    invoke-static {}, LDj/n$a;->a()[LDj/n$a;

    move-result-object v0

    sput-object v0, LDj/n$a;->$VALUES:[LDj/n$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LDj/n$a;->tagValue:I

    return-void
.end method

.method public static synthetic a()[LDj/n$a;
    .locals 1

    sget-object v0, LDj/n$a;->aes128Ccm:LDj/n$a;

    filled-new-array {v0}, [LDj/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LDj/n$a;
    .locals 1

    const-class v0, LDj/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDj/n$a;

    return-object p0
.end method

.method public static values()[LDj/n$a;
    .locals 1

    sget-object v0, LDj/n$a;->$VALUES:[LDj/n$a;

    invoke-virtual {v0}, [LDj/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDj/n$a;

    return-object v0
.end method
