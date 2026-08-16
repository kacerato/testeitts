.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->d2()V
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
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$m;)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
