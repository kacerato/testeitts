.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z

    return-void
.end method
