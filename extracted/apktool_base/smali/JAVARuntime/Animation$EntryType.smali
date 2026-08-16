.class public final enum LJAVARuntime/Animation$EntryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Animation$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Animation$EntryType;

.field public static final enum COLOR:LJAVARuntime/Animation$EntryType;

.field public static final enum EVENTS:LJAVARuntime/Animation$EntryType;

.field public static final enum FLOAT:LJAVARuntime/Animation$EntryType;

.field public static final enum IMAGE:LJAVARuntime/Animation$EntryType;

.field public static final enum INT:LJAVARuntime/Animation$EntryType;

.field public static final enum QUAT:LJAVARuntime/Animation$EntryType;

.field public static final enum SQUARE5I:LJAVARuntime/Animation$EntryType;

.field public static final enum UVEC2I:LJAVARuntime/Animation$EntryType;

.field public static final enum VEC2:LJAVARuntime/Animation$EntryType;

.field public static final enum VEC2I:LJAVARuntime/Animation$EntryType;

.field public static final enum VEC3:LJAVARuntime/Animation$EntryType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Animation$EntryType;
    .locals 11

    sget-object v0, LJAVARuntime/Animation$EntryType;->FLOAT:LJAVARuntime/Animation$EntryType;

    sget-object v1, LJAVARuntime/Animation$EntryType;->INT:LJAVARuntime/Animation$EntryType;

    sget-object v2, LJAVARuntime/Animation$EntryType;->COLOR:LJAVARuntime/Animation$EntryType;

    sget-object v3, LJAVARuntime/Animation$EntryType;->VEC3:LJAVARuntime/Animation$EntryType;

    sget-object v4, LJAVARuntime/Animation$EntryType;->VEC2:LJAVARuntime/Animation$EntryType;

    sget-object v5, LJAVARuntime/Animation$EntryType;->QUAT:LJAVARuntime/Animation$EntryType;

    sget-object v6, LJAVARuntime/Animation$EntryType;->VEC2I:LJAVARuntime/Animation$EntryType;

    sget-object v7, LJAVARuntime/Animation$EntryType;->UVEC2I:LJAVARuntime/Animation$EntryType;

    sget-object v8, LJAVARuntime/Animation$EntryType;->SQUARE5I:LJAVARuntime/Animation$EntryType;

    sget-object v9, LJAVARuntime/Animation$EntryType;->IMAGE:LJAVARuntime/Animation$EntryType;

    sget-object v10, LJAVARuntime/Animation$EntryType;->EVENTS:LJAVARuntime/Animation$EntryType;

    filled-new-array/range {v0 .. v10}, [LJAVARuntime/Animation$EntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->FLOAT:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "INT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->INT:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->COLOR:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "VEC3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->VEC3:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "VEC2"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->VEC2:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "QUAT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->QUAT:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "VEC2I"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->VEC2I:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "UVEC2I"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->UVEC2I:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "SQUARE5I"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->SQUARE5I:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "IMAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->IMAGE:LJAVARuntime/Animation$EntryType;

    new-instance v0, LJAVARuntime/Animation$EntryType;

    const-string v1, "EVENTS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, LJAVARuntime/Animation$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Animation$EntryType;->EVENTS:LJAVARuntime/Animation$EntryType;

    invoke-static {}, LJAVARuntime/Animation$EntryType;->$values()[LJAVARuntime/Animation$EntryType;

    move-result-object v0

    sput-object v0, LJAVARuntime/Animation$EntryType;->$VALUES:[LJAVARuntime/Animation$EntryType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Animation$EntryType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Animation$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Animation$EntryType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Animation$EntryType;
    .locals 1

    sget-object v0, LJAVARuntime/Animation$EntryType;->$VALUES:[LJAVARuntime/Animation$EntryType;

    invoke-virtual {v0}, [LJAVARuntime/Animation$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Animation$EntryType;

    return-object v0
.end method
