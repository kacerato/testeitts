.class public Lpk/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lok/d;->j()[I

    move-result-object v0

    iput-object v0, p0, Lpk/c$d;->a:[I

    invoke-static {}, Lok/d;->j()[I

    move-result-object v0

    iput-object v0, p0, Lpk/c$d;->b:[I

    return-void
.end method

.method public synthetic constructor <init>(Lpk/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpk/c$d;-><init>()V

    return-void
.end method
