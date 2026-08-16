.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->M1(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$p;ZZ)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->x1()Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    return-void
.end method
