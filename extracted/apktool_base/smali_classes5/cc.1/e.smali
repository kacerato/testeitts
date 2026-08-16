.class public final enum Lcc/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcc/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcc/e;

.field public static final enum Vertex:Lcc/e;

.field public static final enum World:Lcc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcc/e;

    const-string v1, "Vertex"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc/e;->Vertex:Lcc/e;

    new-instance v0, Lcc/e;

    const-string v1, "World"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcc/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcc/e;->World:Lcc/e;

    invoke-static {}, Lcc/e;->a()[Lcc/e;

    move-result-object v0

    sput-object v0, Lcc/e;->$VALUES:[Lcc/e;

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

.method public static synthetic a()[Lcc/e;
    .locals 2

    sget-object v0, Lcc/e;->Vertex:Lcc/e;

    sget-object v1, Lcc/e;->World:Lcc/e;

    filled-new-array {v0, v1}, [Lcc/e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcc/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/e;

    return-object p0
.end method

.method public static values()[Lcc/e;
    .locals 1

    sget-object v0, Lcc/e;->$VALUES:[Lcc/e;

    invoke-virtual {v0}, [Lcc/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/e;

    return-object v0
.end method
