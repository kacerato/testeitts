.class public final enum LMb/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LMb/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LMb/b$a;

.field public static final enum OBJ:LMb/b$a;

.field public static final enum PREFAB:LMb/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LMb/b$a;

    const-string v1, "OBJ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LMb/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LMb/b$a;->OBJ:LMb/b$a;

    new-instance v0, LMb/b$a;

    const-string v1, "PREFAB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LMb/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LMb/b$a;->PREFAB:LMb/b$a;

    invoke-static {}, LMb/b$a;->a()[LMb/b$a;

    move-result-object v0

    sput-object v0, LMb/b$a;->$VALUES:[LMb/b$a;

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

.method public static synthetic a()[LMb/b$a;
    .locals 2

    sget-object v0, LMb/b$a;->OBJ:LMb/b$a;

    sget-object v1, LMb/b$a;->PREFAB:LMb/b$a;

    filled-new-array {v0, v1}, [LMb/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LMb/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LMb/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LMb/b$a;

    return-object p0
.end method

.method public static values()[LMb/b$a;
    .locals 1

    sget-object v0, LMb/b$a;->$VALUES:[LMb/b$a;

    invoke-virtual {v0}, [LMb/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LMb/b$a;

    return-object v0
.end method
