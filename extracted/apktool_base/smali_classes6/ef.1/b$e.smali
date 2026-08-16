.class public final enum Lef/b$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lef/b$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lef/b$e;

.field public static final enum COLLAPSE_COST:Lef/b$e;

.field public static final enum CONSTANT:Lef/b$e;

.field public static final enum PROPORTIONAL:Lef/b$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lef/b$e;

    const-string v1, "PROPORTIONAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lef/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lef/b$e;->PROPORTIONAL:Lef/b$e;

    new-instance v0, Lef/b$e;

    const-string v1, "CONSTANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lef/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lef/b$e;->CONSTANT:Lef/b$e;

    new-instance v0, Lef/b$e;

    const-string v1, "COLLAPSE_COST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lef/b$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lef/b$e;->COLLAPSE_COST:Lef/b$e;

    invoke-static {}, Lef/b$e;->a()[Lef/b$e;

    move-result-object v0

    sput-object v0, Lef/b$e;->$VALUES:[Lef/b$e;

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
            null,
            null
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

.method public static synthetic a()[Lef/b$e;
    .locals 3

    sget-object v0, Lef/b$e;->PROPORTIONAL:Lef/b$e;

    sget-object v1, Lef/b$e;->CONSTANT:Lef/b$e;

    sget-object v2, Lef/b$e;->COLLAPSE_COST:Lef/b$e;

    filled-new-array {v0, v1, v2}, [Lef/b$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lef/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lef/b$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lef/b$e;

    return-object p0
.end method

.method public static values()[Lef/b$e;
    .locals 1

    sget-object v0, Lef/b$e;->$VALUES:[Lef/b$e;

    invoke-virtual {v0}, [Lef/b$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lef/b$e;

    return-object v0
.end method
