.class public final enum Lg3/d$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg3/d$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg3/d$b;

.field public static final enum BAD_CONFIG:Lg3/d$b;

.field public static final enum OK:Lg3/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg3/d$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg3/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg3/d$b;->OK:Lg3/d$b;

    new-instance v0, Lg3/d$b;

    const-string v1, "BAD_CONFIG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg3/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg3/d$b;->BAD_CONFIG:Lg3/d$b;

    invoke-static {}, Lg3/d$b;->a()[Lg3/d$b;

    move-result-object v0

    sput-object v0, Lg3/d$b;->$VALUES:[Lg3/d$b;

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

.method public static synthetic a()[Lg3/d$b;
    .locals 2

    sget-object v0, Lg3/d$b;->OK:Lg3/d$b;

    sget-object v1, Lg3/d$b;->BAD_CONFIG:Lg3/d$b;

    filled-new-array {v0, v1}, [Lg3/d$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lg3/d$b;
    .locals 1

    const-class v0, Lg3/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg3/d$b;

    return-object p0
.end method

.method public static values()[Lg3/d$b;
    .locals 1

    sget-object v0, Lg3/d$b;->$VALUES:[Lg3/d$b;

    invoke-virtual {v0}, [Lg3/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg3/d$b;

    return-object v0
.end method
