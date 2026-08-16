.class public LZ6/l$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/l$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/l$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/l$g;->dismiss()V

    return-void
.end method

.method public b(LZ6/l$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/l$g;->dismiss()V

    return-void
.end method
