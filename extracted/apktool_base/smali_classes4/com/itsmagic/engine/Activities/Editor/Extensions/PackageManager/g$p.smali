.class public interface abstract Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public c(IJJLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond",
            "updateStep"
        }
    .end annotation

    return-void
.end method

.method public d(IJJJZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "etaInMilliSeconds",
            "downloadedBytesPerSecond",
            "downloadedBytes",
            "indeterminate",
            "updateStep"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p9

    invoke-interface/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;->c(IJJLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V

    return-void
.end method

.method public abstract e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p$a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateStep"
        }
    .end annotation
.end method
