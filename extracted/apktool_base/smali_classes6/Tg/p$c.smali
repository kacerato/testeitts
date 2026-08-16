.class public final LTg/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTg/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTg/p;->b()LTg/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a0()LTg/z;
    .locals 1

    sget-object v0, LTg/z;->d:LTg/z;

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h0(LTg/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, LTg/c;->skip(J)V

    return-void
.end method
