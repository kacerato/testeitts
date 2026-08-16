.class public final synthetic Le6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/l;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;


# direct methods
.method public synthetic constructor <init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/g;->b:Le6/l;

    iput-object p2, p0, Le6/g;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le6/g;->b:Le6/l;

    iget-object v1, p0, Le6/g;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-static {v0, v1, p1}, Le6/l;->x1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V

    return-void
.end method
