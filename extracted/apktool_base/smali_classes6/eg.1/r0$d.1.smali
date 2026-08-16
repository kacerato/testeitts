.class public final Leg/r0$d;
.super Lmg/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmg/d0<",
        "Leg/r0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public c:J
    .annotation build LLf/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lmg/d0;-><init>()V

    iput-wide p1, p0, Leg/r0$d;->c:J

    return-void
.end method
