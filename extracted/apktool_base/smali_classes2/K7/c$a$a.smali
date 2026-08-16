.class public final enum LK7/c$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK7/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LK7/c$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LK7/c$a$a;

.field public static final enum LEFT:LK7/c$a$a;

.field public static final enum RIGHT:LK7/c$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LK7/c$a$a;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK7/c$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK7/c$a$a;->LEFT:LK7/c$a$a;

    new-instance v0, LK7/c$a$a;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LK7/c$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK7/c$a$a;->RIGHT:LK7/c$a$a;

    invoke-static {}, LK7/c$a$a;->a()[LK7/c$a$a;

    move-result-object v0

    sput-object v0, LK7/c$a$a;->$VALUES:[LK7/c$a$a;

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

.method public static synthetic a()[LK7/c$a$a;
    .locals 2

    sget-object v0, LK7/c$a$a;->LEFT:LK7/c$a$a;

    sget-object v1, LK7/c$a$a;->RIGHT:LK7/c$a$a;

    filled-new-array {v0, v1}, [LK7/c$a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LK7/c$a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LK7/c$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LK7/c$a$a;

    return-object p0
.end method

.method public static values()[LK7/c$a$a;
    .locals 1

    sget-object v0, LK7/c$a$a;->$VALUES:[LK7/c$a$a;

    invoke-virtual {v0}, [LK7/c$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK7/c$a$a;

    return-object v0
.end method
