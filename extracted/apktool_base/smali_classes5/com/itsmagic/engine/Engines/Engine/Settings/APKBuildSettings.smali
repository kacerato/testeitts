.class public Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings$a;
    }
.end annotation


# instance fields
.field public orientation:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings;->orientation:Lcom/itsmagic/engine/Engines/Engine/Settings/APKBuildSettings$a;

    return-void
.end method
