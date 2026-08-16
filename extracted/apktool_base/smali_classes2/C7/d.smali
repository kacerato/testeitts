.class public LC7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, LC7/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, LC7/d;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, LC7/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, LC7/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, LC7/d;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, LC7/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "redText",
            "text"
        }
    .end annotation

    sput-object p0, LC7/d;->a:Ljava/lang/String;

    sput-object p1, LC7/d;->b:Ljava/lang/String;

    return-void
.end method
