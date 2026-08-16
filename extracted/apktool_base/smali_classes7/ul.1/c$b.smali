.class public Lul/c$b;
.super Lul/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lul/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, LZk/g;->l:LZk/g;

    invoke-direct {p0, v0}, Lul/c;-><init>(LZk/g;)V

    return-void
.end method
