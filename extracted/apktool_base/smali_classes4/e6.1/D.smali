.class public final synthetic Le6/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# instance fields
.field public final synthetic a:Le6/E;

.field public final synthetic b:LJAVARuntime/Component;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lga/H;


# direct methods
.method public synthetic constructor <init>(Le6/E;LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/D;->a:Le6/E;

    iput-object p2, p0, Le6/D;->b:LJAVARuntime/Component;

    iput-object p3, p0, Le6/D;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput p4, p0, Le6/D;->d:I

    iput p5, p0, Le6/D;->e:I

    iput-object p6, p0, Le6/D;->f:Lga/H;

    return-void
.end method


# virtual methods
.method public final onSelected(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Le6/D;->a:Le6/E;

    iget-object v1, p0, Le6/D;->b:LJAVARuntime/Component;

    iget-object v2, p0, Le6/D;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget v3, p0, Le6/D;->d:I

    iget v4, p0, Le6/D;->e:I

    iget-object v5, p0, Le6/D;->f:Lga/H;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Le6/E;->b(Le6/E;LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IILga/H;Landroid/view/View;)V

    return-void
.end method
