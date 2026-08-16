.class public Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;->h(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$a;I)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
