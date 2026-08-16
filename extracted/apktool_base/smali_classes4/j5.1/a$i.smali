.class public Lj5/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/a;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/a;


# direct methods
.method public constructor <init>(Lj5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj5/a$i;->a:Lj5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p0, Lj5/a$i;->a:Lj5/a;

    invoke-static {p1}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj5/a$i;->a:Lj5/a;

    invoke-static {p1}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->q3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$J;

    iget-object p1, p0, Lj5/a$i;->a:Lj5/a;

    invoke-static {p1}, Lj5/a;->J(Lj5/a;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "NO HPOP"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
