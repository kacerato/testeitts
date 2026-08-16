.class public final enum LM9/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LM9/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LM9/f;

.field public static final enum BUFFER:LM9/f;

.field public static final enum TEXTURE:LM9/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LM9/f;

    const-string v1, "TEXTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LM9/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LM9/f;->TEXTURE:LM9/f;

    new-instance v0, LM9/f;

    const-string v1, "BUFFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LM9/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, LM9/f;->BUFFER:LM9/f;

    invoke-static {}, LM9/f;->a()[LM9/f;

    move-result-object v0

    sput-object v0, LM9/f;->$VALUES:[LM9/f;

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

.method public static synthetic a()[LM9/f;
    .locals 2

    sget-object v0, LM9/f;->TEXTURE:LM9/f;

    sget-object v1, LM9/f;->BUFFER:LM9/f;

    filled-new-array {v0, v1}, [LM9/f;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LM9/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LM9/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LM9/f;

    return-object p0
.end method

.method public static values()[LM9/f;
    .locals 1

    sget-object v0, LM9/f;->$VALUES:[LM9/f;

    invoke-virtual {v0}, [LM9/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM9/f;

    return-object v0
.end method
