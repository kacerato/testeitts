.class public Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->z(Lo4/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$d;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$d;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->u1(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    return-void
.end method
