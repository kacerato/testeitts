.class public final synthetic LN6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LN6/f;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;


# direct methods
.method public synthetic constructor <init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/e;->b:LN6/f;

    iput-object p2, p0, LN6/e;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LN6/e;->b:LN6/f;

    iget-object v1, p0, LN6/e;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-static {v0, v1, p1}, LN6/f;->t1(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V

    return-void
.end method
