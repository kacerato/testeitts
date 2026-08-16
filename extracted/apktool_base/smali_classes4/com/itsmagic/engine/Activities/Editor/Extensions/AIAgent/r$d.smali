.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->D(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageObject"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/k;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/m;)V

    return-void
.end method
