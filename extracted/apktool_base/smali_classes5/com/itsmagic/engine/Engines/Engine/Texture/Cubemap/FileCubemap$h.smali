.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "asset",
            "path"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;->a:Z

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/FileCubemap$h;->b:Ljava/lang/String;

    return-void
.end method
