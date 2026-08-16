.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->C(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$redirectViewCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "done"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;->b(Ljava/lang/String;Z)V

    return-void
.end method
