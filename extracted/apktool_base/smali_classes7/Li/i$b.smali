.class public final enum LLi/i$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/i$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/i$b;

.field public static final enum ascon128:LLi/i$b;

.field public static final enum ascon128a:LLi/i$b;

.field public static final enum ascon80pq:LLi/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/i$b;

    const-string v1, "ascon80pq"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/i$b;->ascon80pq:LLi/i$b;

    new-instance v0, LLi/i$b;

    const-string v1, "ascon128a"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/i$b;->ascon128a:LLi/i$b;

    new-instance v0, LLi/i$b;

    const-string v1, "ascon128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LLi/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/i$b;->ascon128:LLi/i$b;

    invoke-static {}, LLi/i$b;->a()[LLi/i$b;

    move-result-object v0

    sput-object v0, LLi/i$b;->$VALUES:[LLi/i$b;

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

.method public static synthetic a()[LLi/i$b;
    .locals 3

    sget-object v0, LLi/i$b;->ascon80pq:LLi/i$b;

    sget-object v1, LLi/i$b;->ascon128a:LLi/i$b;

    sget-object v2, LLi/i$b;->ascon128:LLi/i$b;

    filled-new-array {v0, v1, v2}, [LLi/i$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/i$b;
    .locals 1

    const-class v0, LLi/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/i$b;

    return-object p0
.end method

.method public static values()[LLi/i$b;
    .locals 1

    sget-object v0, LLi/i$b;->$VALUES:[LLi/i$b;

    invoke-virtual {v0}, [LLi/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/i$b;

    return-object v0
.end method
