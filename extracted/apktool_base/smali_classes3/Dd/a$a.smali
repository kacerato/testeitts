.class public final enum LDd/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDd/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDd/a$a;

.field public static final enum DEFAULT:LDd/a$a;

.field public static final enum HD1080:LDd/a$a;

.field public static final enum HD720:LDd/a$a;

.field public static final enum HIGH_RES:LDd/a$a;

.field public static final enum LARGE:LDd/a$a;

.field public static final enum MEDIUM:LDd/a$a;

.field public static final enum SMALL:LDd/a$a;

.field public static final enum UNKNOWN:LDd/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LDd/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LDd/a$a;->UNKNOWN:LDd/a$a;

    new-instance v1, LDd/a$a;

    const-string v2, "SMALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LDd/a$a;->SMALL:LDd/a$a;

    new-instance v2, LDd/a$a;

    const-string v3, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LDd/a$a;->MEDIUM:LDd/a$a;

    new-instance v3, LDd/a$a;

    const-string v4, "LARGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LDd/a$a;->LARGE:LDd/a$a;

    new-instance v4, LDd/a$a;

    const-string v5, "HD720"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LDd/a$a;->HD720:LDd/a$a;

    new-instance v5, LDd/a$a;

    const-string v6, "HD1080"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, LDd/a$a;->HD1080:LDd/a$a;

    new-instance v6, LDd/a$a;

    const-string v7, "HIGH_RES"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, LDd/a$a;->HIGH_RES:LDd/a$a;

    new-instance v7, LDd/a$a;

    const-string v8, "DEFAULT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, LDd/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, LDd/a$a;->DEFAULT:LDd/a$a;

    filled-new-array/range {v0 .. v7}, [LDd/a$a;

    move-result-object v0

    sput-object v0, LDd/a$a;->$VALUES:[LDd/a$a;

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

.method public static valueOf(Ljava/lang/String;)LDd/a$a;
    .locals 1

    const-class v0, LDd/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDd/a$a;

    return-object p0
.end method

.method public static values()[LDd/a$a;
    .locals 1

    sget-object v0, LDd/a$a;->$VALUES:[LDd/a$a;

    invoke-virtual {v0}, [LDd/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDd/a$a;

    return-object v0
.end method
