.class public final LGf/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGf/a;->e()Lkotlin/time/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/time/q;
    .locals 3

    sget-object v0, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lkotlin/time/q$a;->a(J)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method
