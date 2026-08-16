.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;->BOTH:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->a:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$c;

    return-object p0
.end method

.method public b(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parallel"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$b;->b:Z

    return-object p0
.end method
