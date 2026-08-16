.class public final synthetic LWb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/c;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;

    iput-object p2, p0, LWb/c;->c:Ljava/lang/String;

    iput p3, p0, LWb/c;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LWb/c;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;

    iget-object v1, p0, LWb/c;->c:Ljava/lang/String;

    iget v2, p0, LWb/c;->d:F

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;->A0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/CarPaint/CarPaintBinder;Ljava/lang/String;F)V

    return-void
.end method
