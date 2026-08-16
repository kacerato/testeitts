.class public final Lvb/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "config",
            "missing"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lvb/b$c;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    .line 4
    iput-object p2, p0, Lvb/b$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 5
    iput-boolean p3, p0, Lvb/b$c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZLvb/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lvb/b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    return-void
.end method

.method public static synthetic a(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, Lvb/b$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method public static synthetic b(Lvb/b$c;)Z
    .locals 0

    iget-boolean p0, p0, Lvb/b$c;->c:Z

    return p0
.end method

.method public static synthetic c(Lvb/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;
    .locals 0

    iget-object p0, p0, Lvb/b$c;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;

    return-object p0
.end method
