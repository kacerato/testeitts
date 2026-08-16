.class public final LLg/b$a;
.super LTg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(LTg/x;)V
    .locals 0

    invoke-direct {p0, p1}, LTg/h;-><init>(LTg/x;)V

    return-void
.end method


# virtual methods
.method public h0(LTg/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, LTg/h;->h0(LTg/c;J)V

    iget-wide v0, p0, LLg/b$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, LLg/b$a;->c:J

    return-void
.end method
