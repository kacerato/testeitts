.class public final Lw2/z$b$a;
.super Lw2/z$b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/z$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lw2/z$b$b;-><init>(Lw2/z$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lw2/z$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw2/z$b$a;-><init>()V

    return-void
.end method
