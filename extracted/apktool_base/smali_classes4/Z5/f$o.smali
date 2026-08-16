.class public final enum LZ5/f$o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZ5/f$o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LZ5/f$o;

.field public static final enum Home:LZ5/f$o;

.field public static final enum MyPackages:LZ5/f$o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LZ5/f$o;

    const-string v1, "Home"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LZ5/f$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZ5/f$o;->Home:LZ5/f$o;

    new-instance v0, LZ5/f$o;

    const-string v1, "MyPackages"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LZ5/f$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZ5/f$o;->MyPackages:LZ5/f$o;

    invoke-static {}, LZ5/f$o;->a()[LZ5/f$o;

    move-result-object v0

    sput-object v0, LZ5/f$o;->$VALUES:[LZ5/f$o;

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

.method public static synthetic a()[LZ5/f$o;
    .locals 2

    sget-object v0, LZ5/f$o;->Home:LZ5/f$o;

    sget-object v1, LZ5/f$o;->MyPackages:LZ5/f$o;

    filled-new-array {v0, v1}, [LZ5/f$o;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LZ5/f$o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LZ5/f$o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZ5/f$o;

    return-object p0
.end method

.method public static values()[LZ5/f$o;
    .locals 1

    sget-object v0, LZ5/f$o;->$VALUES:[LZ5/f$o;

    invoke-virtual {v0}, [LZ5/f$o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZ5/f$o;

    return-object v0
.end method
