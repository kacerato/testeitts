.class public final enum Lw5/j$m0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "m0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw5/j$m0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw5/j$m0;

.field public static final enum Class:Lw5/j$m0;

.field public static final enum Component:Lw5/j$m0;

.field public static final enum Interface:Lw5/j$m0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw5/j$m0;

    const-string v1, "Component"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw5/j$m0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw5/j$m0;->Component:Lw5/j$m0;

    new-instance v0, Lw5/j$m0;

    const-string v1, "Interface"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw5/j$m0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw5/j$m0;->Interface:Lw5/j$m0;

    new-instance v0, Lw5/j$m0;

    const-string v1, "Class"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw5/j$m0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw5/j$m0;->Class:Lw5/j$m0;

    invoke-static {}, Lw5/j$m0;->a()[Lw5/j$m0;

    move-result-object v0

    sput-object v0, Lw5/j$m0;->$VALUES:[Lw5/j$m0;

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

.method public static synthetic a()[Lw5/j$m0;
    .locals 3

    sget-object v0, Lw5/j$m0;->Component:Lw5/j$m0;

    sget-object v1, Lw5/j$m0;->Interface:Lw5/j$m0;

    sget-object v2, Lw5/j$m0;->Class:Lw5/j$m0;

    filled-new-array {v0, v1, v2}, [Lw5/j$m0;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw5/j$m0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lw5/j$m0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw5/j$m0;

    return-object p0
.end method

.method public static values()[Lw5/j$m0;
    .locals 1

    sget-object v0, Lw5/j$m0;->$VALUES:[Lw5/j$m0;

    invoke-virtual {v0}, [Lw5/j$m0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw5/j$m0;

    return-object v0
.end method
