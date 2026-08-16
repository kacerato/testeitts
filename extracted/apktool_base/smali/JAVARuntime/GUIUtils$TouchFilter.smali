.class public final enum LJAVARuntime/GUIUtils$TouchFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GUIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GUIUtils$TouchFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum All:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum Down:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum DownAndPressed:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum DownAndUp:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum Pressed:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum PressedAndUp:LJAVARuntime/GUIUtils$TouchFilter;

.field public static final enum Up:LJAVARuntime/GUIUtils$TouchFilter;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GUIUtils$TouchFilter;
    .locals 7

    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v1, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v2, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v3, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v4, LJAVARuntime/GUIUtils$TouchFilter;->DownAndPressed:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v5, LJAVARuntime/GUIUtils$TouchFilter;->DownAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    sget-object v6, LJAVARuntime/GUIUtils$TouchFilter;->PressedAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    filled-new-array/range {v0 .. v6}, [LJAVARuntime/GUIUtils$TouchFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "All"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "Pressed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "Down"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "Up"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "DownAndPressed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->DownAndPressed:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "DownAndUp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->DownAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    new-instance v0, LJAVARuntime/GUIUtils$TouchFilter;

    const-string v1, "PressedAndUp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/GUIUtils$TouchFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->PressedAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-static {}, LJAVARuntime/GUIUtils$TouchFilter;->$values()[LJAVARuntime/GUIUtils$TouchFilter;

    move-result-object v0

    sput-object v0, LJAVARuntime/GUIUtils$TouchFilter;->$VALUES:[LJAVARuntime/GUIUtils$TouchFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GUIUtils$TouchFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GUIUtils$TouchFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GUIUtils$TouchFilter;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GUIUtils$TouchFilter;
    .locals 1

    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->$VALUES:[LJAVARuntime/GUIUtils$TouchFilter;

    invoke-virtual {v0}, [LJAVARuntime/GUIUtils$TouchFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GUIUtils$TouchFilter;

    return-object v0
.end method
