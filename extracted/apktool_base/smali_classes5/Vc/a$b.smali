.class public final enum LVc/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LVc/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LVc/a$b;

.field public static final enum FAILED:LVc/a$b;

.field public static final enum INVALID_FORMAT:LVc/a$b;

.field public static final enum SUCCESS:LVc/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LVc/a$b;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LVc/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVc/a$b;->SUCCESS:LVc/a$b;

    new-instance v0, LVc/a$b;

    const-string v1, "INVALID_FORMAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LVc/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVc/a$b;->INVALID_FORMAT:LVc/a$b;

    new-instance v0, LVc/a$b;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LVc/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVc/a$b;->FAILED:LVc/a$b;

    invoke-static {}, LVc/a$b;->a()[LVc/a$b;

    move-result-object v0

    sput-object v0, LVc/a$b;->$VALUES:[LVc/a$b;

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

.method public static synthetic a()[LVc/a$b;
    .locals 3

    sget-object v0, LVc/a$b;->SUCCESS:LVc/a$b;

    sget-object v1, LVc/a$b;->INVALID_FORMAT:LVc/a$b;

    sget-object v2, LVc/a$b;->FAILED:LVc/a$b;

    filled-new-array {v0, v1, v2}, [LVc/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LVc/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LVc/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVc/a$b;

    return-object p0
.end method

.method public static values()[LVc/a$b;
    .locals 1

    sget-object v0, LVc/a$b;->$VALUES:[LVc/a$b;

    invoke-virtual {v0}, [LVc/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVc/a$b;

    return-object v0
.end method
