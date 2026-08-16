.class public final enum Lh7/e$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh7/e$h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lh7/e$h;

.field public static final enum Grid:Lh7/e$h;

.field public static final enum List:Lh7/e$h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh7/e$h;

    const-string v1, "Grid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh7/e$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh7/e$h;->Grid:Lh7/e$h;

    new-instance v0, Lh7/e$h;

    const-string v1, "List"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lh7/e$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh7/e$h;->List:Lh7/e$h;

    invoke-static {}, Lh7/e$h;->a()[Lh7/e$h;

    move-result-object v0

    sput-object v0, Lh7/e$h;->$VALUES:[Lh7/e$h;

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

.method public static synthetic a()[Lh7/e$h;
    .locals 2

    sget-object v0, Lh7/e$h;->Grid:Lh7/e$h;

    sget-object v1, Lh7/e$h;->List:Lh7/e$h;

    filled-new-array {v0, v1}, [Lh7/e$h;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lh7/e$h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lh7/e$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh7/e$h;

    return-object p0
.end method

.method public static values()[Lh7/e$h;
    .locals 1

    sget-object v0, Lh7/e$h;->$VALUES:[Lh7/e$h;

    invoke-virtual {v0}, [Lh7/e$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh7/e$h;

    return-object v0
.end method
