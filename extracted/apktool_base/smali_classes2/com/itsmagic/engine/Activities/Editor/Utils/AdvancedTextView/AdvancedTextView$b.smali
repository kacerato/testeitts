.class public Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->h(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkPair"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$b;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
