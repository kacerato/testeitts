.class public final enum Lw2/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw2/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lw2/b$b;

.field public static final enum DONE:Lw2/b$b;

.field public static final enum FAILED:Lw2/b$b;

.field public static final enum NOT_READY:Lw2/b$b;

.field public static final enum READY:Lw2/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2/b$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/b$b;->READY:Lw2/b$b;

    new-instance v0, Lw2/b$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw2/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/b$b;->NOT_READY:Lw2/b$b;

    new-instance v0, Lw2/b$b;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw2/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/b$b;->DONE:Lw2/b$b;

    new-instance v0, Lw2/b$b;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lw2/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw2/b$b;->FAILED:Lw2/b$b;

    invoke-static {}, Lw2/b$b;->a()[Lw2/b$b;

    move-result-object v0

    sput-object v0, Lw2/b$b;->$VALUES:[Lw2/b$b;

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

.method public static synthetic a()[Lw2/b$b;
    .locals 4

    sget-object v0, Lw2/b$b;->READY:Lw2/b$b;

    sget-object v1, Lw2/b$b;->NOT_READY:Lw2/b$b;

    sget-object v2, Lw2/b$b;->DONE:Lw2/b$b;

    sget-object v3, Lw2/b$b;->FAILED:Lw2/b$b;

    filled-new-array {v0, v1, v2, v3}, [Lw2/b$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lw2/b$b;
    .locals 1

    const-class v0, Lw2/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw2/b$b;

    return-object p0
.end method

.method public static values()[Lw2/b$b;
    .locals 1

    sget-object v0, Lw2/b$b;->$VALUES:[Lw2/b$b;

    invoke-virtual {v0}, [Lw2/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw2/b$b;

    return-object v0
.end method
