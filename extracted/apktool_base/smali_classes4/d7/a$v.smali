.class public Ld7/a$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$v;->a:Ld7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    const-class p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->k(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;

    if-eqz p1, :cond_0

    new-instance p3, Ld7/a$v$a;

    invoke-direct {p3, p0, p1, p2}, Ld7/a$v$a;-><init>(Ld7/a$v;Lcom/itsmagic/engine/Activities/Editor/Extensions/Area/AreaEditorComponent;Landroid/content/Context;)V

    const-string p1, "Area settings"

    const/16 p2, 0xc8

    const/16 v0, 0x104

    invoke-static {p1, p2, v0, p3}, LG4/e;->x1(Ljava/lang/String;IILG4/f;)LG4/e;

    :cond_0
    return-void
.end method
