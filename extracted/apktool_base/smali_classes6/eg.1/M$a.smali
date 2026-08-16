.class public final Leg/M$a;
.super Lyf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyf/b<",
        "Lyf/g;",
        "Leg/M;",
        ">;"
    }
.end annotation

.annotation build Lnf/w;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    .line 3
    sget-object v1, Leg/M$a$a;->b:Leg/M$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Lyf/b;-><init>(Lyf/j$c;LMf/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Leg/M$a;-><init>()V

    return-void
.end method
