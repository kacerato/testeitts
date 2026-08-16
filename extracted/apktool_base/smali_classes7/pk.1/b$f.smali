.class public Lpk/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
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

    iput-object v0, p0, Lpk/b$f;->a:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$f;->b:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$f;->c:[I

    invoke-static {}, Lok/b;->k()[I

    move-result-object v0

    iput-object v0, p0, Lpk/b$f;->d:[I

    return-void
.end method

.method public synthetic constructor <init>(Lpk/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpk/b$f;-><init>()V

    return-void
.end method
