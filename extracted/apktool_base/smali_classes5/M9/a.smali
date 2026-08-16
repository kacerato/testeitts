.class public final enum LM9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LM9/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LM9/a;

.field public static final enum CPU:LM9/a;

.field public static final enum GPU:LM9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LM9/a;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LM9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LM9/a;->CPU:LM9/a;

    new-instance v0, LM9/a;

    const-string v1, "GPU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LM9/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LM9/a;->GPU:LM9/a;

    invoke-static {}, LM9/a;->a()[LM9/a;

    move-result-object v0

    sput-object v0, LM9/a;->$VALUES:[LM9/a;

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

.method public static synthetic a()[LM9/a;
    .locals 2

    sget-object v0, LM9/a;->CPU:LM9/a;

    sget-object v1, LM9/a;->GPU:LM9/a;

    filled-new-array {v0, v1}, [LM9/a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LM9/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LM9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LM9/a;

    return-object p0
.end method

.method public static values()[LM9/a;
    .locals 1

    sget-object v0, LM9/a;->$VALUES:[LM9/a;

    invoke-virtual {v0}, [LM9/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM9/a;

    return-object v0
.end method
