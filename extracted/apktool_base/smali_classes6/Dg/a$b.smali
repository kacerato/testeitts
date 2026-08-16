.class public final enum LDg/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDg/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDg/a$b;

.field public static final enum BUSY:LDg/a$b;

.field public static final enum READY:LDg/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LDg/a$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDg/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDg/a$b;->READY:LDg/a$b;

    new-instance v1, LDg/a$b;

    const-string v2, "BUSY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDg/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDg/a$b;->BUSY:LDg/a$b;

    filled-new-array {v0, v1}, [LDg/a$b;

    move-result-object v0

    sput-object v0, LDg/a$b;->$VALUES:[LDg/a$b;

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

.method public static valueOf(Ljava/lang/String;)LDg/a$b;
    .locals 1

    const-class v0, LDg/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDg/a$b;

    return-object p0
.end method

.method public static values()[LDg/a$b;
    .locals 1

    sget-object v0, LDg/a$b;->$VALUES:[LDg/a$b;

    invoke-virtual {v0}, [LDg/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDg/a$b;

    return-object v0
.end method
