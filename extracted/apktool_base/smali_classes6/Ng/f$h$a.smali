.class public LNg/f$h$a;
.super LNg/f$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/f$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LNg/f$h;-><init>()V

    return-void
.end method


# virtual methods
.method public f(LNg/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LNg/a;->REFUSED_STREAM:LNg/a;

    invoke-virtual {p1, v0}, LNg/h;->f(LNg/a;)V

    return-void
.end method
