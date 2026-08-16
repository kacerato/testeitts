.class public Lu5/b$j;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b;->D1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lu5/b;


# direct methods
.method public constructor <init>(Lu5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu5/b$j;->b:Lu5/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lu5/b$j;->b:Lu5/b;

    invoke-static {p1}, Lu5/b;->r1(Lu5/b;)V

    iget-object p1, p0, Lu5/b$j;->b:Lu5/b;

    invoke-static {p1}, Lu5/b;->s1(Lu5/b;)Lu5/b$s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lu5/b$s;->a(Ljava/util/List;)V

    iget-object p1, p0, Lu5/b$j;->b:Lu5/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
