.class public final enum LLb/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LLb/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LLb/d;

.field public static final enum Async:LLb/d;

.field public static final enum Sync:LLb/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LLb/d;

    const-string v1, "Sync"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLb/d;->Sync:LLb/d;

    new-instance v0, LLb/d;

    const-string v1, "Async"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LLb/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, LLb/d;->Async:LLb/d;

    invoke-static {}, LLb/d;->a()[LLb/d;

    move-result-object v0

    sput-object v0, LLb/d;->$VALUES:[LLb/d;

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

.method public static synthetic a()[LLb/d;
    .locals 2

    sget-object v0, LLb/d;->Sync:LLb/d;

    sget-object v1, LLb/d;->Async:LLb/d;

    filled-new-array {v0, v1}, [LLb/d;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LLb/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LLb/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LLb/d;

    return-object p0
.end method

.method public static values()[LLb/d;
    .locals 1

    sget-object v0, LLb/d;->$VALUES:[LLb/d;

    invoke-virtual {v0}, [LLb/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LLb/d;

    return-object v0
.end method
