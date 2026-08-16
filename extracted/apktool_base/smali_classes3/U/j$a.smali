.class public final enum LU/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LU/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LU/j$a;

.field public static final enum CLEARED:LU/j$a;

.field public static final enum COMPLETE:LU/j$a;

.field public static final enum FAILED:LU/j$a;

.field public static final enum PENDING:LU/j$a;

.field public static final enum RUNNING:LU/j$a;

.field public static final enum WAITING_FOR_SIZE:LU/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LU/j$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU/j$a;->PENDING:LU/j$a;

    new-instance v1, LU/j$a;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, LU/j$a;->RUNNING:LU/j$a;

    new-instance v2, LU/j$a;

    const-string v3, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, LU/j$a;->WAITING_FOR_SIZE:LU/j$a;

    new-instance v3, LU/j$a;

    const-string v4, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, LU/j$a;->COMPLETE:LU/j$a;

    new-instance v4, LU/j$a;

    const-string v5, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, LU/j$a;->FAILED:LU/j$a;

    new-instance v5, LU/j$a;

    const-string v6, "CLEARED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, LU/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, LU/j$a;->CLEARED:LU/j$a;

    filled-new-array/range {v0 .. v5}, [LU/j$a;

    move-result-object v0

    sput-object v0, LU/j$a;->$VALUES:[LU/j$a;

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

.method public static valueOf(Ljava/lang/String;)LU/j$a;
    .locals 1

    const-class v0, LU/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU/j$a;

    return-object p0
.end method

.method public static values()[LU/j$a;
    .locals 1

    sget-object v0, LU/j$a;->$VALUES:[LU/j$a;

    invoke-virtual {v0}, [LU/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU/j$a;

    return-object v0
.end method
