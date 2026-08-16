.class public Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/a;


# static fields
.field public static a:Lh3/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lh3/b;
    .locals 1

    sget-object v0, Lh3/b;->a:Lh3/b;

    if-nez v0, :cond_0

    new-instance v0, Lh3/b;

    invoke-direct {v0}, Lh3/b;-><init>()V

    sput-object v0, Lh3/b;->a:Lh3/b;

    :cond_0
    sget-object v0, Lh3/b;->a:Lh3/b;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
