.class public final enum Lre/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lre/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lre/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lre/b$a;

.field public static final enum BULLET:Lre/b$a;

.field public static final enum ORDERED:Lre/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lre/b$a;

    const-string v1, "BULLET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lre/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lre/b$a;->BULLET:Lre/b$a;

    new-instance v1, Lre/b$a;

    const-string v2, "ORDERED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lre/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lre/b$a;->ORDERED:Lre/b$a;

    filled-new-array {v0, v1}, [Lre/b$a;

    move-result-object v0

    sput-object v0, Lre/b$a;->$VALUES:[Lre/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lre/b$a;
    .locals 1

    const-class v0, Lre/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lre/b$a;

    return-object p0
.end method

.method public static values()[Lre/b$a;
    .locals 1

    sget-object v0, Lre/b$a;->$VALUES:[Lre/b$a;

    invoke-virtual {v0}, [Lre/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lre/b$a;

    return-object v0
.end method
