.class public LH5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH5/b;->z1(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LH5/b$g;)LH5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanel"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-void
.end method
