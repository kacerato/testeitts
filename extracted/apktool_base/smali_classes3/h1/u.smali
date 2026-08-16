.class public final Lh1/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh1/r;

.field public static volatile b:Lh1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh1/s;-><init>(Lh1/t;)V

    sput-object v0, Lh1/u;->a:Lh1/r;

    sput-object v0, Lh1/u;->b:Lh1/r;

    return-void
.end method

.method public static a()Lh1/r;
    .locals 1

    sget-object v0, Lh1/u;->b:Lh1/r;

    return-object v0
.end method
