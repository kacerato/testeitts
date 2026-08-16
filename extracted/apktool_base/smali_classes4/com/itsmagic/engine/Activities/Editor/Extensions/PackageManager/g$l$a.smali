.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$l$a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->z1(LJAVARuntime/Runnable;)V

    return-void
.end method
