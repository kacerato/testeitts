.class public LZ6/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ6/b;
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
.method public a(ZLZ6/b$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "checked",
            "dialog"
        }
    .end annotation

    invoke-interface {p2}, LZ6/b$g;->dismiss()V

    return-void
.end method

.method public b(LZ6/b$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, LZ6/b$g;->dismiss()V

    return-void
.end method
