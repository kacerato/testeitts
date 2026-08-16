.class public final synthetic LV9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

.field public final synthetic b:LT9/a;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;LT9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV9/d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iput-object p2, p0, LV9/d;->b:LT9/a;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, LV9/d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-object v1, p0, LV9/d;->b:LT9/a;

    invoke-static {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor$a;->c(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;LT9/a;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
