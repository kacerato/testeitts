.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/CloudSync/Settings$a;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/c;->a()V

    return-void
.end method
