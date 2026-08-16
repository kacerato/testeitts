.class public final enum LYg/n$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LYg/n$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LYg/n$a;

.field public static final enum HORIZONTAL:LYg/n$a;

.field public static final enum VERTICAL:LYg/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LYg/n$a;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LYg/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYg/n$a;->HORIZONTAL:LYg/n$a;

    new-instance v0, LYg/n$a;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LYg/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LYg/n$a;->VERTICAL:LYg/n$a;

    invoke-static {}, LYg/n$a;->a()[LYg/n$a;

    move-result-object v0

    sput-object v0, LYg/n$a;->$VALUES:[LYg/n$a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LYg/n$a;->$ENTRIES:LCf/a;

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

.method public static final synthetic a()[LYg/n$a;
    .locals 2

    sget-object v0, LYg/n$a;->HORIZONTAL:LYg/n$a;

    sget-object v1, LYg/n$a;->VERTICAL:LYg/n$a;

    filled-new-array {v0, v1}, [LYg/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LYg/n$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LYg/n$a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LYg/n$a;
    .locals 1

    const-class v0, LYg/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LYg/n$a;

    return-object p0
.end method

.method public static values()[LYg/n$a;
    .locals 1

    sget-object v0, LYg/n$a;->$VALUES:[LYg/n$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LYg/n$a;

    return-object v0
.end method
