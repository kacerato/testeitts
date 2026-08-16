.class public final enum LUc/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LUc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LUc/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LUc/b$a;

.field public static final enum AUTO:LUc/b$a;

.field public static final enum NONE:LUc/b$a;

.field public static final enum RLE:LUc/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LUc/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LUc/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/b$a;->NONE:LUc/b$a;

    new-instance v0, LUc/b$a;

    const-string v1, "RLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LUc/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/b$a;->RLE:LUc/b$a;

    new-instance v0, LUc/b$a;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LUc/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LUc/b$a;->AUTO:LUc/b$a;

    invoke-static {}, LUc/b$a;->a()[LUc/b$a;

    move-result-object v0

    sput-object v0, LUc/b$a;->$VALUES:[LUc/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LUc/b$a;
    .locals 3

    sget-object v0, LUc/b$a;->NONE:LUc/b$a;

    sget-object v1, LUc/b$a;->RLE:LUc/b$a;

    sget-object v2, LUc/b$a;->AUTO:LUc/b$a;

    filled-new-array {v0, v1, v2}, [LUc/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LUc/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LUc/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LUc/b$a;

    return-object p0
.end method

.method public static values()[LUc/b$a;
    .locals 1

    sget-object v0, LUc/b$a;->$VALUES:[LUc/b$a;

    invoke-virtual {v0}, [LUc/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LUc/b$a;

    return-object v0
.end method
