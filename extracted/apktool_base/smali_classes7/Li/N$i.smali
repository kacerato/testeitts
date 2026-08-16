.class public final enum LLi/N$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/N$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/N$i;

.field public static final enum ISAP_A_128:LLi/N$i;

.field public static final enum ISAP_A_128A:LLi/N$i;

.field public static final enum ISAP_K_128:LLi/N$i;

.field public static final enum ISAP_K_128A:LLi/N$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/N$i;

    const-string v1, "ISAP_A_128A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/N$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/N$i;->ISAP_A_128A:LLi/N$i;

    new-instance v0, LLi/N$i;

    const-string v1, "ISAP_K_128A"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/N$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/N$i;->ISAP_K_128A:LLi/N$i;

    new-instance v0, LLi/N$i;

    const-string v1, "ISAP_A_128"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LLi/N$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/N$i;->ISAP_A_128:LLi/N$i;

    new-instance v0, LLi/N$i;

    const-string v1, "ISAP_K_128"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LLi/N$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/N$i;->ISAP_K_128:LLi/N$i;

    invoke-static {}, LLi/N$i;->a()[LLi/N$i;

    move-result-object v0

    sput-object v0, LLi/N$i;->$VALUES:[LLi/N$i;

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

.method public static synthetic a()[LLi/N$i;
    .locals 4

    sget-object v0, LLi/N$i;->ISAP_A_128A:LLi/N$i;

    sget-object v1, LLi/N$i;->ISAP_K_128A:LLi/N$i;

    sget-object v2, LLi/N$i;->ISAP_A_128:LLi/N$i;

    sget-object v3, LLi/N$i;->ISAP_K_128:LLi/N$i;

    filled-new-array {v0, v1, v2, v3}, [LLi/N$i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/N$i;
    .locals 1

    const-class v0, LLi/N$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/N$i;

    return-object p0
.end method

.method public static values()[LLi/N$i;
    .locals 1

    sget-object v0, LLi/N$i;->$VALUES:[LLi/N$i;

    invoke-virtual {v0}, [LLi/N$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/N$i;

    return-object v0
.end method
