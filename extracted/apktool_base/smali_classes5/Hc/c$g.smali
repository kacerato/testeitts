.class public final enum LHc/c$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHc/c$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHc/c$g;

.field public static final enum Done:LHc/c$g;

.field public static final enum Garbage:LHc/c$g;

.field public static final enum Loading:LHc/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHc/c$g;

    const-string v1, "Done"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHc/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHc/c$g;->Done:LHc/c$g;

    new-instance v0, LHc/c$g;

    const-string v1, "Loading"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHc/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHc/c$g;->Loading:LHc/c$g;

    new-instance v0, LHc/c$g;

    const-string v1, "Garbage"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LHc/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHc/c$g;->Garbage:LHc/c$g;

    invoke-static {}, LHc/c$g;->a()[LHc/c$g;

    move-result-object v0

    sput-object v0, LHc/c$g;->$VALUES:[LHc/c$g;

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

.method public static synthetic a()[LHc/c$g;
    .locals 3

    sget-object v0, LHc/c$g;->Done:LHc/c$g;

    sget-object v1, LHc/c$g;->Loading:LHc/c$g;

    sget-object v2, LHc/c$g;->Garbage:LHc/c$g;

    filled-new-array {v0, v1, v2}, [LHc/c$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHc/c$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LHc/c$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHc/c$g;

    return-object p0
.end method

.method public static values()[LHc/c$g;
    .locals 1

    sget-object v0, LHc/c$g;->$VALUES:[LHc/c$g;

    invoke-virtual {v0}, [LHc/c$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHc/c$g;

    return-object v0
.end method
