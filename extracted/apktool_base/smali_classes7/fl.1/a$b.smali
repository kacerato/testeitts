.class public final enum Lfl/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfl/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfl/a$b;

.field public static final enum M:Lfl/a$b;

.field public static final enum N:Lfl/a$b;

.field public static final enum NV:Lfl/a$b;

.field public static final enum V:Lfl/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfl/a$b;

    const-string v1, "NV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl/a$b;->NV:Lfl/a$b;

    new-instance v0, Lfl/a$b;

    const-string v1, "V"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl/a$b;->V:Lfl/a$b;

    new-instance v0, Lfl/a$b;

    const-string v1, "N"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl/a$b;->N:Lfl/a$b;

    new-instance v0, Lfl/a$b;

    const-string v1, "M"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lfl/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl/a$b;->M:Lfl/a$b;

    invoke-static {}, Lfl/a$b;->a()[Lfl/a$b;

    move-result-object v0

    sput-object v0, Lfl/a$b;->$VALUES:[Lfl/a$b;

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

.method public static synthetic a()[Lfl/a$b;
    .locals 4

    sget-object v0, Lfl/a$b;->NV:Lfl/a$b;

    sget-object v1, Lfl/a$b;->V:Lfl/a$b;

    sget-object v2, Lfl/a$b;->N:Lfl/a$b;

    sget-object v3, Lfl/a$b;->M:Lfl/a$b;

    filled-new-array {v0, v1, v2, v3}, [Lfl/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfl/a$b;
    .locals 1

    const-class v0, Lfl/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfl/a$b;

    return-object p0
.end method

.method public static values()[Lfl/a$b;
    .locals 1

    sget-object v0, Lfl/a$b;->$VALUES:[Lfl/a$b;

    invoke-virtual {v0}, [Lfl/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfl/a$b;

    return-object v0
.end method
