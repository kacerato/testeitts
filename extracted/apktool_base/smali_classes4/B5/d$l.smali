.class public final enum LB5/d$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB5/d$l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB5/d$l;

.field public static final enum Components:LB5/d$l;

.field public static final enum Options:LB5/d$l;

.field public static final enum Physics:LB5/d$l;

.field public static final enum Transform:LB5/d$l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB5/d$l;

    const-string v1, "Transform"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB5/d$l;->Transform:LB5/d$l;

    new-instance v0, LB5/d$l;

    const-string v1, "Components"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LB5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB5/d$l;->Components:LB5/d$l;

    new-instance v0, LB5/d$l;

    const-string v1, "Physics"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LB5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB5/d$l;->Physics:LB5/d$l;

    new-instance v0, LB5/d$l;

    const-string v1, "Options"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LB5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB5/d$l;->Options:LB5/d$l;

    invoke-static {}, LB5/d$l;->a()[LB5/d$l;

    move-result-object v0

    sput-object v0, LB5/d$l;->$VALUES:[LB5/d$l;

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

.method public static synthetic a()[LB5/d$l;
    .locals 4

    sget-object v0, LB5/d$l;->Transform:LB5/d$l;

    sget-object v1, LB5/d$l;->Components:LB5/d$l;

    sget-object v2, LB5/d$l;->Physics:LB5/d$l;

    sget-object v3, LB5/d$l;->Options:LB5/d$l;

    filled-new-array {v0, v1, v2, v3}, [LB5/d$l;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LB5/d$l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LB5/d$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB5/d$l;

    return-object p0
.end method

.method public static values()[LB5/d$l;
    .locals 1

    sget-object v0, LB5/d$l;->$VALUES:[LB5/d$l;

    invoke-virtual {v0}, [LB5/d$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB5/d$l;

    return-object v0
.end method
