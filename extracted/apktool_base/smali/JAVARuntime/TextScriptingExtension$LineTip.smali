.class public final enum LJAVARuntime/TextScriptingExtension$LineTip;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TextScriptingExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineTip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TextScriptingExtension$LineTip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TextScriptingExtension$LineTip;

.field public static final enum Alert:LJAVARuntime/TextScriptingExtension$LineTip;

.field public static final enum Error:LJAVARuntime/TextScriptingExtension$LineTip;

.field public static final enum None:LJAVARuntime/TextScriptingExtension$LineTip;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TextScriptingExtension$LineTip;
    .locals 3

    sget-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->None:LJAVARuntime/TextScriptingExtension$LineTip;

    sget-object v1, LJAVARuntime/TextScriptingExtension$LineTip;->Error:LJAVARuntime/TextScriptingExtension$LineTip;

    sget-object v2, LJAVARuntime/TextScriptingExtension$LineTip;->Alert:LJAVARuntime/TextScriptingExtension$LineTip;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/TextScriptingExtension$LineTip;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TextScriptingExtension$LineTip;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TextScriptingExtension$LineTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->None:LJAVARuntime/TextScriptingExtension$LineTip;

    new-instance v0, LJAVARuntime/TextScriptingExtension$LineTip;

    const-string v1, "Error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TextScriptingExtension$LineTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->Error:LJAVARuntime/TextScriptingExtension$LineTip;

    new-instance v0, LJAVARuntime/TextScriptingExtension$LineTip;

    const-string v1, "Alert"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/TextScriptingExtension$LineTip;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->Alert:LJAVARuntime/TextScriptingExtension$LineTip;

    invoke-static {}, LJAVARuntime/TextScriptingExtension$LineTip;->$values()[LJAVARuntime/TextScriptingExtension$LineTip;

    move-result-object v0

    sput-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->$VALUES:[LJAVARuntime/TextScriptingExtension$LineTip;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TextScriptingExtension$LineTip;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TextScriptingExtension$LineTip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TextScriptingExtension$LineTip;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TextScriptingExtension$LineTip;
    .locals 1

    sget-object v0, LJAVARuntime/TextScriptingExtension$LineTip;->$VALUES:[LJAVARuntime/TextScriptingExtension$LineTip;

    invoke-virtual {v0}, [LJAVARuntime/TextScriptingExtension$LineTip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TextScriptingExtension$LineTip;

    return-object v0
.end method
