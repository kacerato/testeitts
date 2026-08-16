.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Lec/a;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;


# direct methods
.method public constructor <init>(Lec/a;ZZLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blendingMode",
            "doubleSided",
            "drawInFront",
            "refractionType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->a:Lec/a;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->b:Z

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->c:Z

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$h;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    return-void
.end method
