.class public final enum LJAVARuntime/UIBarHandler$Align;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UIBarHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UIBarHandler$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UIBarHandler$Align;

.field public static final enum Center:LJAVARuntime/UIBarHandler$Align;

.field public static final enum End:LJAVARuntime/UIBarHandler$Align;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UIBarHandler$Align;
    .locals 2

    sget-object v0, LJAVARuntime/UIBarHandler$Align;->Center:LJAVARuntime/UIBarHandler$Align;

    sget-object v1, LJAVARuntime/UIBarHandler$Align;->End:LJAVARuntime/UIBarHandler$Align;

    filled-new-array {v0, v1}, [LJAVARuntime/UIBarHandler$Align;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UIBarHandler$Align;

    const-string v1, "Center"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIBarHandler$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIBarHandler$Align;->Center:LJAVARuntime/UIBarHandler$Align;

    new-instance v0, LJAVARuntime/UIBarHandler$Align;

    const-string v1, "End"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIBarHandler$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIBarHandler$Align;->End:LJAVARuntime/UIBarHandler$Align;

    invoke-static {}, LJAVARuntime/UIBarHandler$Align;->$values()[LJAVARuntime/UIBarHandler$Align;

    move-result-object v0

    sput-object v0, LJAVARuntime/UIBarHandler$Align;->$VALUES:[LJAVARuntime/UIBarHandler$Align;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UIBarHandler$Align;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIBarHandler$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UIBarHandler$Align;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UIBarHandler$Align;
    .locals 1

    sget-object v0, LJAVARuntime/UIBarHandler$Align;->$VALUES:[LJAVARuntime/UIBarHandler$Align;

    invoke-virtual {v0}, [LJAVARuntime/UIBarHandler$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UIBarHandler$Align;

    return-object v0
.end method
