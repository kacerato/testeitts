.class public final enum LHj/a$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LHj/a$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LHj/a$e;

.field public static final enum HmacSHA3_512:LHj/a$e;

.field public static final enum HmacSHA512:LHj/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LHj/a$e;

    const-string v1, "HmacSHA512"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LHj/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    new-instance v0, LHj/a$e;

    const-string v1, "HmacSHA3_512"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LHj/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHj/a$e;->HmacSHA3_512:LHj/a$e;

    invoke-static {}, LHj/a$e;->a()[LHj/a$e;

    move-result-object v0

    sput-object v0, LHj/a$e;->$VALUES:[LHj/a$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[LHj/a$e;
    .locals 2

    sget-object v0, LHj/a$e;->HmacSHA512:LHj/a$e;

    sget-object v1, LHj/a$e;->HmacSHA3_512:LHj/a$e;

    filled-new-array {v0, v1}, [LHj/a$e;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LHj/a$e;
    .locals 1

    const-class v0, LHj/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHj/a$e;

    return-object p0
.end method

.method public static values()[LHj/a$e;
    .locals 1

    sget-object v0, LHj/a$e;->$VALUES:[LHj/a$e;

    invoke-virtual {v0}, [LHj/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHj/a$e;

    return-object v0
.end method
