.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$d;->b:I

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "color"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$d;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/PrefabLink$d;->b:I

    return-void
.end method
