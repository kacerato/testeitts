.class public final Lk1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk1/e;

.field public static volatile b:Lk1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk1/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk1/g;-><init>(Lk1/f;)V

    sput-object v0, Lk1/h;->a:Lk1/e;

    sput-object v0, Lk1/h;->b:Lk1/e;

    return-void
.end method

.method public static a()Lk1/e;
    .locals 1

    sget-object v0, Lk1/h;->b:Lk1/e;

    return-object v0
.end method
