.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a;)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, v0}, LN7/c;->l(FLjava/lang/Runnable;)V

    return-void
.end method
