.class public final enum LC5/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LC5/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LC5/d$a;

.field public static final enum Button:LC5/d$a;

.field public static final enum Component:LC5/d$a;

.field public static final enum GameObject:LC5/d$a;

.field public static final enum Renderer:LC5/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LC5/d$a;

    const-string v1, "GameObject"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC5/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC5/d$a;->GameObject:LC5/d$a;

    new-instance v0, LC5/d$a;

    const-string v1, "Renderer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LC5/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC5/d$a;->Renderer:LC5/d$a;

    new-instance v0, LC5/d$a;

    const-string v1, "Component"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LC5/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC5/d$a;->Component:LC5/d$a;

    new-instance v0, LC5/d$a;

    const-string v1, "Button"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LC5/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC5/d$a;->Button:LC5/d$a;

    invoke-static {}, LC5/d$a;->a()[LC5/d$a;

    move-result-object v0

    sput-object v0, LC5/d$a;->$VALUES:[LC5/d$a;

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

.method public static synthetic a()[LC5/d$a;
    .locals 4

    sget-object v0, LC5/d$a;->GameObject:LC5/d$a;

    sget-object v1, LC5/d$a;->Renderer:LC5/d$a;

    sget-object v2, LC5/d$a;->Component:LC5/d$a;

    sget-object v3, LC5/d$a;->Button:LC5/d$a;

    filled-new-array {v0, v1, v2, v3}, [LC5/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LC5/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LC5/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LC5/d$a;

    return-object p0
.end method

.method public static values()[LC5/d$a;
    .locals 1

    sget-object v0, LC5/d$a;->$VALUES:[LC5/d$a;

    invoke-virtual {v0}, [LC5/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC5/d$a;

    return-object v0
.end method
