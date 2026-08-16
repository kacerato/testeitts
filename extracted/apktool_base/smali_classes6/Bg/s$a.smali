.class public final enum LBg/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LBg/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LBg/s$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LBg/s$a;

.field public static final enum INCLUDE_LINKED_FILE_ONLY:LBg/s$a;

.field public static final enum INCLUDE_LINK_AND_LINKED_FILE:LBg/s$a;

.field public static final enum INCLUDE_LINK_ONLY:LBg/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LBg/s$a;

    const-string v1, "INCLUDE_LINK_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LBg/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LBg/s$a;->INCLUDE_LINK_ONLY:LBg/s$a;

    new-instance v1, LBg/s$a;

    const-string v2, "INCLUDE_LINKED_FILE_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LBg/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LBg/s$a;->INCLUDE_LINKED_FILE_ONLY:LBg/s$a;

    new-instance v2, LBg/s$a;

    const-string v3, "INCLUDE_LINK_AND_LINKED_FILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LBg/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LBg/s$a;->INCLUDE_LINK_AND_LINKED_FILE:LBg/s$a;

    filled-new-array {v0, v1, v2}, [LBg/s$a;

    move-result-object v0

    sput-object v0, LBg/s$a;->$VALUES:[LBg/s$a;

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

.method public static valueOf(Ljava/lang/String;)LBg/s$a;
    .locals 1

    const-class v0, LBg/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBg/s$a;

    return-object p0
.end method

.method public static values()[LBg/s$a;
    .locals 1

    sget-object v0, LBg/s$a;->$VALUES:[LBg/s$a;

    invoke-virtual {v0}, [LBg/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBg/s$a;

    return-object v0
.end method
