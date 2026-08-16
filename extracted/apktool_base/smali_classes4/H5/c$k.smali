.class public final enum LH5/c$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LH5/c$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LH5/c$k;

.field public static final enum X:LH5/c$k;

.field public static final enum Y:LH5/c$k;

.field public static final enum Z:LH5/c$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LH5/c$k;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LH5/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH5/c$k;->X:LH5/c$k;

    new-instance v0, LH5/c$k;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LH5/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH5/c$k;->Y:LH5/c$k;

    new-instance v0, LH5/c$k;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LH5/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, LH5/c$k;->Z:LH5/c$k;

    invoke-static {}, LH5/c$k;->a()[LH5/c$k;

    move-result-object v0

    sput-object v0, LH5/c$k;->$VALUES:[LH5/c$k;

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

.method public static synthetic a()[LH5/c$k;
    .locals 3

    sget-object v0, LH5/c$k;->X:LH5/c$k;

    sget-object v1, LH5/c$k;->Y:LH5/c$k;

    sget-object v2, LH5/c$k;->Z:LH5/c$k;

    filled-new-array {v0, v1, v2}, [LH5/c$k;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LH5/c$k;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LH5/c$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LH5/c$k;

    return-object p0
.end method

.method public static values()[LH5/c$k;
    .locals 1

    sget-object v0, LH5/c$k;->$VALUES:[LH5/c$k;

    invoke-virtual {v0}, [LH5/c$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LH5/c$k;

    return-object v0
.end method
