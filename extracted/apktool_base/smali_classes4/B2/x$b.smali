.class public abstract enum LB2/x$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LB2/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LB2/x$b;",
        ">;",
        "LB2/x$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LB2/x$b;

.field public static final enum INSTANCE:LB2/x$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LB2/x$b$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LB2/x$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB2/x$b;->INSTANCE:LB2/x$b;

    invoke-static {}, LB2/x$b;->c()[LB2/x$b;

    move-result-object v0

    sput-object v0, LB2/x$b;->$VALUES:[LB2/x$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILB2/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LB2/x$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[LB2/x$b;
    .locals 1

    sget-object v0, LB2/x$b;->INSTANCE:LB2/x$b;

    filled-new-array {v0}, [LB2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LB2/x$b;
    .locals 1

    const-class v0, LB2/x$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/x$b;

    return-object p0
.end method

.method public static values()[LB2/x$b;
    .locals 1

    sget-object v0, LB2/x$b;->$VALUES:[LB2/x$b;

    invoke-virtual {v0}, [LB2/x$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/x$b;

    return-object v0
.end method
