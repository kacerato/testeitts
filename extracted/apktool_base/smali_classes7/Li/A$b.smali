.class public final enum LLi/A$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/A$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/A$b;

.field public static final enum elephant160:LLi/A$b;

.field public static final enum elephant176:LLi/A$b;

.field public static final enum elephant200:LLi/A$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/A$b;

    const-string v1, "elephant160"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/A$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$b;->elephant160:LLi/A$b;

    new-instance v0, LLi/A$b;

    const-string v1, "elephant176"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/A$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$b;->elephant176:LLi/A$b;

    new-instance v0, LLi/A$b;

    const-string v1, "elephant200"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LLi/A$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/A$b;->elephant200:LLi/A$b;

    invoke-static {}, LLi/A$b;->a()[LLi/A$b;

    move-result-object v0

    sput-object v0, LLi/A$b;->$VALUES:[LLi/A$b;

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

.method public static synthetic a()[LLi/A$b;
    .locals 3

    sget-object v0, LLi/A$b;->elephant160:LLi/A$b;

    sget-object v1, LLi/A$b;->elephant176:LLi/A$b;

    sget-object v2, LLi/A$b;->elephant200:LLi/A$b;

    filled-new-array {v0, v1, v2}, [LLi/A$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/A$b;
    .locals 1

    const-class v0, LLi/A$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/A$b;

    return-object p0
.end method

.method public static values()[LLi/A$b;
    .locals 1

    sget-object v0, LLi/A$b;->$VALUES:[LLi/A$b;

    invoke-virtual {v0}, [LLi/A$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/A$b;

    return-object v0
.end method
