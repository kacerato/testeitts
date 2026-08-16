.class public final enum Lbh/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbh/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lbh/b$a;

.field public static final enum Bottom:Lbh/b$a;

.field public static final enum Left:Lbh/b$a;

.field public static final enum Right:Lbh/b$a;

.field public static final enum Top:Lbh/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbh/b$a;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbh/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$a;->Left:Lbh/b$a;

    new-instance v0, Lbh/b$a;

    const-string v1, "Top"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbh/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$a;->Top:Lbh/b$a;

    new-instance v0, Lbh/b$a;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbh/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$a;->Right:Lbh/b$a;

    new-instance v0, Lbh/b$a;

    const-string v1, "Bottom"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbh/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbh/b$a;->Bottom:Lbh/b$a;

    invoke-static {}, Lbh/b$a;->a()[Lbh/b$a;

    move-result-object v0

    sput-object v0, Lbh/b$a;->$VALUES:[Lbh/b$a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lbh/b$a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[Lbh/b$a;
    .locals 4

    sget-object v0, Lbh/b$a;->Left:Lbh/b$a;

    sget-object v1, Lbh/b$a;->Top:Lbh/b$a;

    sget-object v2, Lbh/b$a;->Right:Lbh/b$a;

    sget-object v3, Lbh/b$a;->Bottom:Lbh/b$a;

    filled-new-array {v0, v1, v2, v3}, [Lbh/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lbh/b$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lbh/b$a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbh/b$a;
    .locals 1

    const-class v0, Lbh/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbh/b$a;

    return-object p0
.end method

.method public static values()[Lbh/b$a;
    .locals 1

    sget-object v0, Lbh/b$a;->$VALUES:[Lbh/b$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbh/b$a;

    return-object v0
.end method
