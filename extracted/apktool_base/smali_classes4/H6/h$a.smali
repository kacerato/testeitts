.class public final enum LH6/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LH6/h$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LH6/h$a;

.field public static final enum Alert:LH6/h$a;

.field public static final enum Error:LH6/h$a;

.field public static final enum None:LH6/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LH6/h$a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LH6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH6/h$a;->None:LH6/h$a;

    new-instance v0, LH6/h$a;

    const-string v1, "Error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LH6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH6/h$a;->Error:LH6/h$a;

    new-instance v0, LH6/h$a;

    const-string v1, "Alert"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LH6/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH6/h$a;->Alert:LH6/h$a;

    invoke-static {}, LH6/h$a;->a()[LH6/h$a;

    move-result-object v0

    sput-object v0, LH6/h$a;->$VALUES:[LH6/h$a;

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

.method public static synthetic a()[LH6/h$a;
    .locals 3

    sget-object v0, LH6/h$a;->None:LH6/h$a;

    sget-object v1, LH6/h$a;->Error:LH6/h$a;

    sget-object v2, LH6/h$a;->Alert:LH6/h$a;

    filled-new-array {v0, v1, v2}, [LH6/h$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LH6/h$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LH6/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH6/h$a;

    return-object p0
.end method

.method public static values()[LH6/h$a;
    .locals 1

    sget-object v0, LH6/h$a;->$VALUES:[LH6/h$a;

    invoke-virtual {v0}, [LH6/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH6/h$a;

    return-object v0
.end method
