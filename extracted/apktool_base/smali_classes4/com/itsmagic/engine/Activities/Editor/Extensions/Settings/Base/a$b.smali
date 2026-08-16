.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->u(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)LN3/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->u(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)LN3/b;

    move-result-object v0

    invoke-interface {v0}, LN3/b;->a()V

    :cond_0
    return-void
.end method
