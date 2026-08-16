.class public LB5/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/d;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LC5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/d;


# direct methods
.method public constructor <init>(LB5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB5/d$i;->a:LB5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "adapterPosition"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
