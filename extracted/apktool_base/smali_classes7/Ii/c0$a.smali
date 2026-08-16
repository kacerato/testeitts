.class public final enum LIi/c0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LIi/c0$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LIi/c0$a;

.field public static final enum ModeHash:LIi/c0$a;

.field public static final enum ModeKeyed:LIi/c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIi/c0$a;

    const-string v1, "ModeHash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LIi/c0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/c0$a;->ModeHash:LIi/c0$a;

    new-instance v0, LIi/c0$a;

    const-string v1, "ModeKeyed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LIi/c0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/c0$a;->ModeKeyed:LIi/c0$a;

    invoke-static {}, LIi/c0$a;->a()[LIi/c0$a;

    move-result-object v0

    sput-object v0, LIi/c0$a;->$VALUES:[LIi/c0$a;

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

.method public static synthetic a()[LIi/c0$a;
    .locals 2

    sget-object v0, LIi/c0$a;->ModeHash:LIi/c0$a;

    sget-object v1, LIi/c0$a;->ModeKeyed:LIi/c0$a;

    filled-new-array {v0, v1}, [LIi/c0$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LIi/c0$a;
    .locals 1

    const-class v0, LIi/c0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIi/c0$a;

    return-object p0
.end method

.method public static values()[LIi/c0$a;
    .locals 1

    sget-object v0, LIi/c0$a;->$VALUES:[LIi/c0$a;

    invoke-virtual {v0}, [LIi/c0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIi/c0$a;

    return-object v0
.end method
