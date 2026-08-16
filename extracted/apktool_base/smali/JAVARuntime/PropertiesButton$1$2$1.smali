.class LJAVARuntime/PropertiesButton$1$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PropertiesButton$1$2;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/PropertiesButton$1$2;


# direct methods
.method public constructor <init>(LJAVARuntime/PropertiesButton$1$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PropertiesButton$1$2$1;->this$1:LJAVARuntime/PropertiesButton$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/PropertiesButton$1$2$1$1;

    invoke-direct {v0, p0}, LJAVARuntime/PropertiesButton$1$2$1$1;-><init>(LJAVARuntime/PropertiesButton$1$2$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
