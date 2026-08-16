.class public final enum LLi/C0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/C0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLi/C0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLi/C0$a;

.field public static final enum ModeHash:LLi/C0$a;

.field public static final enum ModeKeyed:LLi/C0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLi/C0$a;

    const-string v1, "ModeHash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLi/C0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/C0$a;->ModeHash:LLi/C0$a;

    new-instance v0, LLi/C0$a;

    const-string v1, "ModeKeyed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLi/C0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLi/C0$a;->ModeKeyed:LLi/C0$a;

    invoke-static {}, LLi/C0$a;->a()[LLi/C0$a;

    move-result-object v0

    sput-object v0, LLi/C0$a;->$VALUES:[LLi/C0$a;

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

.method public static synthetic a()[LLi/C0$a;
    .locals 2

    sget-object v0, LLi/C0$a;->ModeHash:LLi/C0$a;

    sget-object v1, LLi/C0$a;->ModeKeyed:LLi/C0$a;

    filled-new-array {v0, v1}, [LLi/C0$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLi/C0$a;
    .locals 1

    const-class v0, LLi/C0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLi/C0$a;

    return-object p0
.end method

.method public static values()[LLi/C0$a;
    .locals 1

    sget-object v0, LLi/C0$a;->$VALUES:[LLi/C0$a;

    invoke-virtual {v0}, [LLi/C0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLi/C0$a;

    return-object v0
.end method
