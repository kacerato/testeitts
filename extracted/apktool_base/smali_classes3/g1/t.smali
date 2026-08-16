.class public final Lg1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg1/q;

.field public static volatile b:Lg1/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg1/s;-><init>(Lg1/r;)V

    sput-object v0, Lg1/t;->a:Lg1/q;

    sput-object v0, Lg1/t;->b:Lg1/q;

    return-void
.end method

.method public static a()Lg1/q;
    .locals 1

    sget-object v0, Lg1/t;->b:Lg1/q;

    return-object v0
.end method
