.class public final Le1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Le1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le1/z;

    invoke-direct {v0}, Le1/z;-><init>()V

    sput-object v0, Le1/y;->a:Le1/z;

    return-void
.end method

.method public static a()Le1/z;
    .locals 1

    sget-object v0, Le1/y;->a:Le1/z;

    return-object v0
.end method
