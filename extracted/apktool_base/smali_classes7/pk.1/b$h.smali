.class public Lpk/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$h;->a:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$h;->b:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$h;->c:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$h;->d:[I

    return-void
.end method

.method public synthetic constructor <init>(Lpk/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpk/b$h;-><init>()V

    return-void
.end method
