.class public final enum LLi/U$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/U$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/U$b;

.field public static final enum pb128:LLi/U$b;

.field public static final enum pb32:LLi/U$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/U$b;

    const-string v1, "pb32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/U$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/U$b;->pb32:LLi/U$b;

    new-instance v0, LLi/U$b;

    const-string v1, "pb128"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/U$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/U$b;->pb128:LLi/U$b;

    invoke-static {}, LLi/U$b;->a()[LLi/U$b;

    move-result-object v0

    sput-object v0, LLi/U$b;->$VALUES:[LLi/U$b;

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

.method public static synthetic a()[LLi/U$b;
    .locals 2

    sget-object v0, LLi/U$b;->pb32:LLi/U$b;

    sget-object v1, LLi/U$b;->pb128:LLi/U$b;

    filled-new-array {v0, v1}, [LLi/U$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/U$b;
    .locals 1

    const-class v0, LLi/U$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/U$b;

    return-object p0
.end method

.method public static values()[LLi/U$b;
    .locals 1

    sget-object v0, LLi/U$b;->$VALUES:[LLi/U$b;

    invoke-virtual {v0}, [LLi/U$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/U$b;

    return-object v0
.end method
