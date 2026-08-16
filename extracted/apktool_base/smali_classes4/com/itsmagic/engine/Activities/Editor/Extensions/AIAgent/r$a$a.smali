.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->b:[Ljava/lang/String;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$a;->g:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
