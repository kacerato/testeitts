.class public final enum LJAVARuntime/InputDialog$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/InputDialog$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/InputDialog$Type;

.field public static final enum Float:LJAVARuntime/InputDialog$Type;

.field public static final enum Int:LJAVARuntime/InputDialog$Type;

.field public static final enum String:LJAVARuntime/InputDialog$Type;


# direct methods
.method private static synthetic $values()[LJAVARuntime/InputDialog$Type;
    .locals 3

    sget-object v0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    sget-object v1, LJAVARuntime/InputDialog$Type;->Float:LJAVARuntime/InputDialog$Type;

    sget-object v2, LJAVARuntime/InputDialog$Type;->Int:LJAVARuntime/InputDialog$Type;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/InputDialog$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/InputDialog$Type;

    const-string v1, "String"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/InputDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/InputDialog$Type;->String:LJAVARuntime/InputDialog$Type;

    new-instance v0, LJAVARuntime/InputDialog$Type;

    const-string v1, "Float"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/InputDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/InputDialog$Type;->Float:LJAVARuntime/InputDialog$Type;

    new-instance v0, LJAVARuntime/InputDialog$Type;

    const-string v1, "Int"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/InputDialog$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/InputDialog$Type;->Int:LJAVARuntime/InputDialog$Type;

    invoke-static {}, LJAVARuntime/InputDialog$Type;->$values()[LJAVARuntime/InputDialog$Type;

    move-result-object v0

    sput-object v0, LJAVARuntime/InputDialog$Type;->$VALUES:[LJAVARuntime/InputDialog$Type;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/InputDialog$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/InputDialog$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/InputDialog$Type;

    return-object p0
.end method

.method public static values()[LJAVARuntime/InputDialog$Type;
    .locals 1

    sget-object v0, LJAVARuntime/InputDialog$Type;->$VALUES:[LJAVARuntime/InputDialog$Type;

    invoke-virtual {v0}, [LJAVARuntime/InputDialog$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/InputDialog$Type;

    return-object v0
.end method
