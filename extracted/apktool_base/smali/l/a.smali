.class public Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    const/16 v0, 0xbc

    const/16 v1, 0xf9

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->X(III)V

    return-void
.end method
