.class public final enum LIi/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LIi/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LIi/b$b;

.field public static final enum AsconXof:LIi/b$b;

.field public static final enum AsconXofA:LIi/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LIi/b$b;

    const-string v1, "AsconXof"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LIi/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/b$b;->AsconXof:LIi/b$b;

    new-instance v0, LIi/b$b;

    const-string v1, "AsconXofA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LIi/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LIi/b$b;->AsconXofA:LIi/b$b;

    invoke-static {}, LIi/b$b;->a()[LIi/b$b;

    move-result-object v0

    sput-object v0, LIi/b$b;->$VALUES:[LIi/b$b;

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

.method public static synthetic a()[LIi/b$b;
    .locals 2

    sget-object v0, LIi/b$b;->AsconXof:LIi/b$b;

    sget-object v1, LIi/b$b;->AsconXofA:LIi/b$b;

    filled-new-array {v0, v1}, [LIi/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LIi/b$b;
    .locals 1

    const-class v0, LIi/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LIi/b$b;

    return-object p0
.end method

.method public static values()[LIi/b$b;
    .locals 1

    sget-object v0, LIi/b$b;->$VALUES:[LIi/b$b;

    invoke-virtual {v0}, [LIi/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LIi/b$b;

    return-object v0
.end method
