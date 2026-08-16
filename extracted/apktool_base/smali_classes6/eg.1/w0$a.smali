.class public final Leg/w0$a;
.super Lyf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyf/b<",
        "Leg/M;",
        "Leg/w0;",
        ">;"
    }
.end annotation

.annotation build Lnf/w;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Leg/M;->Key:Leg/M$a;

    .line 3
    sget-object v1, Leg/w0$a$a;->b:Leg/w0$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Lyf/b;-><init>(Lyf/j$c;LMf/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leg/w0$a;-><init>()V

    return-void
.end method
