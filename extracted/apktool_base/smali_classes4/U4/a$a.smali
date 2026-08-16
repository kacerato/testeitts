.class public final enum LU4/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU4/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU4/a$a;

.field public static final enum HIDE:LU4/a$a;

.field public static final enum IGNORE:LU4/a$a;

.field public static final enum SHOW:LU4/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU4/a$a;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU4/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU4/a$a;->IGNORE:LU4/a$a;

    new-instance v0, LU4/a$a;

    const-string v1, "HIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LU4/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU4/a$a;->HIDE:LU4/a$a;

    new-instance v0, LU4/a$a;

    const-string v1, "SHOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LU4/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU4/a$a;->SHOW:LU4/a$a;

    invoke-static {}, LU4/a$a;->a()[LU4/a$a;

    move-result-object v0

    sput-object v0, LU4/a$a;->$VALUES:[LU4/a$a;

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

.method public static synthetic a()[LU4/a$a;
    .locals 3

    sget-object v0, LU4/a$a;->IGNORE:LU4/a$a;

    sget-object v1, LU4/a$a;->HIDE:LU4/a$a;

    sget-object v2, LU4/a$a;->SHOW:LU4/a$a;

    filled-new-array {v0, v1, v2}, [LU4/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LU4/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LU4/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU4/a$a;

    return-object p0
.end method

.method public static values()[LU4/a$a;
    .locals 1

    sget-object v0, LU4/a$a;->$VALUES:[LU4/a$a;

    invoke-virtual {v0}, [LU4/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU4/a$a;

    return-object v0
.end method
