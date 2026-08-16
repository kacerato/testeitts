.class public final synthetic LN6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:LN6/p;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;


# direct methods
.method public synthetic constructor <init>(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/o;->b:LN6/p;

    iput p2, p0, LN6/o;->c:I

    iput-object p3, p0, LN6/o;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, LN6/o;->b:LN6/p;

    iget v1, p0, LN6/o;->c:I

    iget-object v2, p0, LN6/o;->d:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v0, v1, v2, p1}, LN6/p;->c(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Landroid/view/View;)V

    return-void
.end method
